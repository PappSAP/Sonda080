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
@UI.textArrangement: #TEXT_FIRST

    key Country,
    _Text[1: Language = $session.system_language].CountryName as CountryName
  }
where ( Country = 'AR'  ) 
   or ( Country = 'BR'  ) 
   or ( Country = 'CL'  ) 
   or ( Country = 'UY'  )
