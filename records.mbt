///|
pub struct Airline {
  name : String
  iata_code : String
} derive(ToJson)

///|
pub extend Airline with ToJson::{to_json}

///|
pub struct Airplane {
  name : String
  iata_type_code : String
} derive(ToJson)

///|
pub extend Airplane with ToJson::{to_json}

///|
pub struct Airport {
  name : String
  iata_code : String
} derive(ToJson)

///|
pub extend Airport with ToJson::{to_json}

///|
pub struct Currency {
  name : String
  code : String
  symbol : String
  numeric_code : String
} derive(ToJson)

///|
pub extend Currency with ToJson::{to_json}

///|
pub struct Language {
  name : String
  alpha2 : String
  alpha3 : String
} derive(ToJson)

///|
pub extend Language with ToJson::{to_json}

///|
pub struct ChemicalElement {
  symbol : String
  name : String
  atomic_number : Int32
} derive(ToJson)

///|
pub extend ChemicalElement with ToJson::{to_json}

///|
pub struct ScienceUnit {
  name : String
  symbol : String
} derive(ToJson)

///|
pub extend ScienceUnit with ToJson::{to_json}
