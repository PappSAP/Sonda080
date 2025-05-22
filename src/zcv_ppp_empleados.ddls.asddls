@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View empleados'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCV_PPP_EMPLEADOS
  as select from ZIV_PPP_EMPLEADOS
composition [1..*] of ZCV_PPP_PROJECT as _proj
{
  key Id,
      Nombre,
      Apellido,
      Sexo,
      Cargo,
      Fullname,

      /* Associations  Contacto*/
      _cont.PhoneNum,
      _cont.AltPhoneNum,
      _cont.EmailId,
      _cont.AltEmailId,

      /* Associations  Dirección*/
      _addr.Street,
      _addr.City,
      _addr.Country,
      
      /* Composición  Proyectos*/
      _proj    

}
