Logical: BeModelMedicationRecordDispense
Title: "Medication Record Dispense logical model"

* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" ""
* patient 1..1 Reference(Patient) "The person for which the medication is dispensed." ""
* dispenser 0..* BackboneElement "The dispenser, if known and relevant" ""
  * actor 1..1 Reference(Practitioner) "Reference to person that performed the recording or reporting" ""
  * organization 1..1 Reference(Organization) "Reference to person that performed the recording or reporting" ""
* date 1..1 dateTime "The date when the dispense ocurred (or not)" ""
* prescription 0..1 BackboneElement "The information about a prescription related to the dispense" ""
  * isprescribed 0..1 boolean "Whether this dispense was performed against a prescription" ""
  * prescription 0..1 Reference(MedicationRequest) "The prescription identification" ""
* status 1..1 code "preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown  MedicationDispense Status Codes (Required)" ""
* statusReason 0..* CodeableConcept "Why a dispense was not performed MedicationDispense Status Reason Codes (Example)" ""
* product 1..1 Reference(Medication) or CodeableConcept "The product that was dispensed - coded or not (e.g. for magistral preparations)" ""
* quantitydispensed 0..1 SimpleQuantity "The amound of product that was dispensed"
* dosageInstruction 0..1 Dosage "The instructions for use" ""
* note 0..* Annotation "Additional information about the dispensed item" ""
* SubstitutionReason 0..1 CodeableConcept "Why was substitution made" ""
* type 0..1 CodeableConcept "Trial fill, partial fill, emergency fill, etc." ""
* location 0..1 Reference(location) "" ""
* treatment 0..1 Reference "" ""

Logical: BeModelMedicationRecordPrescription
Title: "Medication Record Prescription logical model"
* identifier 0..1 Identifier "The business identifier(s) for the medication prescription" ""
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." ""
* status 1..1 code "active  | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown medicationrequest Status (Required)" ""
* statusReason 0..* CodeableConcept "Reason for current status medicationRequest Status Reason Codes (Example)" ""
* intent 1..1 code "proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option  medicationRequest Intent (Required)" ""
* product 1..1 Reference(Medication) or CodeableConcept "Medication to be taken SNOMED CT Medication Codes (Example)" ""
* encounter 0..1 Reference(Encounter) "Encounter created as part of encounter/admission/stay" ""
* requester 0..1 Reference(Practitioner) "Who/What requested the Request" ""
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering or not ordering the medication Condition/Problem/Diagnosis Codes (Example)" ""
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
* category 0..* CodeableConcept "Type of medication usage MedicationUsage Administration Location Codes (Example)" ""
* product 1..1 Reference(Medication) or CodeableConcept "What medication was taken SNOMED CT Medication Codes (Example)" ""
* subject 1..1 Reference(Patient or Group) "Who is/was taking the medication" ""
* effective[x] 0..1 dateTime or Period "The date/time or interval when the medication is/was/will be taken" ""
* dateAsserted 0..1 dateTime "When the usage was asserted?" ""
* informationSource 0..1 Reference(Patient or Practitioner or PractitionerRole or RelatedPerson or Organization) "Person or organization that provided the information about the taking of this medication" ""
* reason 0..* Reference(Condition or Observation or DiagnosticReport) or CodeableConcept "Reason for why the medication is being/was taken Condition/Problem/Diagnosis Codes (Example)" ""
* note 0..* Annotation "Further information about the usage" ""
* renderedDosageInstruction 0..1 string "Full representation of the dosage instructions" ""
* dosage 0..* Dosage "Details of how medication is/was taken or should be taken" ""
* adherence 0..1 BackboneElement "Indicates if the medication is being consumed or administered as instructed" ""
  * code 1..1 CodeableConcept "Type of adherence MedicationUsage Adherence Codes (Example)" ""
  * reason 0..1 CodeableConcept "Details of the reason for the current use of the medication SNOMED CT Drug Therapy Status codes (Example)" ""
* treatment 0..1 Reference "" ""


