## Dispense of new brand medication that is given because the old is unavailable, so giving to continu the cure and not to replace it

This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster because there is no stock.

* After a GP visit, the patient Pia Peters is prescribed dafalgan Forte 1000 mg cp (TID) for headaches.
* When reaching the pharmacy for dispense, the pharmacy does not have dafalgan Forte now but dispenses Paracetabs Forte 1000 mg instead.
* It is then possible to check that the original prescription was dafalgan but the dispense was Paracetabs.
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription and related dispenses next to each other.


**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    * VOS - ibuproféne oral 400 mg (16279)
  
2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
   
3. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
4. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
5. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
6. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)  
   
7. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)

**Dispense attributes**
1. Produt Identification - [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
     * VOS - paracetamol oral 1G (24745)
     * mppcv - Dafalgan compr. efferv. (séc.) Forte 20x 1g (3391281)
  
2. Total quantity (20) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)
   
3. Reason for change (drug-drug interaction) - [note](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.note)
   
4. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)
   
5. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)
   
6. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)
   
7. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
8. Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)