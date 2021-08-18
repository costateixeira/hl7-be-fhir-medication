
CodeSystem: BeCSMedicationSummaryTypes
Id: be-cs-medication-summary-types
Title: "Medication Summary types"
Description: "CodeSystem - Medication Summary types"
* #kmehr-ms-5.6 "Belgian Medication Schema v5.6 - 09/2018"
* #kmehr-ms-5.5 "Belgian Medication Schema v5.5 - 12-2017"


ValueSet: BeVSMedicationSummaryTypes
Id: be-vs-medication-summary-types
Title: "Medication Summary types"
Description:  "Valueset -  Medication Summary types"
* include codes from system BeCSMedicationSummaryTypes


// *************

// @Name: Include Entire Value Set
// @Description: A value set containing other value sets

Alias: ACT =  http://terminology.hl7.org/CodeSystem/v3-ActReason


ValueSet: SubstitutionReason
Id: medication-substitution-dispense-v1
Title: "medication substitution Value set"
Description:   "Value set for substituting a medication on dispense."
* include codes from valueset v3.SubstanceAdminSubstitutionReason
* ACT#UNABLE  "unable to use"
