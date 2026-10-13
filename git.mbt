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

///|
pub fn Faker::git_commit_date(self : Faker, ref_date? : Int64) -> String raise {
  let timestamp = self.date_recent(ref_date?)
  let (year, month, day, hour, minute, second, _) = date_parts(timestamp)
  let weekday = ((floor_div(timestamp, 86400000L) + 4L) % 7L + 7L) % 7L
  let weekday = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"][weekday.to_int()]
  let month = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov",
      "Dec",
    ][month - 1]
  let zone = self.int(min=-11, max=12)
  let sign = if zone >= 0 { "+" } else { "-" }
  "\{weekday} \{month} \{day} \{hour.to_string().pad_start(2, '0')}:\{minute.to_string().pad_start(2, '0')}:\{second.to_string().pad_start(2, '0')} \{year} \{sign}\{zone.abs().to_string().pad_start(2, '0')}00"
}

///|
pub fn Faker::git_commit_entry(
  self : Faker,
  merge? : Bool,
  eol~ : String = "CRLF",
  ref_date? : Int64,
) -> String raise {
  let eol = match eol {
    "LF" => "\n"
    "CRLF" => "\r\n"
    _ => raise InvalidArgument("eol must be LF or CRLF")
  }
  let merge = merge.unwrap_or_else(() => self.boolean(probability=0.2))
  let lines = ["commit " + self.git_commit_sha()]
  if merge {
    lines.push(
      "Merge: " +
      self.git_commit_sha(length=7) +
      " " +
      self.git_commit_sha(length=7),
    )
  }
  let first = self.person_first_name()
  let last = self.person_last_name()
  let full = self.person_full_name(first_name=first, last_name=last)
  let username = self.internet_username(first_name=first, last_name=last)
  let user = self.array_element([full, username])
  let email = self.internet_email(first_name=first, last_name=last)
  let user = String::from_array(
      user.to_array().filter(c => c != '<' && c != '>' && c != '\n'),
    )
    .trim(chars=".,:;\"\\'")
    .to_owned()
  lines.append([
    "Author: \{user} <\{email}>",
    "Date: " + self.git_commit_date(ref_date?),
    "",
    "    " + self.git_commit_message(),
    "",
  ])
  lines.join(eol)
}
