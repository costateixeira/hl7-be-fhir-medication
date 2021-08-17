Instance: example-4-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a dispense of two products. One that has a prescription and other that does not (and does not need one)."
Title: "Dispense of prescribed medication, and dispense of a product that can be done without a prescription"

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


* instance[+].resourceId = "4-1-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense for Prescription"


* instance[+].resourceId = "4-1-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New prescription"

* instance[+].resourceId = "4-2-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Isolated dispense"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "4-1-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "4-1-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "4-2-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on dispense"

* instance[+].resourceId = "4-2-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on dispense"



* process[+].title = "Dispense of prescribed medication, and dispense of a product that can be done without a prescription"
* process[=].description = "description"
* process[=].preConditions = "The patient visits their GP and is prescribed Rosuvastatin 10 mg cp for cholesterol. After reaching the pharmacy, Crestor 10 is dispensed facing that prescription. Additionally, Dafalgan compr. 20x 500mg (OTC) is also dispensed due to a complaint of a minor toothache."
* process[=].postConditions = "This should result in two treatment lines. One with prescription and dispense and one with only dispense."

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
* process[=].step[=].operation.request.resourceId = "4-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-1-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-1-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Dispense new product"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-1-dispense"

* process[=].step[+].operation.name = "Additional dispense"
* process[=].step[=].operation.number = "8"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-2-dispense"

* process[=].step[+].operation.name = "Additional treatment"
* process[=].step[=].operation.number = "8"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-2-treatment"

* process[=].step[+].operation.name = "Additional Treatment Line"
* process[=].step[=].operation.number = "9"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "4-2-treatmentLine"