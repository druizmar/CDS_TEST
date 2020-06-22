@AbapCatalog.sqlViewName: 'ZDRM_V_CDS_TEST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZDRM_DD_CDS_TEST'
@Metadata.allowExtensions: true
define view ZDRM_DD_CDS_TEST as select from zdrm_cds_test {
    key client as client,

    key booking as booking
}
