///|
fn Faker::dispatch_template(self : Faker, key : String) -> String? raise {
  match key {
    "animal.bear" => Some(self.animal_bear())
    "animal.bird" => Some(self.animal_bird())
    "animal.cat" => Some(self.animal_cat())
    "animal.cetacean" => Some(self.animal_cetacean())
    "animal.cow" => Some(self.animal_cow())
    "animal.crocodilia" => Some(self.animal_crocodilia())
    "animal.dog" => Some(self.animal_dog())
    "animal.fish" => Some(self.animal_fish())
    "animal.horse" => Some(self.animal_horse())
    "animal.insect" => Some(self.animal_insect())
    "animal.lion" => Some(self.animal_lion())
    "animal.petName" => Some(self.animal_pet_name())
    "animal.rabbit" => Some(self.animal_rabbit())
    "animal.rodent" => Some(self.animal_rodent())
    "animal.snake" => Some(self.animal_snake())
    "animal.type" => Some(self.animal_type())
    "book.author" => Some(self.book_author())
    "book.format" => Some(self.book_format())
    "book.genre" => Some(self.book_genre())
    "book.publisher" => Some(self.book_publisher())
    "book.series" => Some(self.book_series())
    "book.title" => Some(self.book_title())
    "color.human" => Some(self.color_human())
    "color.space" => Some(self.color_space())
    "commerce.department" => Some(self.commerce_department())
    "commerce.productAdjective" => Some(self.commerce_product_adjective())
    "commerce.productMaterial" => Some(self.commerce_product_material())
    "commerce.product" => Some(self.commerce_product())
    "company.buzzAdjective" => Some(self.company_buzz_adjective())
    "company.buzzNoun" => Some(self.company_buzz_noun())
    "company.buzzVerb" => Some(self.company_buzz_verb())
    "company.catchPhraseAdjective" =>
      Some(self.company_catch_phrase_adjective())
    "company.catchPhraseDescriptor" =>
      Some(self.company_catch_phrase_descriptor())
    "company.catchPhraseNoun" => Some(self.company_catch_phrase_noun())
    "database.collation" => Some(self.database_collation())
    "database.column" => Some(self.database_column())
    "database.engine" => Some(self.database_engine())
    "database.type" => Some(self.database_type())
    "date.timeZone" => Some(self.date_time_zone())
    "finance.transactionType" => Some(self.finance_transaction_type())
    "food.adjective" => Some(self.food_adjective())
    "food.ethnicCategory" => Some(self.food_ethnic_category())
    "food.fruit" => Some(self.food_fruit())
    "food.ingredient" => Some(self.food_ingredient())
    "food.meat" => Some(self.food_meat())
    "food.spice" => Some(self.food_spice())
    "food.vegetable" => Some(self.food_vegetable())
    "hacker.abbreviation" => Some(self.hacker_abbreviation())
    "hacker.adjective" => Some(self.hacker_adjective())
    "hacker.ingverb" => Some(self.hacker_ingverb())
    "hacker.noun" => Some(self.hacker_noun())
    "hacker.verb" => Some(self.hacker_verb())
    "internet.domainSuffix" => Some(self.internet_domain_suffix())
    "internet.jwtAlgorithm" => Some(self.internet_jwt_algorithm())
    "location.continent" => Some(self.location_continent())
    "location.country" => Some(self.location_country())
    "location.county" => Some(self.location_county())
    "location.timeZone" => Some(self.location_time_zone())
    "medical.allergen" => Some(self.medical_allergen())
    "medical.bloodType" => Some(self.medical_blood_type())
    "medical.condition" => Some(self.medical_condition())
    "medical.department" => Some(self.medical_department())
    "medical.drugName" => Some(self.medical_drug_name())
    "medical.procedure" => Some(self.medical_procedure())
    "medical.specialty" => Some(self.medical_specialty())
    "medical.symptom" => Some(self.medical_symptom())
    "music.album" => Some(self.music_album())
    "music.artist" => Some(self.music_artist())
    "music.genre" => Some(self.music_genre())
    "music.songName" => Some(self.music_song_name())
    "person.gender" => Some(self.person_gender())
    "person.jobArea" => Some(self.person_job_area())
    "person.jobDescriptor" => Some(self.person_job_descriptor())
    "person.jobType" => Some(self.person_job_type())
    "person.sex" => Some(self.person_sex())
    "person.suffix" => Some(self.person_suffix())
    "person.zodiacSign" => Some(self.person_zodiac_sign())
    "vehicle.bicycle" => Some(self.vehicle_bicycle())
    "vehicle.fuel" => Some(self.vehicle_fuel())
    "vehicle.manufacturer" => Some(self.vehicle_manufacturer())
    "vehicle.model" => Some(self.vehicle_model())
    "vehicle.type" => Some(self.vehicle_type())
    "person.bio" => Some(self.person_bio())
    "person.jobTitle" => Some(self.person_job_title())
    "company.name" => Some(self.company_name())
    "commerce.productName" => Some(self.commerce_product_name())
    "commerce.productDescription" => Some(self.commerce_product_description())
    "food.description" => Some(self.food_description())
    "hacker.phrase" => Some(self.hacker_phrase())
    "location.city" => Some(self.location_city())
    "location.street" => Some(self.location_street())
    "location.postalAddress" => Some(self.location_postal_address())
    "person.firstName" => Some(self.person_first_name())
    "person.lastName" => Some(self.person_last_name())
    "person.middleName" => Some(self.person_middle_name())
    "person.prefix" => Some(self.person_prefix())
    "person.fullName" => Some(self.person_full_name())
    "company.catchPhrase" => Some(self.company_catch_phrase())
    "company.buzzPhrase" => Some(self.company_buzz_phrase())
    "location.buildingNumber" => Some(self.location_building_number())
    "location.secondaryAddress" => Some(self.location_secondary_address())
    "location.streetAddress" => Some(self.location_street_address())
    "location.zipCode" => Some(self.location_zip_code())
    "location.state" => Some(self.location_state())
    "food.dish" => Some(self.food_dish())
    "science.chemical_element.name" =>
      Some(self.science_chemical_element().name)
    "word.adjective" => Some(self.word_adjective())
    "word.adverb" => Some(self.word_adverb())
    "word.conjunction" => Some(self.word_conjunction())
    "word.interjection" => Some(self.word_interjection())
    "word.noun" => Some(self.word_noun())
    "word.preposition" => Some(self.word_preposition())
    "word.verb" => Some(self.word_verb())
    _ => None
  }
}

