Instance: example-8-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

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


* instance[+].resourceId = "8-prescription"
* instance[=].resourceType = #MedicationRequest
* instance[=].name = "New prescription"

* instance[+].resourceId = "EB"
* instance[=].resourceType = #Bundle
* instance[=].name = "Empty Bundle"

* instance[+].resourceId = "8-treatmentLine"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "New Treatment Line based on prescription"

* instance[+].resourceId = "8-treatment"
* instance[=].resourceType = #CarePlan
* instance[=].name = "New Treatment based on prescription"

* instance[+].resourceId = "8-dispense"
* instance[=].resourceType = #MedicationDispense
* instance[=].name = "Dispense"

* instance[+].resourceId = "8-administration"
* instance[=].resourceType = #MedicationAdministration
* instance[=].name = "Drug administration"

* instance[+].resourceId = "8-usage"
* instance[=].resourceType = #MedicationStatement
* instance[=].name = "Report of non taking drug"

* process[+].title = "Dispense of medication that was prescribed, but not taken till the end"
* process[=].description = "description"
* process[=].preConditions = "After a GP visit, the patient Pia Peters is prescribed amoxicillin + clavulanic acid 875 mg + 125 mg for a pharyngitis for the conclusion of the package. The pharmacist, dispensed Amoxiclav Sandoz 875/125.  However, after 1 take, the patient stopped doing the medication because the patient had an alergic reaction.  "
* process[=].postConditions = "A grouping of the prescription, dispense, and administration are coupled together within a treatment line, the new prescription should start a new treatment line under the same treatment."

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
* process[=].step[=].operation.request.resourceId = "8-prescription"

* process[=].step[+].operation.name = "Create new treatment"
* process[=].step[=].operation.number = "4"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "8-treatment"

* process[=].step[+].operation.name = "Create new treatment Line"
* process[=].step[=].operation.number = "5"
* process[=].step[=].operation.initiator = "VAULT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "8-treatmentLine"

* process[=].step[+].operation.name = "Get patient's Prescriptions"
* process[=].step[=].operation.number = "6"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.response.resourceId = "EB"

* process[=].step[+].operation.name = "Dispense"
* process[=].step[=].operation.number = "7"
* process[=].step[=].operation.initiator = "PHARM"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "8-dispense"

* process[=].step[+].operation.name = "Stopping the taking of drug due to an adverse event"
* process[=].step[=].operation.number = "8"
* process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "8-administration"

* process[=].step[+].operation.name = "Report the stopage of the taking"
* process[=].step[=].operation.number = "9"
* process[=].step[=].operation.initiator = "PATIENT"
* process[=].step[=].operation.receiver = "VAULT"
* process[=].step[=].operation.request.resourceId = "8-usage"