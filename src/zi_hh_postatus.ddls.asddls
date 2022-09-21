@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Purchase Document Status'
@ObjectModel.representativeKey: 'Status'
@ObjectModel.semanticKey: ['Status']
@Analytics.dataCategory: #DIMENSION
@ObjectModel.resultSet.sizeCategory: #XS

define view entity zi_hh_postatus
  as select from zhh_purchdocsts
{

      @ObjectModel.text.element: ['StatusText']
      @EndUserText.label: 'Status'
  key status     as Status,

      @Semantics.text: true
      @EndUserText.label: 'Status Text'
      statustext as StatusText
}
