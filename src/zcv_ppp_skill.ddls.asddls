@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consuption View skill'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZCV_PPP_SKILL
as select from ZIV_ppp_skill
association to parent ZCV_PPP_PROJECT as _proj on $projection.Id     = _proj.Id
                                              and $projection.Projid = _proj.Projid

{
    key Id,
    key Projid,
    key Skillid,
    SkillLevel,
    IsPrimary,
    isCertified,
    
    // Asociación Proyecto 
    _proj
}
