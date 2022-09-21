@EndUserText.label: 'Vendor Type'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'VendorType'
@ObjectModel.semanticKey: ['VendorType']
@ObjectModel.resultSet.sizeCategory: #XS
define view entity zi_hh_vdrtype
  as select from zhh_purchvndrtyp
{
      @ObjectModel.text.element: ['VendorTypeText']
      @EndUserText.label: 'Vendor Type'
  key vendortype     as VendorType,

      @Semantics.text: true
      @EndUserText.label: 'Vendor Type Text'
      vendortypetext as VendorTypeText
}
