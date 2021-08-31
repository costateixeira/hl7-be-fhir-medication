## Example 2b. Prescribed medication is changed by another medication from a different VOS-cluster

### b) different package size  

This example shows a prescription that is made by brand name and the pharmacist changes the medication for one belonging to the same VOS - Cluster but different package size.

* After a GP visit, the patient Pia Peters is prescribed Dafalgan Forte 1000 mg cp (TID) 16 tabs for headaches.
* When reaching the pharmacy for dispense, the pharmacy does not have Dafalgan Forte 16 tabs at the moment but dispenses Dafalgan Forte 1000 mg cp 10 tabs instead.
* It is then possible to check that the original prescription was Dafalgan Forte 16 tabs but the dispense was Dafalgan Forte 10 tabs.
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription and related dispenses next to each other.

**Prescriptions attributes**
1. Produt Identification 
    *	VOS - paracetamol oral 1G (24745)
    *	mppcv - Dafalgan compr. pellic. (séc.) Forte 16x 1g  (1799147)

2. Dosage
   
3. Reason for not prescribing VOS
   
4. Date of the prescription - 2021-07-19T09:00:00+02:00
   
5. Patient for whom the prescription is - Pia Peters
   
6. Requester - GP
   
7. Encounter - ID: 0cf5dc52-28dc-43ce-96d2-3a757526c739
   
8. Status - active

**Dispense attributes**
1. Produt Identification 
    * VOS - paracetamol oral 1G (24745)
    * mppcv - Dafalgan compr. pellic. (séc.) Forte 10x 1g (3010733)

2. Total quantity - 30
   
3. Reason for change - out of stock
   
4. Identification of Prescription - 69eb6358-6eb6-40e4-972f-33d22c3392c5

5. Date of the dispense - "2021-07-19T13:00:00+02:00"
   
6. Dosage 
   
7. Subject - Pia Peters
   
8. Dispenser - Pharmacist
