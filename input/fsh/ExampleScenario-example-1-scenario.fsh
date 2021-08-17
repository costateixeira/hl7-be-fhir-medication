Instance: example-1-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."
Title: "Dispense Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "ChangedmedicationScenario"
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


* instance[+].resourceId = "1-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New Prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "1-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line"

* instance[+].resourceId = "1-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment"

* instance[+].resourceId = "1-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "New dispense"


* process[+].title = "Change Branded Prescription"
* process[=].description = "description"
* process[=].preConditions = "The patient visits their GP and is prescribed Amlor for hypertension. The GP prescribes Amlor, but at the pharmacy there is no Amlor and amlodipin Sandoz is dispensed."
* process[=].postConditions = "A new treatment and treatment line are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each."

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
* process[=].step[=].operation.request.resourceId = "1-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "1-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "1-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Create new dispense"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "1-dispense"

