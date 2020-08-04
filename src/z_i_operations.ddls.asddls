@AbapCatalog.sqlViewName: 'Zioperation'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Operations'
@VDM.viewType: #BASIC
define view Z_I_Operations
  as select from zorder_oper
{
         //zorder_oper
  key    workorder,
  key    activity,
         description,
         act_work,
         pl_work,
         unit
} 
  
 