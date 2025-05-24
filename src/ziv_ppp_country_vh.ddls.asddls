@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help Country'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZIV_PPP_COUNTRY_VH
as select  from I_Country 

{
@ObjectModel.text.element: [ 'CountryName' ]
    key Country,
    _Text[1: Language = $session.system_language].CountryName as CountryName
  }
where Country = 'US' or Country = 'IN' or Country = 'AU' or Country = 'DE'
