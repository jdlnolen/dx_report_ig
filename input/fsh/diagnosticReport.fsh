//TODO look at composition!!!!

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
* identifier.value = "S-23-1234"
* status = #final
* code = #99999-99
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* specimen = Reference(SpecimenExample) 
* result[0] = Reference(ObservationExampleGross) 
* result[1] = Reference(ObservationExampleMicro) 
* result[2] = Reference(ObservationExampleFinalDiagnosis) 
* result[3] = Reference(ObservationExampleDiagnosisComment) 
* conclusion = "This is the summary"

Instance: EncounterExample
InstanceOf: Encounter
Description: "An example of an encounter."
* identifier.value = "987654"
* subject = Reference(PatientExample)
* class = http://terminology.hl7.org/ValueSet/encounter-class#INP
* status = http://hl7.org/fhir/encounter-status#completed

Instance: PatientExample
InstanceOf: Patient
Description: "An example of a patient."
* identifier.value = "123456"
* name.family = "Doe"
* name.given = "John"

Instance: SpecimenExample
InstanceOf: Specimen
Description: "An example of a specimen."
* identifier.value = "4343524"
* accessionIdentifier.value = "S-23-1234-1"
* subject = Reference(PatientExample) 

Instance: ObservationExampleMicro
InstanceOf: Observation
Description: "Observation of microscopic findings."
* identifier.value = "23-1-23421-M"
* status = #final
* code = http://loinc.org#LP40224-5 
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* specimen = Reference(SpecimenExample) 
* valueString = "microscopic findings"

Instance: ObservationExampleGross
InstanceOf: Observation
Description: "Observation of gross description."
* identifier.value = "23-1-23421-G"
* status = #final
* code = http://loinc.org#24419-4
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* specimen = Reference(SpecimenExample) 
* valueString = "gross description of specimens"

Instance: ObservationExampleFinalDiagnosis
InstanceOf: Observation
Description: "Observation of final diagnosis."
* identifier.value = "23-1-23421-F"
* status = #final
* code = http://loinc.org#22637-3 
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* specimen = Reference(SpecimenExample) 
* valueString = "final diagnosis of case"

Instance: ObservationExampleDiagnosisComment
InstanceOf: Observation
Description: "Observation of diagnosis comment."
* identifier.value = "23-1-23421-C"
* status = #final
* code = http://loinc.org#22638-1 
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* specimen = Reference(SpecimenExample) 
* valueString = "diagnosis comment of case"





