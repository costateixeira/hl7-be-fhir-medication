Logical: BeModelMedicationRecordDispense
Title: "Medication Record Dispense logical model"

* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" ""
* patient 1..1 Reference(Patient) "The person for which the medication is dispensed." ""
* dispenser 0..1 BackboneElement "The dispenser, if known and relevant" ""
  * actor 1..1 Reference(Practitioner) "Reference to person that performed the recording or reporting" ""
  * organization 1..1 Reference(Organization) "Reference to person that performed the recording or reporting" ""
* date 1..1 dateTime "The date when the dispense ocurred (or not)" ""
* prescription 0..1 BackboneElement "The information about a prescription related to the dispense" ""
  * isprescribed 0..1 boolean "Whether this dispense was performed against a prescription" ""
  * prescription 0..1 Reference(MedicationRequest) "The prescription identification" ""
* status 1..1 code "preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown  MedicationDispense Status Codes (Required)" ""
* statusReason 0..* CodeableConcept "Why a dispense was not performed MedicationDispense Status Reason Codes (Example)" ""
* product 1..1 Reference(Medication) "The product that was dispensed - coded or not (e.g. for magistral preparations)" ""
//best would be codableReference
* dispenseDetail 0..* BackboneElement "Each product that was dispensed" ""
  * quantitydispensed 0..1 Quantity "The amound of product that was dispensed"
  * dosageInstructions 0..1 Dosage "The instructions for use" ""
  * note 0..* Annotation "Additional information about the dispensed item" ""
* SubstitutionReason 0..1 CodeableConcept "Why was substitution made" ""
* type 0..1 CodeableConcept "Trial fill, partial fill, emergency fill, etc." ""
* location 0..1 string "" ""
* treatment 0..1 Reference "" ""

Logical: BeModelMedicationRecordPrescription
Title: "Medication Record Prescription logical model"
* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" ""
* patient 1..1 Reference(Patient) "The person for which the medication is dispensed." ""
* status 1..1 code "active  | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown medicationrequest Status (Required)" ""
* statusReason 0..* CodeableConcept "Reason for current status medicationRequest Status Reason Codes (Example)" ""
* intent 1..1 code "proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option  medicationRequest Intent (Required)" ""
* product 1..1 Reference(Medication) "Medication to be taken SNOMED CT Medication Codes (Example)" ""
* encounter 0..1 Reference(Encounter) "Encounter created as part of encounter/admission/stay" ""
* requester 0..1 Reference(Practitioner) "Who/What requested the Request" ""
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering or not ordering the medication Condition/Problem/Diagnosis Codes (Example)" ""
* groupIdentifier 0..1 Identifier "Composite request this is part of" ""
* dosageInstruction 0..* Dosage "How the medication should be taken" ""
* note 0..* Annotation "Additional Information about the prescription" ""
* date 0..1 dateTime "When request was initially made" ""
* location 0..1 string "" ""
* treatment 0..1 Reference "" ""

Logical: BeModelMedicationRecordUsage
Title: "Medication Record Usage logical model"
* identifier 0..* Identifier "External identifier" ""
* status 1..1 code "completed | entered-in-error | unknown" ""
* category 0..* CodeableConcept "Type of medication usage MedicationUsage Administration Location Codes (Example)" ""
* product 1..1 Reference(Medication) "What medication was taken SNOMED CT Medication Codes (Example)" ""
* subject 1..1 Reference(Patient or Group) "Who is/was taking the medication" ""
* effective[x] 0..1 dateTime or Period "The date/time or interval when the medication is/was/will be taken" ""
* dateAsserted 0..1 dateTime "When the usage was asserted?" ""
* informationSource 0..1 Reference(Patient or Practitioner or PractitionerRole or RelatedPerson or Organization) "Person or organization that provided the information about the taking of this medication" ""
* reason 0..* Reference(Condition or Observation or DiagnosticReport) "Reason for why the medication is being/was taken Condition/Problem/Diagnosis Codes (Example)" ""
* note 0..* Annotation "Further information about the usage" ""
* renderedDosageInstruction 0..1 string "Full representation of the dosage instructions" ""
* dosage 0..* Dosage "Details of how medication is/was taken or should be taken" ""
* adherence 0..1 BackboneElement "Indicates if the medication is being consumed or administered as instructed" ""
  * code 1..1 CodeableConcept "Type of adherence MedicationUsage Adherence Codes (Example)" ""
  * reason 0..1 CodeableConcept "Details of the reason for the current use of the medication SNOMED CT Drug Therapy Status codes (Example)" ""
* treatment 0..1 Reference "" ""


Logical: BeModelMedicationRecordAdministration
Title: "Medication Record Administration logical model"
* identifier 0..* Identifier "External identifier"  ""
* status 1..1 code "in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown MedicationAdministration Status Codes (Required)" ""
* statusReason 0..* CodeableConcept "Reason administration not performed SNOMED CT Reason Medication Not Given Codes (Example)" ""
* category 0..* CodeableConcept "Type of medication administration MedicationAdministration Location Codes (Example)" ""
* product 1..1 Reference(Medication) "What was administered SNOMED CT Medication Codes (Example)" ""
* subject 1..1 Reference(Patient) "Who received medication" ""
* encounter 0..1 Reference(Encounter) "Encounter administered as part of" ""
* occurence[x] 1..1 dateTime or Period "Start and end time of administration" ""
* recorded 0..1 dateTime "When the MedicationAdministration was first captured in the subject's record" ""
* performer 0..* BackboneElement "Who performed the medication administration and what they did" ""
  * function 0..1 CodeableConcept "Type of performance MedicationAdministration Performer Function Codes (Example)" ""
  * actor 1..1 Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or Device) "Who performed the medication administration" ""
* reason 0..* Reference(Condition or Observation or DiagnosticReport) "Concept, condition or observation that supports why the medication was administered Reason Medication Given Codes (Example)" ""
* prescription 0..1 Reference(MedicationRequest) "Request administration performed against" ""
* device 0..* Reference(Device) "Device used to administer" ""
* note 0..* Annotation "Information about the administration" ""
* dosage 0..1 BackboneElement "Details of how medication was taken + Rule: If dosage attribute is present then SHALL have at least one of dosage.text or dosage.dose or dosage.rate[x]" ""
  * text 0..1 string "Free text dosage instructions e.g. SIG" ""
  * site 0..1 CodeableConcept "Body site administered to SNOMED CT Anatomical Structure for Administration Site Codes (Example)" ""
  * route 0..1 CodeableConcept "Path of substance into body SNOMED CT Route Codes (Example)" ""
  * method 0..1 CodeableConcept "How drug was administered SNOMED CT Administration Method Codes (Example)" ""
  * dose 0..1 SimpleQuantity "Amount of medication per dose" ""
    * rate[x] 0..1 Ratio or SimpleQuantity "Dose quantity per unit of time" ""
* treatment 0..1 Reference "" ""
* location 0..1 string "" ""

Profile: MedRecordDispense
Parent: MedicationDispense
* subject MS // dispense.patient
* medicationCodeableConcept MS
* medicationReference MS
* whenHandedOver MS
