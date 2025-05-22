@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View project'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCV_PPP_PROJECT 
as select from ZIV_PPP_PROJECT

association to parent ZCV_PPP_EMPLEADOS as _empl on $projection.Id = _empl.Id

composition [1..*] of ZCV_PPP_SKILL as _skill

{
    key Id,
    key Projid,
    ProjectName,
    ProjectType,
    IsCurrent,
    Duration,
    
    // Association Empleados
    _empl,
    
    // Composición Skill
    _skill
    
}
