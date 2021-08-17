Instance: example-2-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist changes the medication for one belonging to another VOS - Cluster but same medication (diffence in the strength)."
Title: "Prescribed medication is changed by another medication from a different VOS-cluster - Different strength"

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


* instance[+].resourceId = "2a-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New Prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "2a-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "2a-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "2a-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "New dispense"


* process[+].title = "Change VOS from prescription on dispense"
* process[=].description = "description"
* process[=].preConditions = "The patient visits their GP and is prescribed paracetamol 1000 mg cp (TID) for headaches. In the pharmacy, the pharmacist understands the the patient has problems swallowing the pill itself, so it trades the 1000 mg strength, for 500 mg and indicates that the patient should take 2x500 mg every 8h and not 1x1000mg every 8 hours."
* process[=].postConditions = "A new treatment and treatmentLine are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each"

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
* process[=].step[=].operation.request.resourceId = "2a-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "2a-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "2a-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Create new dispense"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "2a-dispense"

