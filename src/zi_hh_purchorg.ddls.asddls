@EndUserText.label: 'Purchase Organization'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: ['PurchasingOrganization']
@ObjectModel.representativeKey: 'PurchasingOrganization'
define view entity zi_hh_purchorg
  as select from zhh_purchorg
{
      @ObjectModel.text.element: [ 'Description' ]
  key purchasingorganization as PurchasingOrganization,

      @Semantics.text: true
      @Semantics.name.fullName: true
      description            as Description,

      @Semantics: {
      eMail.address: true,
      eMail.type:  [ #WORK ]
      }
      emailaddress           as Email,
      @Semantics.telephone.type:  [ #WORK ]
      phonenumber            as Phone,
      @Semantics.telephone.type:  [ #FAX ]
      faxnumber              as Fax
}
