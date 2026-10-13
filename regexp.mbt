///|
priv struct PatternToken {
  choices : String
  quantifier : String
  character_class : Bool
  mut output : String?
}

///|
fn tokenize_pattern(pattern : String) -> Array[PatternToken] raise {
  let chars = pattern.to_array()
  let tokens : Array[PatternToken] = []
  let mut i = 0
  while i < chars.length() {
    let character_class = chars[i] == '['
    let start = i
    let choices = if character_class {
      i += 1
      let begin = i
      while i < chars.length() && chars[i] != ']' {
        i += 1
      }
      guard i < chars.length() else {
        raise InvalidArgument("unclosed character class")
      }
      let value = String::from_array(chars[begin:i])
      i += 1
      value
    } else {
      i += 1
      chars[start].to_string()
    }
    let quantifier = if i < chars.length() && chars[i] == '{' {
      let begin = i + 1
      i += 1
      while i < chars.length() && chars[i] != '}' {
        i += 1
      }
      guard i < chars.length() else {
        raise InvalidArgument("unclosed quantifier")
      }
      let value = String::from_array(chars[begin:i])
      i += 1
      value
    } else if i < chars.length() && chars[i] is ('?' | '*' | '+') {
      i += 1
      chars[i - 1].to_string()
    } else {
      ""
    }
    tokens.push({ choices, quantifier, character_class, output: None, })
  }
  tokens
}

///|
fn Faker::repetitions(self : Faker, quantifier : String) -> Int32 raise {
  match quantifier {
    "" => 1
    "?" => if self.boolean() { 0 } else { 1 }
    "*" | "+" => {
      let mut limit = 1
      while self.boolean() && limit < 524288 {
        limit *= 2
      }
      self.int(min=if quantifier == "*" { 0 } else { 1 }, max=limit)
    }
    _ => {
      let count = if quantifier.split_once(",") is Some((low, high)) {
        self.int(min=decimal(low.to_owned()), max=decimal(high.to_owned()))
      } else {
        decimal(quantifier)
      }
      guard count <= 1000000 else {
        raise InvalidArgument("quantifier exceeds one million characters")
      }
      count
    }
  }
}

///|
fn class_characters(pattern : String, ignore_case : Bool) -> String raise {
  let chars = pattern.to_array()
  let negate = chars.get(0) == Some('^')
  let result : Array[Char] = []
  let mut i = if negate { 1 } else { 0 }
  if chars.get(i) == Some('-') {
    result.push('-')
    i += 1
  }
  while i < chars.length() {
    let start = chars[i]
    let end = if i + 2 < chars.length() && chars[i + 1] == '-' {
      i += 3
      chars[i - 1]
    } else {
      i += 1
      start
    }
    guard start <= end else {
      raise InvalidArgument("character range is reversed")
    }
    for code in start.to_int()..<=end.to_int() {
      let c = code.unsafe_to_char()
      if ignore_case && c is ('a'..<='z' | 'A'..<='Z') {
        result.append(c.to_string().to_upper().to_array())
        result.append(c.to_string().to_lower().to_array())
      } else {
        result.push(c)
      }
    }
  }
  if negate {
    for c in "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" {
      if result.search(c) is Some(index) {
        ignore(result.remove(index))
      } else {
        result.push(c)
      }
    }
  }
  String::from_array(result)
}

///|
/// Generate from Faker's regex-like subset: character ranges, negation, dot,
/// and ?, *, +, {n}, {min,max} quantifiers. Grouping and backreferences are not
/// supported. A string pattern is used, so anchors are treated literally.
pub fn Faker::from_reg_exp(
  self : Faker,
  pattern : String,
  ignore_case~ : Bool = false,
) -> String raise {
  let tokens = tokenize_pattern(pattern)
  // Preserve Faker's three passes and their random-consumption order.
  for token in tokens {
    if !token.character_class && token.quantifier == "" {
      token.output = Some(
        if token.choices == "." {
          self.alphanumeric()
        } else if ignore_case &&
          token.choices.all(c => c is ('a'..<='z' | 'A'..<='Z')) {
          self.from_characters(
            token.choices.to_lower() + token.choices.to_upper(),
          )
        } else {
          token.choices
        },
      )
    }
  }
  for token in tokens {
    if !token.character_class &&
      token.output is None &&
      token.choices.all(c => c is ('a'..<='z' | 'A'..<='Z' | '0'..<='9' | '.')) {
      let count = self.repetitions(token.quantifier)
      token.output = Some(
        if token.choices == "." {
          self.alphanumeric(length=count)
        } else if ignore_case {
          self.from_characters(
            token.choices.to_lower() + token.choices.to_upper(),
            length=count,
          )
        } else {
          token.choices.repeat(count)
        },
      )
    }
  }
  for token in tokens {
    if token.character_class {
      let chars = class_characters(token.choices, ignore_case)
      token.output = Some(
        self.from_characters(chars, length=self.repetitions(token.quantifier)),
      )
    }
  }
  for token in tokens {
    if token.output is None {
      token.output = Some(
        token.choices.repeat(self.repetitions(token.quantifier)),
      )
    }
  }
  tokens.map(t => t.output.unwrap()).join("")
}
