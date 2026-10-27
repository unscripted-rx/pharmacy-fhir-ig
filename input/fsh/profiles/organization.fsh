Profile: UrxOrganization
Parent: Organization
Description: "Example of a pharmacist organization"
* active 1..1
* type 1..* MS // e.g. government for things like board of pharmacy
* name 1..1 MS
* alias MS // align with NDH

Instance: FloridaBoardOfPharmacy
InstanceOf: UrxOrganization
Description: "Florida board of pharmacy"
* active = true
* type[+] = http://terminology.hl7.org/CodeSystem/organization-type#govt
* name = "Florida Board of Pharmacy"
