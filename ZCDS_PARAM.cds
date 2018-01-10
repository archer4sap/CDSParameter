@AbapCatalog.sqlViewName: 'ZCDS_PARAM1'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Param'
define view ZCDS_PARAM
  with parameters
    part_number : matnr // Input parameter
  as select from mara
{
  key matnr as material,
      mtart as material_type,
      matkl as material_group
}
where
  matnr = :part_number 
 
