## Example 1. Prescribed branded medication is changed by another branded medication from the same VOS-cluster

This example shows a prescription that is made by brand name and the pharmacist changes the brand name for another brand name in the same VOS - Cluster.

* After a GP visit, the patient Pia Peters is prescribed Amlor hard capsules daily for hypertension.
* When reaching the pharmacy for dispense, the pharmacy does not have Amlor now but dispenses Amlodipin Sandoz instead.
* It is possible to capture that the original prescription was Amlor but the dispense was Amlodipin Sandoz.
* This could enable a medication summary that can for example group treatment lines, enabling the visualization of the prescription and related dispenses next to each other.

**Prescriptions attributes**
1. Produt Identification 
    * VOS - amlodipine oraal 5 mg [CAVE deelb.] (1701)
    * mppcv - Amlor harde caps. 98x 5mg (2837409)

2. Dosage - 1 cap daily
   
3. Reason for not prescribing VOS
   
4. Date of the prescription - 2021-07-19T09:00:00+02:00
  
5. Patient for whom the prescription is - Pia Peters
   
6. Requester - GP
   
7. Encounter - ID: 0cf5dc52-28dc-43ce-96d2-3a757526c739
   
8. Status - active
   
**Dispense attributes**
1. Produt Identification
    * VOS - amlodipine oraal 5 mg [CAVE deelb.] (1701)
    * mppcv - Amlodipin Sandoz tabl. (deelb.) Besilaat 100x 5mg (2399640)

2. Total quantity - 30
   
3. Reason for change - out of stock
   
4. Identification of Prescription - ID: 69eb6358-6eb6-40e4-972f-33d22c3392c5
   
5. Date of the dispense - 2021-07-19T13:00:00+02:00
   
6. Dosage Instruction 
   
7. Subject - Pia Peters

8. Dispenser - Pharmacist

### Notes:  
* The prescription starts a new treatment and treatmentline. 
* Meanwhile, the dispense  occurs. 
* Since the active principle is the same, the dispense also goes into the same treatment line.

The final result of these interactions is:  
  <div>
{% include example1-result.svg %}
</div>