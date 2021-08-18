Instance: example-7-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all."
Title: "Dispense of medication that was prescribed to take if needed, but was not taken"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "MedicationNotTaken"
//* publisher = "DZOP"

* actor[+].actorId = "PATIENT"
* actor[=].type = #person
* actor[=].name = "Pia Peters"

* actor[+].actorId = "GP"
* actor[=].type = #person
* actor[=].name = "Dr. Durant"

* actor[+].actorId = "VAULT"
* actor[=].type = #entity
* actor[=].name = "Vault"

* actor[+].actorId = "PHARM"
* actor[=].type = #person
* actor[=].name = "Pharmacist"


* instance[+].resourceId = "7-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "7-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "7-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "7-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense"

* instance[+].resourceId = "7-usage"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Usage report"


* process[+].title = "Dispense of medication that was prescribed to take if needed, but was not taken"
* process[=].description = "description"
* process[=].preConditions = "After a GP visit, the patient Pia Peters is prescribed Ciprofloxacine 500 mg cp since the patient will travel to southeast Asia. The prescription is marked as \"taken if discomfort or diarrhea\". After reaching the pharmacy, Ciproxine is dispensed facing that prescription. After the patient arrives from the travel, she tells the GP that she ended up not taking the medication because she had no problems. "
* process[=].postConditions = "It is possible to capture that the original prescription was and the report of non usage by the patient."

* process[=].step[+].operation.name = "Goes to appointment"
* process[=].step[=].operation.number = "1"
* process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].operation.receiver = "GP"

* process[=].step[+].operation.name = "Get Patient's Medication"
* process[=].step[=].operation.number = "2"
* process[=].step[=].operation.initiator = "GP"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Create new prescription"
* process[=].step[=].operation.number = "3"
* process[=].step[=].operation.initiator = "GP"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Dispense"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-dispense"

* process[=].step[+].operation.name = "Update treatment"
* process[=].step[=].operation.number = "8"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatment"

* process[=].step[+].operation.name = "Update treatment Line"
* process[=].step[=].operation.number = "9"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatmentLine"


* process[=].step[+].operation.name = "Usage Report of non-usage"
* process[=].step[=].operation.number = "10"
* process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-usage"

* process[=].step[+].operation.name = "Update treatment"
* process[=].step[=].operation.number = "11"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatment"

* process[=].step[+].operation.name = "Update treatment Line"
* process[=].step[=].operation.number = "12"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "7-treatmentLine"