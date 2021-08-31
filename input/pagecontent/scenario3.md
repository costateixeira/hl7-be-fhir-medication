## Example 3. Dispense medication before the prescription is available

This example shows a dispense of a medication that is made before an existing prescription

* After a GP visit, the patient Pia Peters (75 years) is prescribed diclofenac for arthritis.
* While making the dispense, the pharmacist understands that the patient has a history of stomachal ulcers. Since diclofenac creates stomachal irritations, the pharmacy also dispenses a stomach protector to prevent any case of stomach irritation or bleeding and advises to tell the information to the GP. 
* The pharmacist tells the patient to comeback with a prescription for the protector after meeting the doctor.
* The patient goes to the GP and returns to the pharmacy with the prescription.

**Prescription 1 attributes**
1. Produt Identification
     * VOS - diclofenac oral 50 mg (9050) 	
  
2. Dosage 
   
3. Date of the prescription - 2021-07-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter 
   
7. Status - active

**Dispense 1 attributes**
1. Produt Identification 
     * VOS - diclofenac oral 50 mg (9050) 	
     * mppcv - Voltaren compr. gastro-résist. 50x 50mg (0817940)

2. Total quantity - 50
   
3. Reason for dispense - acute symptom
   
4. Date of the dispense - "2021-07-19T13:00:00+02:00"
   
5. Dosage 
   
6. Subject - Pia Peters
   
7. Dispenser - Pharmacist

**Dispense 2 attributes**
1. Produt Identification
     * VOS - pantoprazole oral 20 mg (24646) 	
     * mppcv - Pantogastrix compr. gastro-rÃ©sist. 14x 20mg (2807014)

2. Total quantity - 14
   
3. Reason for dispense - acute symptom 
   
4. Date of the dispense - "2021-07-19T13:00:00+02:00"
   
5. Dosage 
   
6. Subject - Pia Peters
   
7. Dispenser - Pharmacist

**Prescription 2 attributes**
1. Produt Identification
     * VOS - pantoprazole oral 20 mg (24646) 	
  
2. Dosage 
   
3. Date of the prescription - 2021-08-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter 
   
7. Status - active

**Update Dispense 2**
1. Identification of Prescription 



### Notes:  
* The dispense starts a new treatment and treatmentline??? 
* So, if the prescription occurs, it is connected to the same prescription line throuhht the treatmentLine.
* But what if the prescription is a different drug? 
* 
