## Example 4. Dispense of prescribed medication, and dispense of a product that can be done without a prescription

This example shows a dispense of two products. One that has a prescription and other that does not (and does not need one).


* After a GP visit, the patient Pia Peters is prescribed Rosuvastatin 10 mg cp for cholesterol.
* After reaching the pharmacy, Crestor 10 is dispensed facing that prescription. Additionally, Dafalgan compr. 20x 500mg (OTC) is also dispensed due to a complaint of a minor toothache.
* This should result in two treatment lines. One with prescription and dispense and one with only dispense.

**Prescriptions attributes**
1. Produt Identification
    * VOS - rosuvastatine oral 10 mg (28035)
  
2. Dosage 
   
3. Date of the prescription - 2021-07-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter 
   
7. Status - active


**Dispense 1 attributes**
1. Produt Identification
      * VOS - rosuvastatine oral 10 mg (28035)
      * mppcv - Crestor compr. pellic. 28x 10mg (2040418)
  
2. Total quantity - 28
   
3. Identification of Prescription
   
4. Date of the dispense - 2021-07-19T13:00:00+02:00
   
5. Dosage 
   
6. Subject - Pia Peters
   
7. Dispenser - Pharmacist

**Dispense 2 attributes**
1. Produt Identification
      * VOS - paracetamol oral 500 mg (24901)
      * mppcv - Dafalgan compr. 20x 500mg (2933893)
  
2. Total quantity - 20
   
3. Date of the dispense - 2021-07-19T13:00:00+02:00
   
4. Dosage 
   
5. Subject - Pia Peters
   
6. Dispenser - Pharmacist


### Notes:  
* The prescription starts a new treatment and treatmentline. 
* Meanwhile, the dispense  occurs and is added to the same treatmentLine.
* Since the dispense is not related, starts a new treatment and TreatmentLine

The final result of these interactions is:  
  <div>
{% include example4-result.svg %}
</div>