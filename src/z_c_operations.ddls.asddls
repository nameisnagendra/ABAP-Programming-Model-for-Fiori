@AbapCatalog.sqlViewName: 'zcoboper'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Operations'

@ObjectModel:{
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
semanticKey: ['workorder','activity'],
representativeKey: 'workorder',
transactionalProcessingDelegated: true
}
define view Z_C_Operations
  as select from Z_I_OB_Operations
  association[0..1] to Z_C_WorkOrders as _Workorders on $projection.workorder = _Workorders.workorder
{
        //Z_I_OB_Operations
  key   workorder,
  key   activity,
        description,
        act_work,
        pl_work,
        unit,
        /* Associations */
        //Z_I_OB_Operations
        @ObjectModel.association.type: [#TO_COMPOSITION_ROOT,#TO_COMPOSITION_PARENT]
        _Workorders
} 
  
  
  
  
  
  
  
  
  
  
  
  
 