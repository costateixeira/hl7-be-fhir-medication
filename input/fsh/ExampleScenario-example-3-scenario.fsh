Instance: example-3-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription."
Title: "Dispense medication before the prescription is available"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "ChangedmedicationDifferentVOSScenario"
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


* instance[+].resourceId = "3-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense of product prescribed"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "3-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "3-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "3-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "Original Prescription"

* instance[+].resourceId = "3-2-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Ancilliary Dispense of a product"

* instance[+].resourceId = "3-2-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New Prescription"


* process[+].title = "Dispense of medication before a existing prescription"
* process[=].description = "description"
* process[=].preConditions = "After a GP visit, the patient Pia Peters (75 years) is prescribed diclofenac for arthritis.While making the dispense, the pharmacist understands that the patient has a history of stomachal ulcers. Since diclofenac creates stomachal irritations, the pharmacy also dispenses a stomach protector to prevent any case of stomach irritation or bleeding and advises to tell the information to the GP."
* process[=].postConditions = "A new treatment and treatmentLine are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each."

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
* process[=].step[=].operation.request.resourceId = "3-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "3-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "3-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Dispense original dispense"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "3-dispense"

* process[=].step[+].operation.name = "Dispense ancilliary product"
* process[=].step[=].operation.number = "8"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "3-2-dispense"

* process[=].step[+].operation.name = "Report of situation"
* process[=].step[=].operation.number = "9"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "GP"

* process[=].step[+].operation.name = "Goes to new appointment"
* process[=].step[=].operation.number = "10"
* process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].operation.receiver = "GP"

* process[=].step[+].operation.name = "Get Patient's Medication"
* process[=].step[=].operation.number = "11"
* process[=].step[=].operation.initiator = "GP"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Create new prescription"
* process[=].step[=].operation.number = "12"
* process[=].step[=].operation.initiator = "GP"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "3-2-prescription"