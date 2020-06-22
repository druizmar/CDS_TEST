@AbapCatalog.sqlViewName: 'ZDRM_V_CDS_TEST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZDRM_DD_CDS_TEST'
@Metadata.allowExtensions: true

@VDM.viewType: #BASIC

define view ZDRM_DD_CDS_TEST as select from zdrm_cds_test 
     association[1..1] to zdrm_cds_test2 as ztest2 
     on  $projection.client     = ztest2.client
{
    key zdrm_cds_test.client as client,

    ztest2.booking as booking,
    ztest2
}
