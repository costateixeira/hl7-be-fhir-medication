Instance: example-15a-of-medication-presc 
InstanceOf: MedRecordOrder
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active
* intent = #order

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d 
* dosageInstruction.timing.repeat.dayOfWeek[+] = #wed 
* dosageInstruction.timing.repeat.dayOfWeek[+] = #thu 

* dosageInstruction.timing.repeat.when = #MORN 

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

//////////////////<<<<>>>>\\\\\\\\\\\\\\\\\\

Instance: example-15b-of-medication-presc 
InstanceOf: MedRecordOrder
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "f1ef61db-472f-4f84-a6fa-9914f43525b1"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #active
* intent = #order

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"

* authoredOn = "2020-05-01T09:00:00+02:00"

* requester.identifier.value = "db0f310a-e2fe-4aca-93cc-c3fd41dc272a"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP2"

* encounter.identifier.value = "7b0febb8-4117-4019-9f7f-bb920912548e"
* encounter.identifier.system = "http://encounter-identifiers.com"

* dosageInstruction.route = http://snomed.info/sct#26643006  "Oral Route" 

* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "TAB" 
* dosageInstruction.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosageInstruction.doseAndRate.doseQuantity.code = #TAB 

* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d 


* dosageInstruction.timing.repeat.when = #MORN 

* extension[treatmentPlan].valueReference.identifier.value = "5c94b8a1-6a7e-4652-9525-c7614f768ed8"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"



Instance: reflux-condition
InstanceOf: Condition
Usage: #example

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* code = http://snomed.ct#266435005 "Gastro-oesophageal reflux disease without oesophagitis"
//////////////////<<<<>>>>\\\\\\\\\\\\\\\\\\

Instance: example-15c-of-medication-treatment 
InstanceOf: MedRecordTreatment
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatments-identifiers.com"
* identifier[0].value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* created = "2021-07-19T09:00:00+02:00"

* status = #active 
* intent = #plan
* title = "Treatment for acid reflux with acidine"
* addresses = Reference(reflux-condition)

* activity[+].detail.kind = #MedicationRequest
* activity[=].detail.status = #completed
* activity[=].detail.productCodeableConcept	= https://cnk.apb.be/codings/cnk_product_codes#00  "Aspirine 500 mg (36 effervescent tablets)"


Instance: example-15-of-medication-treatmentLine 
InstanceOf: MedRecordTreatmentLine
Usage: #example
Description: ""
Title:    ""

* identifier[0].system = "http://treatmentLines-identifiers.com"
* identifier[0].value = "581998d0-8630-4ec0-8233-1cf5807fca41"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#00  "Acidine 75 mg (20 pieces)"

* status = #active