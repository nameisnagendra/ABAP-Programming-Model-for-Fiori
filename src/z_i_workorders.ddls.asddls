@AbapCatalog.sqlViewName: 'ZIWORKORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Work Orders'
@VDM.viewType: #BASIC
define view Z_I_WorkOrders
  as select from zwork_orders
{
        //ZWORK_ORDERS
  key   workorder,
        equnr,
        auart,
        ernam,
        erdat,
        aenam,
        ktext,
        bukrs,
        werks,
        astnr,
        case when astnr = 'CNF' then 3
           when astnr = 'PCNF' then 2
           when astnr = 'CLSD' then 1
           else 0 end as STATUS_CRITICAL,
           last_changed,
        pl_cost,
        act_cost,
        currency
}
