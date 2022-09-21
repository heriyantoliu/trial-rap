@EndUserText.label: 'Purchase Document Overall Price'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zi_hh_pooverallprice
  as select from zi_hh_poheader
  association [0..1] to I_Currency as _Currency on $projection.currency = _Currency.Currency
{
  key PurchaseDocument,

      @Semantics.amount.currencyCode: 'Currency'
      @DefaultAggregation: #NONE
      cast( sum( _PurchaseDocumentItem.OverallItemPrice ) as abap.dec( 10, 2 ))as OverallPrice,
      @ObjectModel.foreignKey.association: '_Currency'
      
      _PurchaseDocumentItem.Currency,

      PurchasingOrganization,

      Description,
      Status,
      Priority,

      PurchaseDocumentImageURL,

      // BOPF Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      /* Associations */
      _PurchaseDocumentItem,
      _Currency,
      _Priority,
      _Status,
      _PurchasingOrganization

}
group by
  PurchaseDocument,
  _PurchaseDocumentItem.Currency,
  PurchasingOrganization,
  Description,
  Status,
  Priority,
  PurchaseDocumentImageURL,
  crea_date_time,
  crea_uname,
  lchg_date_time,
  lchg_uname
