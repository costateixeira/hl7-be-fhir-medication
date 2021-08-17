Instance: example-5-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster because there is no stock."
Title: "Dispense of new brand medication that is given because the old is unavailable, so giving to continue the treatment and not to replace it"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "DispensePrescriptionAndIsolatedDispense"
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


* instance[+].resourceId = "5-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense for Prescription"


* instance[+].resourceId = "5-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "5-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "5-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"


* process[+].title = "Change brand from prescription on dispense because of out of stock"
* process[=].description = "description"
* process[=].preConditions = "The patient visits their GP and is prescribed dafalgan Forte 1000 mg cp (TID) for headaches. When reaching the pharmacy for dispense, the pharmacy does not have dafalgan Forte now but dispenses Paracetabs Forte 1000 mg instead."
* process[=].postConditions = "It is possible to capture that the original prescription was dafalgan but the dispense was Paracetabs"

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
* process[=].step[=].operation.request.resourceId = "5-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "5-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "5-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Dispense new product"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "5-dispense"
