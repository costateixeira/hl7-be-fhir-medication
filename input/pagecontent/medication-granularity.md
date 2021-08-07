# Medication Levels

For an adequate usage of medication throughout these scenarios, we should first understand that different levels of granularity regarding medication is often used in clinical practice.

We may want to refer to some drug as only the active principle - Pantoprazole. But sometimes we want to refer to a **truly** generic drug, only stating the drug, strength, pharmaceutical form and (maybe) route -> Pantoprazole 40 mg tab oral. This one is especially important when referring to something like treatment and or treatmentLine, since we can have prescription and most importantly dispenses of very different brands of medication, but all different packaged forms of the very same entity stated above.
Additionally, we may want to refer to some brand medication in a more specific way - Pantoprix (or any other). This third level of description is a child of the second one, like many others. In this case, we want to refer to the drug, but not necessarily the packaged form (number of tabs per box), which is interesting for example for medication summary. We may want to check the brand, but we do not care about the more specific details like number of elements. Additionally, we may want to refer this as well regarding schedules takes.
Finally, we have the most specific form, which is the packaged form, this could be specifically important for example community dispenses since this will be the product actually delivered to the patient and situations where batch number are important.

Following this rationale, we should engage with medication with different levels, all connected between them, so it is possible to select the right level of product and information for every situation.

An example is stated below.

<div>
{% include medication-level.svg %}
</div>