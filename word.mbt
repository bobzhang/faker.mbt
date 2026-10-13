///|
pub(all) enum LengthStrategy {
  Fail
  Closest
  Shortest
  Longest
  AnyLength
}

///|
fn Faker::word_from(
  self : Faker,
  path : String,
  min_length : Int32?,
  max_length : Int32?,
  strategy : LengthStrategy,
) -> String raise {
  let words = self.strings(path)
  let low = min_length.unwrap_or(0)
  let high = max_length.unwrap_or(2147483647)
  guard low <= high else { raise InvalidArgument("invalid word length range") }
  if min_length is Some(_) || max_length is Some(_) {
    let matching = words.filter(w => w.length() >= low && w.length() <= high)
    if !matching.is_empty() {
      return self.array_element(matching)
    }
  } else if !(strategy is (Shortest | Longest)) {
    return self.array_element(words)
  }
  let mut best = if strategy is Longest { -1 } else { 2147483647 }
  fn score(word : String) -> Int32 {
    match strategy {
      Closest =>
        if word.length() < low {
          low - word.length()
        } else {
          word.length() - high
        }
      _ => word.length()
    }
  }
  match strategy {
    Fail => raise InvalidArgument("no words match the requested length")
    AnyLength => self.array_element(words)
    _ => {
      for word in words {
        best = if strategy is Longest {
          best.max(score(word))
        } else {
          best.min(score(word))
        }
      }
      self.array_element(words.filter(w => score(w) == best))
    }
  }
}

///|
pub fn Faker::word_sample(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  for
    path in self.shuffle([
      "word.adjective", "word.adverb", "word.conjunction", "word.interjection", "word.noun",
      "word.preposition", "word.verb",
    ]) {
    try self.word_from(path, min_length, max_length, strategy) catch {
      _ => ()
    } noraise {
      result => return result
    }
  }
  raise MissingDefinition("no matching words in locale")
}

///|
pub fn Faker::word_words(self : Faker, count? : Int32) -> String raise {
  multiple(
    () => self.word_sample(),
    count=count.unwrap_or_else(() => self.int(min=1, max=3)),
  ).join(" ")
}

///|
pub fn Faker::word_adjective(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.adjective", min_length, max_length, strategy)
}

///|
pub fn Faker::word_adverb(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.adverb", min_length, max_length, strategy)
}

///|
pub fn Faker::word_conjunction(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.conjunction", min_length, max_length, strategy)
}

///|
pub fn Faker::word_interjection(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.interjection", min_length, max_length, strategy)
}

///|
pub fn Faker::word_noun(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.noun", min_length, max_length, strategy)
}

///|
pub fn Faker::word_preposition(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.preposition", min_length, max_length, strategy)
}

///|
pub fn Faker::word_verb(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("word.verb", min_length, max_length, strategy)
}
