CLASS lhc_zi_hh_poheader_u DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_hh_poheader_u RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_hh_poheader_u.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_hh_poheader_u.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_hh_poheader_u.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_hh_poheader_u RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_hh_poheader_u.

    METHODS rba_Purchasedocumentitem FOR READ
      IMPORTING keys_rba FOR READ zi_hh_poheader_u\_Purchasedocumentitem FULL result_requested RESULT result LINK association_links.

    METHODS cba_Purchasedocumentitem FOR MODIFY
      IMPORTING entities_cba FOR CREATE zi_hh_poheader_u\_Purchasedocumentitem.

    METHODS Approve_Order FOR MODIFY
      IMPORTING keys FOR ACTION zi_hh_poheader_u~Approve_Order RESULT result.

    METHODS Reject_Order FOR MODIFY
      IMPORTING keys FOR ACTION zi_hh_poheader_u~Reject_Order RESULT result.

ENDCLASS.

CLASS lhc_zi_hh_poheader_u IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Purchasedocumentitem.
  ENDMETHOD.

  METHOD cba_Purchasedocumentitem.
  ENDMETHOD.

  METHOD Approve_Order.
  ENDMETHOD.

  METHOD Reject_Order.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zi_hh_poitem_u DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_hh_poitem_u.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_hh_poitem_u.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_hh_poitem_u RESULT result.

    METHODS rba_Purchasedocument FOR READ
      IMPORTING keys_rba FOR READ zi_hh_poitem_u\_Purchasedocument FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_zi_hh_poitem_u IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Purchasedocument.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_HH_POHEADER_U DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_HH_POHEADER_U IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
