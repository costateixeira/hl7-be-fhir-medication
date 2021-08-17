Profile:        MedRecordComposition
Parent:         Composition
Id:             medication-composition
Title:          "Medication Record List"
Description:    "The Composition aggregating the Medication Record"
* meta.profile 1..*
* subject 1..1
* insert jurisdiction-be
//* section.entry only Reference (MedicationDispense or MedicationRequest or MedicationStatement)


RuleSet: jurisdiction-be
* ^jurisdiction = urn:iso:std:iso:3166#BE



Profile:        MedicationRecordBatch
Parent:         Bundle
Id:             medication-record-batch
Title:          "Medication Record Batch"
Description:    "A document Bundle.
* lorem ipsum
"
* insert jurisdiction-be


Profile:        MedicationRecordDocument
Parent:         Bundle
Id:             medication-record-document
Title:          "Medication Record Document"
Description:    "A document Bundle.
* lorem ipsum
"
* meta.profile 1..*
* insert jurisdiction-be
* type = #document
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the types of resources"
//* entry MS
* entry contains 
    Overview 1..1 and
    Treatment 1..* and
    TreatmentLine 1..* and
    Summary 1..* and
    Dispenses 0..* and
    Administrations 0..* and
    AdverseEvents 0..* and
    AllergyIntolerances 0..* and
    Indications 0..* and
    Plans 0..1 and
    Prescriptions 0..1

* entry[Overview].resource only
    MedRecordComposition

* entry[Treatment].resource only
    MedicationTreatment

* entry[TreatmentLine].resource only
    MedicationTreatmentLine

* entry[Summary].resource only
    MedicationSummary

* entry[Dispenses].resource only
    MedicationDispense

* entry[Administrations].resource only
    MedicationAdministration

* entry[AdverseEvents].resource only
    AdverseEvent

* entry[AllergyIntolerances].resource only
    AllergyIntolerance

* entry[Indications].resource only
    Condition

* entry[Overview].resource only
    MedRecordComposition

* entry[Plans].resource only
    MedicationRequest

* entry[Prescriptions].resource only
    MedicationRequest



Profile:        MedicationSummary
Parent:         CarePlan
Id:             medication-summary
Title:          "Medication Summary"
Description:    "The CarePlan capturing the a summary view consisting of Medication treatment lines. A summary view can be detailed, decomposed, aggregated, etc."
* meta.profile 1..*
* subject 1..1
* insert jurisdiction-be

* activity.detail.reasonReference MS
* activity.reference MS



Profile:        MedicationTreatment
Parent:         CarePlan
Id:             medication-treatment
Title:          "Medication Treatment"
Description:    "The medication treatment is a collection of medication treatment lines. This line contains the information about the treatment as indicated by the prescriber, or as actually taken by the patient."
* meta.profile 1..*
* subject 1..1
* insert jurisdiction-be



Profile:        MedicationTreatmentLine
Parent:         MedicationStatement
Id:             medication-treatment-line
Title:          "Medication Treatment Line"
Description:    "A medication treatment line - a single entry in a list of medication treatments. This line can be as requested by the prescriber, or as actually happening in the dispense or treatment. It can be an aggregation or detail of treatment lines"
* meta.profile 1..*
* subject 1..1
* insert jurisdiction-be



Profile:        MedRecordIndication
Parent:         Condition
Id:             medication-indication
Title:          "Indication"
Description:    "The Indication for which the medication is given"
* meta.profile 1..*
* subject 1..1
* insert jurisdiction-be
//* section.entry only Reference (MedicationDispense or MedicationRequest or MedicationStatement)
