The Medication Record contains the information related to the patient's medication usage. It includes most obviously the medication that the patient is currently on, but possibly also includes Medication Allergies, indications NOT to take medication, past medication information as stated by the patient...  
<br/>
The Medication Record is a collection of these different atomic data elements, all of which are part of the patient's modular record. Therefore, the Medication Record can contain the detailed data, as well as a summary overview.
<br/>

See the [Medication Record data model overview](./medicationrecord-data-model.html) for a more detailed explanation of the different components of the medication record.
<br/>
<br/>



### Types of Medication Record

* The **Patient Record** contains the entire/relevant information about the patient's care and/or health;
* The Medication Record contains the medication-related information.



#### Types of content  
Depending on the purposes, the Medication Record may have different types of content in 3 dimensions:
#####  Different types of content about the usage of the medication  
The medication record may express only summary information about the usage, or may also express a detailed view of the medication given, for example lot numbers of dispensed products, or administration times when known. When describing summary information, that information may have been summarized according to different criteria and using different source data  
* Emergency summaries may need a small summarized data set  
* A medication record of the patient's medication during a hospital stay may contain more details such as the administration of the medication  
* Medication treatment adherence or other studies may require more or less details, depending on the use case at hand  
* Transfer of care may require more or less detail, depending on the use case  
  <br/>
  <br/>


##### Time span covered by the record / summary (or other inclusion criteria)   
A medication record or summary may refer to different time periods, depending on the use case and intent of the record:
   * The time window for the medication for a GP overview may include several years
   * A discharge summary may contain only the data referring to the hospitalization  
   * ...
<br/>
<br/>

##### Types of medication that are included in the summary 
Also the types of medication that are included or excluded can vary. Different types of medication can be, for example,
   * OTCs
   * Prescription only
   * Vaccines
   * non-medication supplements
<br/>
<br/>


All of these criteria may be, by design, present or absent in a given summary. This means that the absence of a given medication (e.g. the administration of a vaccine 4 years in the past) may be due to the absence of data, or it may be due to the way the medication record was assembled for a given purpose. Therefore, the medication record interoperability framework must comprehend these different possibilities.

> A Medication Record shall be interoperable in a format that supports these different "flavours"  

When a receiving system receives a summary, it is important to know which data is absent by design or by there being no data. Similarly, when a professional evaluates the medication record, they may require to know, implicitly or explicitly, the type of data and constraints in that data.

> A Medication Record shall be exchanged in a way that it is clear what is the intent, so that it can be determined what data is or not expected to be included.

These requirements are mentioned in the [Medication Record requirements](./medicationrecord-requirements.html)

<br/>
<br/>
<br/>