///|
fn template_has_method(key : String) -> Bool {
  match key {
    "animal.bear"
    | "animal.bird"
    | "animal.cat"
    | "animal.cetacean"
    | "animal.cow"
    | "animal.crocodilia"
    | "animal.dog"
    | "animal.fish"
    | "animal.horse"
    | "animal.insect"
    | "animal.lion"
    | "animal.petName"
    | "animal.rabbit"
    | "animal.rodent"
    | "animal.snake"
    | "animal.type"
    | "book.author"
    | "book.format"
    | "book.genre"
    | "book.publisher"
    | "book.series"
    | "book.title"
    | "color.human"
    | "color.space"
    | "commerce.department"
    | "commerce.productAdjective"
    | "commerce.productMaterial"
    | "commerce.product"
    | "company.buzzAdjective"
    | "company.buzzNoun"
    | "company.buzzVerb"
    | "company.catchPhraseAdjective"
    | "company.catchPhraseDescriptor"
    | "company.catchPhraseNoun"
    | "database.collation"
    | "database.column"
    | "database.engine"
    | "database.type"
    | "date.timeZone"
    | "finance.transactionType"
    | "food.adjective"
    | "food.ethnicCategory"
    | "food.fruit"
    | "food.ingredient"
    | "food.meat"
    | "food.spice"
    | "food.vegetable"
    | "hacker.abbreviation"
    | "hacker.adjective"
    | "hacker.ingverb"
    | "hacker.noun"
    | "hacker.verb"
    | "internet.domainSuffix"
    | "internet.jwtAlgorithm"
    | "location.continent"
    | "location.country"
    | "location.county"
    | "location.timeZone"
    | "medical.allergen"
    | "medical.bloodType"
    | "medical.condition"
    | "medical.department"
    | "medical.drugName"
    | "medical.procedure"
    | "medical.specialty"
    | "medical.symptom"
    | "music.album"
    | "music.artist"
    | "music.genre"
    | "music.songName"
    | "person.gender"
    | "person.jobArea"
    | "person.jobDescriptor"
    | "person.jobType"
    | "person.sex"
    | "person.suffix"
    | "person.zodiacSign"
    | "vehicle.bicycle"
    | "vehicle.fuel"
    | "vehicle.manufacturer"
    | "vehicle.model"
    | "vehicle.type"
    | "person.bio"
    | "person.jobTitle"
    | "company.name"
    | "commerce.productName"
    | "commerce.productDescription"
    | "food.description"
    | "hacker.phrase"
    | "location.city"
    | "location.street"
    | "location.postalAddress"
    | "person.firstName"
    | "person.lastName"
    | "person.middleName"
    | "person.prefix"
    | "person.fullName"
    | "company.catchPhrase"
    | "company.buzzPhrase"
    | "location.buildingNumber"
    | "location.secondaryAddress"
    | "location.streetAddress"
    | "location.zipCode"
    | "location.state"
    | "food.dish"
    | "science.chemical_element.name"
    | "word.adjective"
    | "word.adverb"
    | "word.conjunction"
    | "word.interjection"
    | "word.noun"
    | "word.preposition"
    | "word.verb" => true
    _ => false
  }
}
