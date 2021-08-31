## Example 6. Refusal to dispense the prescribed medication

This example shows a prescription that is made by VOS and the pharmacist refuses to dispense the medication due to interaction with previous medication.


* After a GP visit, the patient Pia Peters (75 years) is prescribed ibuprofen 400 mg cp (TID) for headaches.
* The pharmacist, after a conversation with the patient, got to know that he was doing Tritace (ramipril) 10 mg for hypertension.
* Since the ibuprofen interacts with ramipril, the pharmacist chose to refuse the dispense of the medication;

**Prescriptions attributes**
1. Produt Identification
    * VOS - ibuproféne oral 400 mg (16279)
  
2. Dosage 
   
3. Date of the prescription - 2021-07-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter 
   
7. Status - active



**Dispense attributes**

1. Reason for refusal - drug-drug interaction 
   
2. Identification of Prescription 
   
3. Date of the dispense - 2021-07-19T13:00:00+02:00
   
4. Subject - Pia Peters
   
5. Dispenser - Pharmacist
   
6. ?? do we add the code/reference of the medication that was not dispensed ??
7. do we add quantity? in IHE, we do Medication=X, QTY = 0
   
### Notes:  
* The prescription starts a new treatment and treatmentline. 
* As the dispense is rejected, a new prescription should emerge from this. 
* Since the new prescription is for the same purpose, but only a new drug, the treatment stays the same but a new treatment line is created.

The final result of these interactions is:  
  <div>
{% include example6-result.svg %}
</div>