Logical: BeModelMedicationRecordAdministration
Title: "Medication Record Administration logical model"
* identifier 0..* Identifier "External identifier"  ""
* status 1..1 code "in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown MedicationAdministration Status Codes (Required)" ""
* statusReason 0..* CodeableConcept "Reason administration not performed SNOMED CT Reason Medication Not Given Codes (Example)" ""
* category 0..* CodeableConcept "Type of medication administration MedicationAdministration Location Codes (Example)" ""
* product 1..1 Reference(Medication) or CodeableConcept "What was administered SNOMED CT Medication Codes (Example)" ""
* subject 1..1 Reference(Patient) "Who received medication" ""
* encounter 0..1 Reference(Encounter) "Encounter administered as part of" ""
* occurence[x] 1..1 dateTime or Period "Start and end time of administration" ""
* recorded 0..1 dateTime "When the MedicationAdministration was first captured in the subject's record" ""
* performer 0..* BackboneElement "Who performed the medication administration and what they did" ""
  * function 0..1 CodeableConcept "Type of performance MedicationAdministration Performer Function Codes (Example)" ""
  * actor 1..1 Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or Device) "Who performed the medication administration" ""
* reason 0..* Reference(Condition or Observation or DiagnosticReport) or CodeableConcept "Concept, condition or observation that supports why the medication was administered Reason Medication Given Codes (Example)" ""
* prescription 0..1 Reference(MedicationRequest) "Request administration performed against" ""
* device 0..* Reference(Device) "Device used to administer" ""
* note 0..* Annotation "Information about the administration" ""
* dosage 0..1 BackboneElement "Details of how medication was taken + Rule: If dosage attribute is present then SHALL have at least one of dosage.text or dosage.dose or dosage.rate[x]" ""
  * text 0..1 string "Free text dosage instructions e.g. SIG" ""
  * site 0..1 CodeableConcept "Body site administered to SNOMED CT Anatomical Structure for Administration Site Codes (Example)" ""
  * route 0..1 CodeableConcept "Path of substance into body SNOMED CT Route Codes (Example)" ""
  * method 0..1 CodeableConcept "How drug was administered SNOMED CT Administration Method Codes (Example)" ""
  * dose 0..1 SimpleQuantity "Amount of medication per dose" ""
    * rate[x] 0..1 Ratio or SimpleQuantity "Dose quantity per unit of time" ""
* treatment 0..1 Reference "" ""
* location 0..1 string "" ""


//treatmentLine as is
Logical: BeModelMedicationRecordTreatmentLine
Title: "Medication Record Treatment Line logical model"

* identifier 0..1 Identifier "The business identifier(s) for the medication treatment Line" ""
* basedOn 0..1 Reference(CarePlan) "" "" 
* subject 1..1 Reference(Patient) "" ""
* recorder 1..1 Reference(Practitioner or Organization) "" ""
* recordDate 1..1 dateTime "" ""
* startMedicationDate 1..1 dateTime "" ""
* endMedicationDate 0..1 dateTime "" ""
* originType 1..1 CodeableConcept "" ""
* reaction 0..* CodeableConcept "" ""
* product[x] 1..1 Reference(Medication) or CodeableConcept "" ""
* medicationType 0..* CodeableConcept "" ""
* instructionForUse 0..* string "" ""
* dosageAmount 0..1 CodeableConcept "" ""
* periodicity 0..1 CodeableConcept "" ""
* route 1..1 CodeableConcept "" ""
* dayPeriod 0..* CodeableConcept "" ""
* lifecycleStatus 1..1 CodeableConcept "" ""
* statusReason 0..* CodeableConcept "" ""
* lotNumber 0..1 string	"Identifier assigned to batch" ""


//treatment as is - rzv
Logical: BeModelMedicationRecordTreatment
Title: "Medication Record Treatment logical model"

