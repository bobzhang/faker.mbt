///|
pub fn Faker::git_branch(self : Faker) -> String raise {
  self.hacker_noun().replace_all(old=" ", new="-") +
  "-" +
  self.hacker_verb().replace_all(old=" ", new="-")
}

///|
pub fn Faker::git_commit_message(self : Faker) -> String raise {
  "\{self.hacker_verb()} \{self.hacker_adjective()} \{self.hacker_noun()}"
}

///|
pub fn Faker::git_commit_sha(
  self : Faker,
  length~ : Int32 = 40,
) -> String raise {
  self.hexadecimal(length~, casing=Lower, prefix="")
}
