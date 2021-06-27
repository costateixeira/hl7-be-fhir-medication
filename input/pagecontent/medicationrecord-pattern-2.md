
In this use case a patient goes to a GP appointment and the attending doctor needs to access and update the patient's medication schema.


During the appointment, the GP needs to access the patient's medication record with the purpose of better assess the patient's status and health.  In order to achieve this, he requests the authorization of the patient to do so and requests the medication schema for the patient on the Pharmacy System. The pharmacy System requests the medication summary from the vault which acts as a repository.
Additionally, the GP needs to make adjustments to the patient's medication schema. He does so in the pharmacy system and it will update the medication-schema repository accordingly.

Actors:  
1. Patient - The patient of the appointment and person for whom the medication schema should apply.
2. GP - General Practitioner and attending doctor.
3. Pharmacy system - Prescription module / Medication software
4. Vault/ Other system - Repository of the medication schema information / health information as a whole.
<div>
{% include usecase-medicationschema-2.svg %}
</div>

<br/>
<br/>