* identifier 0..1 Identifier "The business identifier(s) for the medication treatment" "" 
* subject 1..1 Reference(Patient) "" ""
* status 1..1 code "" ""
* intent 1..1 code "" ""
* category 0..* CodeableConcept "" ""
* title 0..1 string "" ""
* description 0..1 string "" ""
* encounter 0..1 Reference(Encounter) "" ""
* period 0..1 Period "" "" 
* created 0..1 dateTime "" ""
* author 0..1 Reference(Patient or Practitioner or PractitionerRole or Device or RelatedPerson or Organization or CareTeam) "" ""
* careTeam 0..* Reference(CareTeam) "" ""
* supportingInfo 0..* Reference(Resource) "" ""
* goal 0..* Reference(Goal) "Desired outcome of plan" ""
* activity 0..* BackboneElement "Action to occur as part of plan cpl-3: Provide a reference or detail, not both"
  * id  0..1 string "Unique id for inter-element referencing"
  * extension  0..* Extension "Additional content defined by implementations"
  * modifierExtension 0..* Extension "Extensions that cannot be ignored even if unrecognized"
  * outcomeCodeableConcept  0..* CodeableConcept "Results of the activity Binding: CarePlanActivityOutcome (example): Identifies the results of the activity."
  * outcomeReference  0..* Reference(Resource) "Appointment, Encounter, Procedure, etc."
  * progress  0..* Annotation "Comments about the activity status/progress"
  * reference 0..1 Reference(Appointment or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup) "Activity details defined in specific resource"
  * detail 0..1 BackboneElement "In-line definition of activity"
    * id 0..1 string "Unique id for inter-element referencing"
    * extension 0..* Extension "Additional content defined by implementations"
    * modifierExtension 0..* Extension "Extensions that cannot be ignored even if unrecognized"
    * kind 0..1 code "Appointment or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription Binding: CarePlanActivityKind (required): Resource types defined as part of FHIR that can be represented as in-line definitions of a care plan activity."
  //  * instantiatesCanonical  0..* canonical(PlanDefinition or ActivityDefinition or Questionnaire or Measure or OperationDefinition) "Instantiates FHIR protocol or definition"
    * instantiatesUri 0..* uri "Instantiates external protocol or definition"
    * code 0..1 CodeableConcept "Detail type of activity Binding: ProcedureCodes(SNOMEDCT) (example): Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter."
    * reasonCode 0..* CodeableConcept "Why activity should be done or why activity was prohibited Binding: SNOMEDCTClinicalFindings (example): Identifies why a care plan activity is needed. Can include any health condition codes as well as such concepts as \"general wellness\", prophylaxis, surgical preparation, etc."
    * reasonReference 0..* Reference(Condition or Observation or DiagnosticReport or DocumentReference) "Why activity is needed"
    * goal 0..* Reference(Goal) "Goals this activity relates to"
    * status 1..1 code "not-started or scheduled or in-progress or on-hold or completed or cancelled or stopped or unknown or entered-in-error Binding: CarePlanActivityStatus (required): Codes that reflect the current state of a care plan activity within its overall life cycle."
    * statusReason  0..1 CodeableConcept "Reason for current status"
    * doNotPerform 0..1 boolean "If true, activity is prohibiting action"
    * scheduled[x]  0..1 Timing or Period or string  "When activity is to occur"
    * location  0..1 Reference(Location) "Where it should happen"
    * performer  0..* Reference(Practitioner or PractitionerRole or Organization or RelatedPerson or Patient or CareTeam or HealthcareService or Device) "Who will be responsible?"
    * product[x]  0..1 CodeableConcept or Reference(Medication or Substance)  "What is to be administered/supplied Binding: SNOMEDCTMedicationCodes (example): A product supplied or administered as part of a care plan activity. "
    * dailyAmount  0..1 SimpleQuantity "How to consume/day?"
    * quantity  0..1 SimpleQuantity "How much to administer/supply/consume"
    * description  0..1 string "Extra info describing activity to perform"
* note  0..* Annotation "Comments about the plan"


Logical:        BeModelMedicationRecord
Title:          "Medication Record logical model"
Description:    "A collection of a patient's medication history."
* patient 1..1 BackboneElement "" ""
* prescription 0..* BackboneElement  "" "" 
* dispense 0..*  BeModelMedicationRecordDispense "" "" 
* treatmentLine 0..* BackboneElement "" ""
