// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `book.author` from the configured locales.
pub fn Faker::book_author(self : Faker) -> String raise {
  self.sample("book.author")
}

///|
/// Sample `book.format` from the configured locales.
pub fn Faker::book_format(self : Faker) -> String raise {
  self.sample("book.format")
}

///|
/// Sample `book.genre` from the configured locales.
pub fn Faker::book_genre(self : Faker) -> String raise {
  self.sample("book.genre")
}

///|
/// Sample `book.publisher` from the configured locales.
pub fn Faker::book_publisher(self : Faker) -> String raise {
  self.sample("book.publisher")
}

///|
/// Sample `book.series` from the configured locales.
pub fn Faker::book_series(self : Faker) -> String raise {
  self.sample("book.series")
}

///|
/// Sample `book.title` from the configured locales.
pub fn Faker::book_title(self : Faker) -> String raise {
  self.sample("book.title")
}
