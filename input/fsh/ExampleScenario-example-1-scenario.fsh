Instance: example-1-scenario 
InstanceOf: ExampleScenario
Usage: #example
Description: "This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster."
Title: "Dispense Example - Prescribed branded medication is changed by another branded medication from the same VOS-cluster"

* status = #draft
* experimental = false
* date = "2019-09-11T00:00:00.000+01:00"
* name = "ChangedmedicationSameVOSScenario"
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


* process[+]
  * title = "Change Branded Prescription"
  * description = "description"
  * preConditions = "The patient visits their GP and is prescribed Amlor for hypertension. The GP prescribes Amlor, but at the pharmacy there is no Amlor and amlodipin Sandoz is dispensed."
  * postConditions = "A new treatment and treatment line are created, inside the new treatment line, a prescription and dispense are contained and is possible to see which medication is associated with each."

  * step[+]
    * process[+]
      * title = "Initial Contact"
      * step[+]
        * operation.name = "Goes to appointment"
        * operation.number = "1"
        * operation.initiator = "PATIENT"
        * operation.receiver = "GP"

      * step[+]
        * operation.name = "Get Patient's Medication"
        * operation.number = "2"
        * operation.initiator = "GP"
        * operation.receiver = "VAULT"
        * operation.response.resourceId = "EB"
  

        * operation.name = "Create new prescription"
        * operation.number = "3"
        * operation.initiator = "GP"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-prescription"
  * step[+]
    * process[+]
      * title = "Treatment resources Creation"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "4"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "5"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatmentLine"

  * step[+]
    * process[+]
      * title = "Dispense"
      * step[+]
        * operation.name = "Get patient's Prescriptions"
        * operation.number = "6"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "EB"
      * step[+]
        * operation.name = "Create new dispense"
        * operation.number = "7"
        * operation.initiator = "PHARM"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-dispense"

  * step[+]
    * process[+]
      * title = "Treatment Resources Update"
      * step[+]
        * operation.name = "Create new treatment"
        * operation.number = "8"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatment"
      * step[+]
        * operation.name = "Create new treatment Line"
        * operation.number = "9"
        * operation.initiator = "VAULT"
        * operation.receiver = "VAULT"
        * operation.request.resourceId = "1-treatmentLine"
