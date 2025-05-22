@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View wmpleados'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZIV_PPP_EMPLEADOS
  as select from zdbppp_empleados
 association [1..1] to ZIV_PPP_CONTACT  as _cont on $projection.Id = _cont.Id
 association [1..1] to ZIV_PPP_ADDRESS as _addr  on $projection.Id = _addr.Id
{
  key id    as Id,
      fname as Nombre,
      lname as Apellido,
      sexo  as Sexo,
      cargo as Cargo,
      concat_with_space( fname, lname, 1 ) as Fullname,
//    Contacto      
      _cont,
//    Dirección      
      _addr
      
      
}

