@AbapCatalog.sqlViewName: 'ZIBOWORKORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Work Orders'

@ObjectModel:{

transactionalProcessingEnabled: true,
compositionRoot: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
writeActivePersistence: 'ZWORK_ORDERS',
writeDraftPersistence: 'ZDWORK_ORDERS',
draftEnabled: true,
entityChangeStateId: 'LAST_CHANGED',

semanticKey: ['workorder'],
representativeKey: ['workorder']
}
define view Z_I_BO_Workorder
  as select from Z_I_WorkOrders
  association [0..*] to Z_I_OB_Operations as _Operations on $projection.workorder = _Operations.workorder
  association [0..1] to equi              as _Equipment  on $projection.equnr = _Equipment.equnr
  association [0..1] to I_OrderType       as _OrderType  on $projection.auart = _OrderType.OrderType
  association [0..1] to I_Currency        as _Currency   on $projection.currency = _Currency.Currency
{
         //Z_I_WorkOrders
  key    workorder,
         equnr,
         auart,
         ernam,
         erdat,
         aenam,
         ktext,
         bukrs,
         werks,
         astnr,
         pl_cost,
         act_cost,
         currency,
         STATUS_CRITICAL,
         last_changed,
         @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
         _Operations,
         _Equipment,
         _OrderType,
         _Currency
}
