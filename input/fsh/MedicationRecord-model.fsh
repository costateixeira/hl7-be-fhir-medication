Logical:        BeModelMedicationRecord
Title:          "Medication Record logical model"
Description:    "A collection of a patient's medication history."
* patient 1..1 BackboneElement "" ""
* prescription 0..* BackboneElement  "" "" 
* dispense 0..*  BackboneElement "" "" 
* treatmentLine 0..*  BackboneElement "" ""


