@EndUserText.label: 'Purchase Document Header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity zi_hh_poheader as select from zhh_purchdoc
  association [0..*] to ZI_hh_poitem     as _PurchaseDocumentItem   on $projection.PurchaseDocument = _PurchaseDocumentItem.PurchaseDocument
  association [0..1] to zi_hh_popriority as _Priority               on $projection.Priority = _Priority.Priority
  association [0..1] to zi_hh_postatus   as _Status                 on $projection.Status = _Status.Status
  association [0..1] to zi_hh_purchorg   as _PurchasingOrganization on $projection.PurchasingOrganization = _PurchasingOrganization.PurchasingOrganization {
  @ObjectModel.text.element: ['Description']
  key purchasedocument         as PurchaseDocument,
      @Semantics.text: true
      description              as Description,
//
      @ObjectModel.foreignKey.association: '_Status'
      status                   as Status,
      @ObjectModel.foreignKey.association: '_Priority'
      priority                 as Priority,
      @ObjectModel.foreignKey.association: '_PurchasingOrganization'
      purchasingorganization   as PurchasingOrganization,

      @Semantics.imageUrl: true
      purchasedocumentimageurl as PurchaseDocumentImageURL,

      // BOPF Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      // Associations
      _PurchaseDocumentItem,
      _Priority,
      _Status,
      _PurchasingOrganization
}
