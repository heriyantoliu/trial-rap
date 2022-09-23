@EndUserText.label: 'Purchase Document Item (Unmanaged)'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zi_hh_poitem_u
  as select from zi_hh_poitem
  association to parent zi_hh_poheader_u as _PurchaseDocument on $projection.PurchaseDocument = _PurchaseDocument.PurchaseDocument
{

  key PurchaseDocumentItem,
  key PurchaseDocument,
      Description,
      Vendor,
      VendorType,
      Price,
      Currency,
      Quantity,
      QuantityUnit,
      OverallItemPrice,
      PurchaseDocumentItemImageURL,
      VendorRating,

      // BOPF Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      /* Associations */
      _Currency,
      _PurchaseDocument,
      _QuantityUnitOfMeasure,
      _VendorType

}
