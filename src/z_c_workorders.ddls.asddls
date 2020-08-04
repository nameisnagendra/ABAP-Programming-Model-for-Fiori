@AbapCatalog.sqlViewName: 'ZCWORKORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Work Orders'


@ObjectModel:{
compositionRoot: true,
transactionalProcessingDelegated: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
draftEnabled: true,
semanticKey: ['workorder'],
representativeKey: 'workorder'

 }
@Metadata.allowExtensions: true
@Search.searchable: true
@OData.publish: true

define view Z_C_WorkOrders
  as select from Z_I_BO_Workorder
  association [0..*] to Z_C_Operations as _Operations on $projection.workorder = _Operations.workorder
  association [0..1] to I_StatusCode   as _Status     on $projection.astnr = _Status.StatusCode
  with default filter _Status.StatusProfile = ''
{

  @ObjectModel.readOnly: true
  key  workorder,
       //       @UI.lineItem: [{ position:20,label:'Equipment',importance: #HIGH }]
       //       @UI.identification:[{ position: 20,label:'Equipment',importance: #HIGH }]
       //       @UI.selectionField: [{ position: 20 }]
       equnr,
       //       @UI.lineItem: [{ position:30,label:'Order Type',importance: #HIGH }]
       //       @UI.identification:[{ position: 30,label:'Order Type',importance: #HIGH}]
       auart,

       //       @UI.lineItem: [{ position:40,label:'Created By',importance: #HIGH }]
       //       @UI.fieldGroup:[{ position: 10,label:'Created By',importance: #HIGH,qualifier: 'AdminData' }]
       ernam,

       //       @UI.lineItem: [{ position:50,label:'Created On',importance: #HIGH }]
       //       @UI.fieldGroup: [{ position: 20,label:'Created On',importance: #HIGH,qualifier: 'AdminData' }]
       erdat,

       //       @UI.lineItem: [{ position:60,label:'Last ChangedBy',importance: #HIGH }]
       //       @UI.fieldGroup: [{ position: 30,label:'Last ChangedBy',importance: #HIGH,qualifier: 'Admindata' }]
       aenam,

       //       @Semantics.text: true
//       @Search:{defaultSearchElement: true,fuzzinessThreshold:0.7,ranking: #HIGH }
//              @UI.identification: [{ position: 40,importance: #HIGH }]
       ktext,

       //       @UI.fieldGroup: [{ position: 30,label:'Companycode',importance: #HIGH,qualifier: 'MainData' }]
       bukrs,

       //       @UI.fieldGroup: [{ position: 40,label:'Plant',importance: #HIGH,qualifier: 'MainData' }]
       //       @UI.selectionField: [{ position: 30 }]
       werks,

       //       @UI.lineItem: [{ position:70,label:'Status',importance: #HIGH,criticality: 'StatusCriticality' }]
       //       @UI.fieldGroup: [{ position: 50,label:'Status',importance: #HIGH,qualifier: 'MainData' }]
       //       @ObjectModel.text.association: '_Status'
       @UI.dataPoint:{title: 'Status',qualifier: 'Status',criticality: 'StatusCriticality'}
       astnr,
       @ObjectModel.readOnly: true
       STATUS_CRITICAL                                                    as StatusCriticality,

       @Semantics.amount.currencyCode: 'Currency'
       //       @UI.lineItem: [{ position:80,label:'Planned Cost',importance: #HIGH }]
       @UI.dataPoint:{title: 'Planned Cost',visualization: #NUMBER,qualifier: 'PlannedPrice'}
       pl_cost,

       //       @Semantics.amount.currencyCode: 'Currency'
       //       @UI.lineItem: [{ position:90,label:'Actual Cost',importance: #HIGH,criticality: 'PriceVariance' }]
       //       @UI.dataPoint:{title: 'Actual Cost',criticality: 'PriceVariance',visualization: #NUMBER}
       act_cost,

       @Semantics.currencyCode: true
       currency,
//       @ObjectModel.readOnly: true
//       case  when act_cost > pl_cost then 1 else 3 end                    as PriceVariance,
//
//       @ObjectModel.readOnly: true
//       @Semantics.quantity.unitOfMeasure: 'Percentage'
//       //       @UI.dataPoint:{ title: 'PercentageVariance',criticality: 'PriceVariance',visualization: #NUMBER}
//       case when pl_cost > 0 then
//       division( ( act_cost - pl_cost ) * 100 , pl_cost,2)  else 0.00 end as PriceVarPercentage,
//
//       @Semantics.unitOfMeasure: true
//       @ObjectModel.readOnly: true
//       cast( '%' as abap.unit( 3 ) )                                      as Percentage,
       /* Associations */
       //Z_I_BO_Workorder
       _Currency,
       _Equipment,
       @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
       _Operations,
       _OrderType,
       _Status
}
