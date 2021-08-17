  
The Medication Record needs to contain several data objects that are in the Modular Reccord (and therefore may be standardized separately). In addition, the Medication Record may be exchanged in different contexts, each requiring their type of exchange.

For detailed information about the different possibilities of exchange FHIR content, the [HL7 Da Vinci Health Record Exchange (HRex) Implementation Guide](https://build.fhir.org/ig/HL7/davinci-ehrx/exchanging.html) provides a good reference.

We consider 3 types of exchange:
1. Exchange of a curated overview of a patient's medication, typically with summary information and eventually some details.  
2. Exchange of 'raw' data for example between EHR systems to provide input for additional processing, or simply between a hospital EHR and the patient's PHR.  
3. Analytics on the data  



### Document
The most common case of a Medication Record exchange, at least initially, is the exchange of a document that contains a single overview of medication, compiled by a professional, with a given layout structure and sequence of information.  

In this case, a mechanism compatible with the [HL7 IPS Summary](http://hl7.org/fhir/uv/ips/StructureDefinition-Composition-uv-ips.html).  

The Medication Record Document is a Bundle that contains the document structure itself (Composition), then a set of Medication lines (represented by MedicationStatement resources, and eventually other resources).



### Collection / Transaction
The patient's Medication Record can be transferred in its entirety between systems. The typical case is a synchronization between vaults, or when a hospital wishes to transfer to a reporting system all the known information about a patient's medication requests and events, so that this information can be reconciled - for example to compile a summary.



### Analytics
The transfer of a medication record may not be needed or adequate in scenarios where the data is used for analytics, for example when directly querying the vault for some indicators.  

There are 2 ways of doing this:  
* Direct analytics - for example using GraphQL on the data
* Reporting - typically defining key Measures for the data (e.g. 'compliance score', or Comorbidity Polypharmacy Score, and querying the server directly for the results.





### IMPORTANT !!!!
> Note that this may depend on a List resource  

> .




