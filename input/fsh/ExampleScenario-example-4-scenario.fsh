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

* process[=].step[+].process[+].title = "Prescription"
* process[=].step[=].process[=].step[+].operation.name = "Goes to appointment"
* process[=].step[=].process[=].step[=].operation.number = "1"
* process[=].step[=].process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].process[=].step[=].operation.receiver = "GP"

* process[=].step[=].process[=].step[+].operation.name = "Get Patient's Medication"
* process[=].step[=].process[=].step[=].operation.number = "2"
* process[=].step[=].process[=].step[=].operation.initiator = "GP"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[=].process[=].step[+].operation.name = "Create new prescription"
* process[=].step[=].process[=].step[=].operation.number = "3"
* process[=].step[=].process[=].step[=].operation.initiator = "GP"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-prescription"

* process[=].step[+].process[+].title = "Collect info"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].process[=].step[=].operation.number = "4"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-1-treatment"

* process[=].step[=].process[+].title = "Collect info"
* process[=].step[=].process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "5"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-1-treatmentLine"

* process[=].step[+].process[+].title = "Dispense"
* process[=].step[=].process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].process[=].step[=].operation.number = "6"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[=].process[=].step[+].operation.name = "Dispense new product"
* process[=].step[=].process[=].step[=].operation.number = "7"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-1-dispense"

* process[=].step[=].process[=].step[+].operation.name = "Additional dispense"
* process[=].step[=].process[=].step[=].operation.number = "10"
* process[=].step[=].process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-2-dispense"



* process[=].step[+].process[+].title = "Collect info"
* process[=].step[=].process[=].step[+].operation.name = "Update treatment"
* process[=].step[=].process[=].step[=].operation.number = "8"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-1-treatment"

* process[=].step[=].process[=].step[+].operation.name = "Update treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "9"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-1-treatmentLine"



* process[=].step[=].process[+].title = "Collect info"
* process[=].step[=].process[=].step[+].operation.name = "Additional treatment"
* process[=].step[=].process[=].step[=].operation.number = "11"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-2-treatment"


* process[=].step[=].process[=].step[+].operation.name = "Additional Treatment Line"
* process[=].step[=].process[=].step[=].operation.number = "12"
* process[=].step[=].process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].process[=].step[=].operation.request.resourceId = "4-2-treatmentLine"
