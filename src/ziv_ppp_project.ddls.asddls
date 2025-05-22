@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View proyectos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIV_PPP_PROJECT
  as select from zdbppp_project
{
  key id           as Id,
  key projid       as Projid,
      project_name as ProjectName,
      project_type as ProjectType,
      is_current   as IsCurrent,
      duration     as Duration

}
