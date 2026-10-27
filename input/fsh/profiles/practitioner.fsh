Profile: UrxPractitionerRole
Parent: PractitionerRole
Description: "Example of a pharmacist practitioner role"
* code 0..* MS
* specialty 0..* MS

Instance: PractitionerRoleExample
InstanceOf: UrxPractitionerRole
Description: "An example of a pharmacist practitioner role."
* specialty[+] = $nucc#183500000X // pharmacist
* specialty[+] = $nucc#1835C0205X // critical care pharmacist
* practitioner = Reference(PractitionerExample)

Profile: UrxPractitioner
Parent: Practitioner
Description: "Example of a pharmacist practitioner"
* identifier MS // unsure if there is an identifier that can universally enumerate all pharmacists
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains NPI 0..1 and NABP 0..1
* identifier[NPI].system 1..1
* identifier[NPI].system = $npi
* identifier[NPI].value 1..1
* identifier[NABP].system 1..1
* identifier[NABP].system = $nabp
* identifier[NABP].value 1..1
* name 1..* MS

// qualification with slices for PharmacyDegree, BoardCertification, and RPhLicense
* qualification 1..* MS
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open

* qualification contains
    pharmacyDegree 0..1 and
    boardCertification 0..1 and
    rphLicense 0..1

* qualification[pharmacyDegree]
  * code MS // e.g. PharmD, BPharm
    * coding.system = $v2-0360
  * period MS // when the degree was conferred
    * start MS
  * issuer MS // the school that conferred the degree

* qualification[boardCertification]
  * identifier MS // e.g. credential identifier for board certification
    * system MS
    * value MS
  * code MS // e.g. board certification in critical care pharmacy
    * coding.system = Canonical(BoardCertificationCS)
  * period MS // duration of the board certification
  * issuer MS // the certifying board

* qualification[rphLicense]
  * identifier MS
    * system MS
    * value MS
  * code MS // RPh license
    * coding.system = $facet
  * period MS // duration of the RPh license
  * issuer MS // for RPh, identifies the state(s) in which the pharmacist is licensed

Instance: PractitionerExample
InstanceOf: UrxPractitioner
Description: "An example of a pharmacist practitioner."
* name
  * given[+] = "James"
  * family = "Pond"
* qualification[pharmacyDegree]
  * code = $v2-0360#PharmD
  * period
    * start = "2021-05-15" // day of graduation
  * issuer = Reference(UniversityOfFloridaCollegeOfPharmacy)
    // no end date because this is a degree
  // PGY-1 pharmacy practice 2021 - 2022
  // PGY-2 critical care 2022 - 2024
* qualification[boardCertification]
  * identifier
    * system = "https://bpsweb.org/"
    * value = "123456" // example board certification number, not a real provider
  * code = BoardCertificationCS#bcccp
  * period
    * start = "2024-06-01" // day of board certification
    * end = "2031-06-01" // board certifications expire after 7 years
  * issuer = Reference(BoardOfPharmacySpecialties)
* qualification[rphLicense]
  * identifier
    * system = "https://floridaspharmacy.gov/"
    * value = "RPH-123456" // example license number, not a real license
  * code = $facet#RPH
  * period
    * start = "2021-09-30" // original license issue date
    * end = "2027-09-30" // most recent license expiration date
  * issuer = Reference(FloridaBoardOfPharmacy)
