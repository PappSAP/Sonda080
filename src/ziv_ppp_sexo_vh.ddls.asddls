@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help Sexo'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZIV_PPP_SEXO_VH
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name : 'ZDOPPP_SEXO' )
{
  key domain_name,
  key value_position,
  key language,
 
     @ObjectModel.text.element: [ 'SexoTexto' ]
      value_low  as SexoId,
      text       as SexoTexto
}
where language = $session.system_language
