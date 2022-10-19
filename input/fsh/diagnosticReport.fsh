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

Instance: DxReportExample
InstanceOf: DxReport
Description: "An example of a diagnostic report."
* identifier.value = "1234"
* status = #final
* code = #99999-99


 