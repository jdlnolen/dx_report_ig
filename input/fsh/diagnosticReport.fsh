// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

//TODO add in rest of core elements 

Profile: DxReport
Parent: DiagnosticReport
Description: "An example profile of the DiagnosticReport resource."
* identifier 1..* MS
* status 1..1 MS
* code 1..1 MS
* supportingInfo 0..* MS

* extension contains DxFlavor named driver 0..1

Instance: DxReportExample
InstanceOf: DxReport
Description: "An example of a diagnostic report."
* identifier.value = "1234"
* status = #final
* code = #99999-99

Extension:   DxFlavor
Id:          dx-flavor
Title:       "Dx Flavor"
Description: "Dx Report Flavor"
* value[x] only CodeableConcept
* valueCodeableConcept from DxFlavorValueSet (extensible)

ValueSet:    DxFlavorValueSet
Title:       "Fish Species Value Set"
Id:          dx-flavor-value-set
Description: "Codes describing various species of fish, taken from SNOMED-CT."
* codes from system http://snomed.info/sct where concept is-a SCT#90580008  "Fish (organism)"
 