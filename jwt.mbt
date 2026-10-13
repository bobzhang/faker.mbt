///|
fn base64_url(value : Json) -> String {
  @base64.encode(@utf8.encode(value.stringify()), padding=false)
  .replace_all(old="+", new="-")
  .replace_all(old="/", new="_")
}

///|
/// Generate a mock JWT. Its random signature is not a cryptographic signature.
pub fn Faker::internet_jwt(
  self : Faker,
  header? : Json,
  payload? : Json,
  ref_date? : Int64,
) -> String raise {
  let issued = self.date_recent(ref_date?)
  let header = header.unwrap_or_else(() => {
    Json::object({
      "alg": Json::string(self.internet_jwt_algorithm()),
      "typ": Json::string("JWT"),
    })
  })
  let payload = payload.unwrap_or_else(() => {
    let expires = self.date_soon(ref_date=issued)
    let not_before = self.date_anytime(ref_date?)
    let issuer = self.company_name()
    let subject = self.uuid()
    let audience = self.uuid()
    let id = self.uuid()
    Json::object({
      "iat": Json::number((issued.to_double() / 1000 + 0.5).floor()),
      "exp": Json::number((expires.to_double() / 1000 + 0.5).floor()),
      "nbf": Json::number((not_before.to_double() / 1000 + 0.5).floor()),
      "iss": Json::string(issuer),
      "sub": Json::string(subject),
      "aud": Json::string(audience),
      "jti": Json::string(id),
    })
  })
  base64_url(header) +
  "." +
  base64_url(payload) +
  "." +
  self.alphanumeric(length=64)
}
