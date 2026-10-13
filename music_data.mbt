// Direct samplers ported from Faker. See LICENSE.

///|
/// Sample `music.album` from the configured locales.
pub fn Faker::music_album(self : Faker) -> String raise {
  self.sample("music.album")
}

///|
/// Sample `music.artist` from the configured locales.
pub fn Faker::music_artist(self : Faker) -> String raise {
  self.sample("music.artist")
}

///|
/// Sample `music.genre` from the configured locales.
pub fn Faker::music_genre(self : Faker) -> String raise {
  self.sample("music.genre")
}

///|
/// Sample `music.song_name` from the configured locales.
pub fn Faker::music_song_name(self : Faker) -> String raise {
  self.sample("music.song_name")
}
