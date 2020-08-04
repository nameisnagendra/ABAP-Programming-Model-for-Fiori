@AbapCatalog.sqlViewName: 'ZIBOOPER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Operations'

@ObjectModel:{
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
semanticKey: ['workorder','activity'],
representativeKey: 'activity',
writeActivePersistence: 'ZORDER_OPER',
writeDraftPersistence: 'ZDORDER_OPER'

}
define view Z_I_OB_Operations
  as select from Z_I_Operations
  association[0..1] to Z_I_BO_Workorder as _Workorders on $projection.workorder = _Workorders.workorder
{
         //Z_I_Operations
  key    workorder,
  key    activity,
         description,
         act_work,
         pl_work,
         unit,
         @ObjectModel.association.type: [#TO_COMPOSITION_ROOT,#TO_COMPOSITION_PARENT]
         _Workorders
} 
  
  
  
  
  
  
 