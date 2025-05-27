@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View address'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIV_ppp_address
  as select from zdbppp_address
  association[1..1] to ZIV_PPP_COUNTRY_VH   as _cntry on $projection.Country = _cntry.Country
  association[1..1] to ZIV_PPP_COUNTRY_LOGO as _logo on $projection.Country = _logo.Country
  
{
  key id      as Id,
      street  as Street,
      city    as City,
      country as Country,
      
      _cntry.CountryName as CountryName,
      _logo.CountryLogoUrl as CountryLogoUrl,
      _logo.CountryWebLink as CountryWebLink
}
