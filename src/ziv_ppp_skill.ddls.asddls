@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View skill'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIV_ppp_skill
  as select from zdbppp_skill
{
  key id           as Id,
  key projid       as Projid,
  key skillid      as Skillid,
      skill_level  as SkillLevel,
      is_primary   as IsPrimary,
      is_certified as isCertified
      
}
