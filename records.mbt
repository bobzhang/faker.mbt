///|
#derive(ToJson)
pub struct Airline {
  name : String
  iata_code : String
}

///|
pub extend Airline with ToJson::{to_json}

///|
#derive(ToJson)
pub struct Airplane {
  name : String
  iata_type_code : String
}

///|
pub extend Airplane with ToJson::{to_json}

///|
#derive(ToJson)
pub struct Airport {
  name : String
  iata_code : String
}

///|
pub extend Airport with ToJson::{to_json}

///|
#derive(ToJson)
pub struct Currency {
  name : String
  code : String
  symbol : String
  numeric_code : String
}

///|
pub extend Currency with ToJson::{to_json}

///|
#derive(ToJson)
pub struct Language {
  name : String
  alpha2 : String
  alpha3 : String
}

///|
pub extend Language with ToJson::{to_json}

///|
#derive(ToJson)
pub struct ChemicalElement {
  symbol : String
  name : String
  atomic_number : Int32
}

///|
pub extend ChemicalElement with ToJson::{to_json}

///|
#derive(ToJson)
pub struct ScienceUnit {
  name : String
  symbol : String
}

///|
pub extend ScienceUnit with ToJson::{to_json}
