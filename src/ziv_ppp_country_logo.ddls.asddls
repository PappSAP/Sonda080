@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Country flag'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIV_PPP_COUNTRY_LOGO
  as select from zdbppp_country
{
  key country  as Country,
      logo_url as CountryLogoUrl,
      case country
      when 'AR' then 'https://www.sap.com/australia/index.html'
      when 'BR' then 'https://www.sap.com/brazil/index.html'
      when 'CL' then 'https://www.sap.com/latinamerica/index.html'
      when 'UY' then 'https://www.sap.com/germany/index.html'
      else 'www.sap.com'
      end      as CountryWebLink

}
