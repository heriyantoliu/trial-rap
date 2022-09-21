@EndUserText.label: 'Purchase Document Priority'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'Priority'
@ObjectModel.semanticKey: ['Priority']
@ObjectModel.resultSet.sizeCategory: #XS
define view entity zi_hh_popriority
  as select from zhh_purchdocprio
{
      @ObjectModel.text.element: ['PriorityText']
      @EndUserText.label: 'Priority'
  key priority     as Priority,

      @Semantics.text: true
      @EndUserText.label: 'Priority Text'
      prioritytext as PriorityText
}
