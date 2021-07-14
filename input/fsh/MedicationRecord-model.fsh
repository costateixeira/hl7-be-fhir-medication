Logical:        BeModelMedicationRecordDispense
Title:          "Medication Record Dispense logical model"
* patient 1..1 BackboneElement "" ""
* product 1..1 Medication "" ""
* dispenseDate 0..1 date "" ""
* dosageInstructions 0..* string "" ""
* location 0..1 string "" ""
* prescriptionReference 0..1 Reference "" "" 
* treatmentReference 0..1 Reference "" ""

Logical:        BeModelMedicationRecord
Title:          "Medication Record logical model"
Description:    "A collection of a patient's medication history."
* patient 1..1 BackboneElement "" ""
* prescription 0..* BackboneElement  "" "" 
* dispense 0..*  BeModelMedicationRecordDispense "" "" 
* treatmentLine 0..* BackboneElement "" ""
