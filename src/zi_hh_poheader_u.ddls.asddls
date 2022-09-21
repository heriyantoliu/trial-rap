@EndUserText.label: 'Purchase Document Header (Unmanaged)'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity zi_hh_poheader_u
  as select from zi_hh_pooverallprice
  composition [0..*] of zi_hh_poitem_u as _PurchaseDocumentItem
  association [0..1] to zI_Indicator     as _IsApprovalRequired on $projection.IsApprovalRequired = _IsApprovalRequired.IndicatorValue
{

  key PurchaseDocument,
      Description,
      Status,
      Priority,
//      @ObjectModel.foreignKey.association: '_IsApprovalRequired'
      case when OverallPrice > 100000 then 'X' else '' end as IsApprovalRequired,

      case when OverallPrice >= 0 and OverallPrice < 100000 then 3
      when OverallPrice >= 100000 and OverallPrice <= 500000 then 2
      when OverallPrice > 500000 then 1
      else 0 end                                         as OverallPriceCriticality,

      OverallPrice,

      Currency,

      PurchasingOrganization,
      PurchaseDocumentImageURL,


      crea_date_time,

      crea_uname,

      lchg_date_time,

      lchg_uname,

      /* Associations */
      _PurchaseDocumentItem,
      _Currency,
      _Priority,
      _Status,
      _IsApprovalRequired,
      _PurchasingOrganization

}
