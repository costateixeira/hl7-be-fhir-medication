## Example 2a. Prescribed medication is changed by another medication from a different VOS-cluster

### a) Different strength  

This example shows a prescription that is made by VOS and the pharmacist changes the medication for one belonging to another VOS - Cluster but same medication (diffence in the strength).


* After a GP visit, the patient Pia Peters (75years) is prescribed paracetamol 1000 mg cp (TID) for headaches.
* In the pharmacy, the pharmacist understands the the patient has problems swallowing the pill itself, so it trades the 1000 mg strength, for 500 mg and indicates that the patient should take 2x500 mg every 8h and not 1x1000mg every 8 hours.
* It is then possible to understand that the original prescription was paracetamol 1000 mg and the dispense was for dafalgan (paracetamol) 500 mg with different instructions. 


**Prescriptions attributes**
1. Produt Identification 
    * VOS - paracetamol oral 1G (24745)

2. Dosage
   
3. Date of the prescription - 2021-07-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter - ID: 0cf5dc52-28dc-43ce-96d2-3a757526c739
   
7. Status - active


**Dispense attributes**
1.	Produt Identification
     * VOS - paracetamol oral 500 mg (24901)
     * mppcv - Dafalgan compr. 20x 500mg (2933893)
  
1. Total quantity - 20
   
2. Reason for change - difficulty swallowing
   
3. Identification of Prescription - 69eb6358-6eb6-40e4-972f-33d22c3392c5

4. Date of the dispense - "2021-07-19T13:00:00+02:00"

5. Dosage 

6. Subject - Pia Peters
   
7. Dispenser - Pharmacist


### Notes:  
* The prescription starts a new treatment and treatmentline. 
* Meanwhile, the dispense  occurs. 
* Since the active principle is the same, the dispense also goes into the same treatment line.
* However, each medication should have a different VOS-grouping as a medication group.

The final result of these interactions is:  
  <div>
{% include example2-result.svg %}
</div>