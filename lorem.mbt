///|
pub fn Faker::lorem_word(
  self : Faker,
  min_length? : Int32,
  max_length? : Int32,
  strategy~ : LengthStrategy = Fail,
) -> String raise {
  self.word_from("lorem.word", min_length, max_length, strategy)
}

///|
pub fn Faker::lorem_words(self : Faker, count~ : Int32 = 3) -> String raise {
  multiple(_ => self.lorem_word(), count~).join(" ")
}

///|
pub fn Faker::lorem_sentence(self : Faker, count? : Int32) -> String raise {
  capitalize(
    self.lorem_words(count=count.unwrap_or_else(() => self.int(min=3, max=10))),
  ) +
  "."
}

///|
pub fn Faker::lorem_sentences(
  self : Faker,
  count? : Int32,
  separator~ : String = " ",
) -> String raise {
  multiple(
    _ => self.lorem_sentence(),
    count=count.unwrap_or_else(() => self.int(min=2, max=6)),
  ).join(separator)
}

///|
pub fn Faker::lorem_paragraph(self : Faker, count~ : Int32 = 3) -> String raise {
  self.lorem_sentences(count~)
}

///|
pub fn Faker::lorem_paragraphs(
  self : Faker,
  count~ : Int32 = 3,
  separator~ : String = "\n",
) -> String raise {
  multiple(_ => self.lorem_paragraph(), count~).join(separator)
}

///|
pub fn Faker::lorem_lines(self : Faker, count? : Int32) -> String raise {
  self.lorem_sentences(
    count=count.unwrap_or_else(() => self.int(min=1, max=5)),
    separator="\n",
  )
}

///|
pub fn Faker::lorem_slug(self : Faker, count~ : Int32 = 3) -> String raise {
  slugify(self.lorem_words(count~))
}

///|
pub fn Faker::lorem_text(self : Faker) -> String raise {
  match self.int(max=4) {
    0 => self.lorem_sentence()
    1 => self.lorem_sentences()
    2 => self.lorem_paragraph()
    3 => self.lorem_paragraphs()
    _ => self.lorem_lines()
  }
}
