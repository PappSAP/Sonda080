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
      case project_type
        when 'COM'  then 'Comunicaciones'
        when 'INV'  then 'Desarrollo'
        when 'MEJ'  then 'Mejora'
        when 'TI'   then 'Tecnológico'
        else 'Otro'
      end          as ProjectTypeTexto,

      case project_type
        when 'COM' then 3
        when 'TI'  then 3
        when 'INV'  then 2
        when 'MEJ'  then 1
        else  0
      end          as ProjectTypeNivel,


      is_current   as IsCurrent,
      duration     as Duration



}
