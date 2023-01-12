// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

//TODO add in rest of core elements 

Profile: DxReport
Parent: DiagnosticReport
Description: "An example profile of the DiagnosticReport resource."
* identifier 1..* MS
* basedOn 0..* MS
* status 1..1 MS
* category 0..* MS
* code 1..1 MS
* subject 0..1 MS
* encounter 0..1 MS
* effective[x] 0..1 MS
* issued 0..1 MS
* performer 0..* MS
* resultsInterpreter 0..* MS
* specimen 0..* MS
* result 0..* MS 
* note 0..* MS
* study 0..* MS 
* supportingInfo 0..* MS
* media 0..* MS
* composition 0..1 MS 
* conclusion 0..1 MS
* conclusionCode 0..* MS
* presentedForm 0..* MS

Instance: DxReportExample
InstanceOf: DxReport
Description: "An example of a diagnostic report."
* identifier.value = "1234"
* status = #final
* code = #99999-99
