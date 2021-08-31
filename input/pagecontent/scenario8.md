## Example 8. Dispense of medication that was prescribed, but not taken till the end

This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction.

* After a GP visit, the patient Pia Peters is prescribed amoxicillin + clavulanic acid 875 mg + 125 mg for a pharyngitis for the conclusion of the package.
* The pharmacist, dispensed Amoxiclav Sandoz 875/125.
* However, after 1 take, the patient stopped doing the medication because the patient had an alergic reaction. 
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription, dispenses and administrations next to each other.

**Prescriptions attributes**
1. Produt Identification 
    * VOS - amoxicilline + acide clavulanique oral 875 mg + 125 mg (1941)
  
2. Dosage 
  
3. Date of the prescription - 2021-07-19T09:00:00+02:00
   
4. Patient for whom the prescription is - Pia Peters
   
5. Requester - GP
   
6. Encounter
   
7. Status - active

**Dispense attributes**
1. Produt Identification
    * VOS - amoxicilline + acide clavulanique oral 875 mg + 125 mg (1941)
    * mppcv - Amoxiclav Sandoz 875/125 compr. (séc.) 20x (1715127)
  
2. Total quantity - 20
   
3. Identification of Prescription 
   
4. Date of the dispense - 2021-07-19T13:00:00+02:00
   
5. Dosage 
   
6. Subject - Pia Peters
   
7. Dispenser - Pharmacist

**Administration attributes**
1. Product Identification 
       * mppcv - Amoxiclav Sandoz 875/125 compr. (séc.) 20x (1715127)

   
2. Subject - Pia Peters
   
3. Encounter 
   
4. Occurence  - 2021-07-19T18:00:00+02:00
   
5. Performer - Nurse
   
6. Prescription 
   
7. Dosage 
   
8. Status - stopped
   
9.  Status Reason - allergic reaction


**Medication Usage**
1. Product Identification 
       * mppcv - Amoxiclav Sandoz 875/125 compr. (séc.) 20x (1715127)

   
2. Subject - Pia Peters
   
3. Date of report - 2021-07-19T18:30:00+02:00
   
4. InformationSource - Patient

5. Subject - Pia Peters
   
6. Prescription 
   
7. Status not-taking
   
8. Reason - "Medication stopped - side effect" 


### Notes:  
* The prescription starts a new treatment and treatmentline. 
* New prescription after feedback from administration
* Since the new prescription is for the same purpose, but only a new drug, the treatment stays the same but a new treatment line is created.

The final result of these interactions is:  
  <div>
{% include example8-result.svg %}
</div>