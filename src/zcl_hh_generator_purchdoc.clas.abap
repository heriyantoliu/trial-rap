CLASS zcl_hh_generator_purchdoc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      reset_table_content,
      generate_vendor_type,
      generate_purch_org,
      generate_priority,
      generate_status,
      generate_purch_doc,
      generate_purch_doc_item,
      generate_xfeld_domain,
      get_timestamp
        RETURNING VALUE(re_timestamp) TYPE timestampl.
ENDCLASS.



CLASS zcl_hh_generator_purchdoc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Reset Table Content' ).
    me->reset_table_content( ).
    out->write( 'Starting Data Generation ' ).
    out->write( 'Generate Vendor Type : ZHH_PURCHVNDRTYP' ).
    me->generate_vendor_type( ).
    out->write( 'Generate Purchase Organization : ZHH_PURCHORG' ).
    me->generate_purch_org( ).
    out->write( 'Generate Purchase Document Status : ZHH_PURCHDOCSTS' ).
    me->generate_status( ).
    out->write( 'Generate Purchase Document Priority : ZHH_PURCHDOCPRIO' ).
    me->generate_priority( ).
    out->write( 'Generate Purchase Document : ZHH_PURCHDOC' ).
    me->generate_purch_doc( ).
    out->write( 'Generate Purchase Document Item : ZHH_PURCHDOCITEM' ).
    me->generate_purch_doc_item( ).
    out->write( 'Generate Domain : XFELD' ).
    me->generate_xfeld_domain( ).

  ENDMETHOD.
  METHOD generate_priority.
    DATA: lt_priority TYPE TABLE OF zhh_purchdocprio.

    lt_priority = VALUE #(
      ( priority = '1' prioritytext = 'HIGH' )
      ( priority = '2' prioritytext = 'MEDIUM' )
      ( priority = '3' prioritytext = 'LOW' )
    ).

    INSERT zhh_purchdocprio FROM TABLE @lt_priority.
  ENDMETHOD.

  METHOD generate_purch_doc.
    DATA: lt_purch_doc TYPE TABLE OF zhh_purchdoc.

    GET TIME STAMP FIELD DATA(lv_timestamp).

    lt_purch_doc = VALUE #(
      ( purchasedocument = '1000000001'
        description = 'PO No 1'
        status = '1'
        priority = '2'
        purchasingorganization = 'PO04'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02'
      )
      ( purchasedocument = '1000000002'
        description = 'PO No 2'
        status = '2'
        priority = '2'
        purchasingorganization = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02'
      )
      ( purchasedocument = '1000000003'
        description = 'PO No 3'
        status = '2'
        priority = '1'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04'
      )
      ( purchasedocument = '1000000004'
        description = 'PO No 4'
        status = '1'
        priority = '1'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05'
      )
      ( purchasedocument = '1000000005'
        description = 'PO No 5'
        status = '1'
        priority = '1'
        purchasingorganization = 'PO03'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05'
      )
      ( purchasedocument = '1000000006'
        description = 'PO No 6'
        status = '3'
        priority = '2'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03'
      )
      ( purchasedocument = '1000000007'
        description = 'PO No 7'
        status = '3'
        priority = '3'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02'
      )
      ( purchasedocument = '1000000008'
        description = 'PO No 8'
        status = '3'
        priority = '2'
        purchasingorganization = 'PO02'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03'
      )
      ( purchasedocument = '1000000009'
        description = 'PO No 9'
        status = '1'
        priority = '3'
        purchasingorganization = 'PO03'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01'
      )
      ( purchasedocument = '1000000010'
        description = 'PO No 10'
        status = '2'
        priority = '2'
        purchasingorganization = 'PO03'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04'
      )
      ( purchasedocument = '1000000011'
        description = 'PO No 11'
        status = '1'
        priority = '2'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01'
      )
      ( purchasedocument = '1000000012'
        description = 'PO No 12'
        status = '2'
        priority = '1'
        purchasingorganization = 'PO04'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01'
      )
      ( purchasedocument = '1000000013'
        description = 'PO No 13'
        status = '1'
        priority = '3'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05'
      )
      ( purchasedocument = '1000000014'
        description = 'PO No 14'
        status = '2'
        priority = '1'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05'
      )
      ( purchasedocument = '1000000015'
        description = 'PO No 15'
        status = '2'
        priority = '3'
        purchasingorganization = 'PO03'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03'
      )
      ( purchasedocument = '1000000016'
        description = 'PO No 16'
        status = '1'
        priority = '1'
        purchasingorganization = 'PO04'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01'
      )
      ( purchasedocument = '1000000017'
        description = 'PO No 17'
        status = '1'
        priority = '1'
        purchasingorganization = 'PO02'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01'
      )
      ( purchasedocument = '1000000018'
        description = 'PO No 18'
        status = '1'
        priority = '2'
        purchasingorganization = 'PO05'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02'
      )
      ( purchasedocument = '1000000019'
        description = 'PO No 19'
        status = '3'
        priority = '1'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05'
      )
      ( purchasedocument = '1000000020'
        description = 'PO No 20'
        status = '3'
        priority = '2'
        purchasingorganization = 'PO01'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03'
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02'
      )
    ).

    insert zhh_purchdoc from table @lt_purch_doc.
  ENDMETHOD.

  METHOD generate_purch_doc_item.
    DATA: lt_purch_doc_item TYPE TABLE OF zhh_purchdocitem.

    lt_purch_doc_item = VALUE #(
      ( purchasedocument = '1000000001'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1000
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'L  '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000002'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1500
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'EA '
        vendor = 'VDR007'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =              500
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'KG '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000004'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1000
        currency = 'USD  '
        quantity =               15
        quantityunit = 'EA '
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000005'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'ST'
        vendor = 'VDR009'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000006'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             5000
        currency = 'USD  '
        quantity =               35
        quantityunit = 'ST'
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1500
        currency = 'USD  '
        quantity =                5
        quantityunit = 'EA '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000008'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             5000
        currency = 'USD  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000009'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2500
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'L  '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000010'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =              500
        currency = 'USD  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000011'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2000
        currency = 'EUR  '
        quantity =               35
        quantityunit = 'M  '
        vendor = 'VDR003'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1000
        currency = 'USD  '
        quantity =               35
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000013'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1500
        currency = 'EUR  '
        quantity =                5
        quantityunit = 'L  '
        vendor = 'VDR010'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000014'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'ST'
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000015'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             1500
        currency = 'USD  '
        quantity =                5
        quantityunit = 'L  '
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000016'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2500
        currency = 'EUR  '
        quantity =                5
        quantityunit = 'EA '
        vendor = 'VDR010'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000017'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'L  '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000018'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2000
        currency = 'USD  '
        quantity =               35
        quantityunit = 'M  '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000019'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =             2500
        currency = 'USD  '
        quantity =                5
        quantityunit = 'M  '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000020'
        purchasedocumentitem = '10        '
        description = 'Material 10'
        price =              500
        currency = 'EUR  '
        quantity =               15
        quantityunit = 'KG '
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000001'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             2000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'L  '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000002'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             5000
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'KG '
        vendor = 'VDR007'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             2500
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'ST'
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000004'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =            10000
        currency = 'USD  '
        quantity =               35
        quantityunit = 'M  '
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000005'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =            10000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR009'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000006'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             2500
        currency = 'USD  '
        quantity =               15
        quantityunit = 'EA '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =              500
        currency = 'USD  '
        quantity =               15
        quantityunit = 'ST'
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000008'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =            10000
        currency = 'USD  '
        quantity =               10
        quantityunit = 'L  '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000009'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             1500
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000010'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             1500
        currency = 'USD  '
        quantity =               10
        quantityunit = 'KG '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             1000
        currency = 'USD  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000013'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             5000
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'M  '
        vendor = 'VDR010'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000014'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             1500
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'EA '
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000015'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =              500
        currency = 'USD  '
        quantity =               10
        quantityunit = 'KG '
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000016'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             5000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR010'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000017'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             2500
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000018'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =            10000
        currency = 'USD  '
        quantity =               35
        quantityunit = 'ST'
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000019'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =             1000
        currency = 'USD  '
        quantity =                5
        quantityunit = 'KG '
        vendor = 'VDR004'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000020'
        purchasedocumentitem = '20        '
        description = 'Material 20'
        price =            10000
        currency = 'EUR  '
        quantity =                5
        quantityunit = 'ST'
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000002'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             1500
        currency = 'EUR  '
        quantity =               35
        quantityunit = 'EA '
        vendor = 'VDR007'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             1000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000004'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =              500
        currency = 'USD  '
        quantity =               10
        quantityunit = 'L  '
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000005'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =            10000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR009'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000006'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             2000
        currency = 'USD  '
        quantity =                5
        quantityunit = 'ST'
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             2000
        currency = 'USD  '
        quantity =               15
        quantityunit = 'KG '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000008'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             5000
        currency = 'USD  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000009'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             5000
        currency = 'EUR  '
        quantity =               20
        quantityunit = 'M  '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =            10000
        currency = 'USD  '
        quantity =               15
        quantityunit = 'KG '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000014'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             1500
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'ST'
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000015'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =            10000
        currency = 'USD  '
        quantity =                5
        quantityunit = 'KG '
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000016'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             2000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'KG '
        vendor = 'VDR010'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000018'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             1500
        currency = 'USD  '
        quantity =               35
        quantityunit = 'KG '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000020'
        purchasedocumentitem = '30        '
        description = 'Material 30'
        price =             5000
        currency = 'EUR  '
        quantity =               50
        quantityunit = 'ST'
        vendor = 'VDR006'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000002'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             5000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR007'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =              500
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'EA '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000005'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =              500
        currency = 'EUR  '
        quantity =               35
        quantityunit = 'M  '
        vendor = 'VDR009'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000006'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             5000
        currency = 'USD  '
        quantity =               20
        quantityunit = 'M  '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER04      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             5000
        currency = 'USD  '
        quantity =                5
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000008'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             5000
        currency = 'USD  '
        quantity =               20
        quantityunit = 'EA '
        vendor = 'VDR005'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             2000
        currency = 'USD  '
        quantity =               20
        quantityunit = 'EA '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000015'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =             1500
        currency = 'USD  '
        quantity =               15
        quantityunit = 'ST'
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000018'
        purchasedocumentitem = '40        '
        description = 'Material 40'
        price =              500
        currency = 'USD  '
        quantity =                5
        quantityunit = 'M  '
        vendor = 'VDR008'
        vendortype = '1'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER03      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '50        '
        description = 'Material 50'
        price =             2500
        currency = 'EUR  '
        quantity =                5
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000005'
        purchasedocumentitem = '50        '
        description = 'Material 50'
        price =             1500
        currency = 'EUR  '
        quantity =               15
        quantityunit = 'L  '
        vendor = 'VDR009'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER05      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '50        '
        description = 'Material 50'
        price =              500
        currency = 'USD  '
        quantity =               35
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '50        '
        description = 'Material 50'
        price =              500
        currency = 'USD  '
        quantity =               35
        quantityunit = 'EA '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000015'
        purchasedocumentitem = '50        '
        description = 'Material 50'
        price =             1500
        currency = 'USD  '
        quantity =               10
        quantityunit = 'M  '
        vendor = 'VDR001'
        vendortype = '2'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER03      '
      )
      ( purchasedocument = '1000000003'
        purchasedocumentitem = '60        '
        description = 'Material 60'
        price =             5000
        currency = 'EUR  '
        quantity =               10
        quantityunit = 'KG '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER05      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER04      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '60        '
        description = 'Material 60'
        price =            10000
        currency = 'USD  '
        quantity =               15
        quantityunit = 'ST'
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '60        '
        description = 'Material 60'
        price =             2000
        currency = 'USD  '
        quantity =               15
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
      ( purchasedocument = '1000000007'
        purchasedocumentitem = '70        '
        description = 'Material 70'
        price =              500
        currency = 'USD  '
        quantity =               50
        quantityunit = 'L  '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER02      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER02      '
      )
      ( purchasedocument = '1000000012'
        purchasedocumentitem = '70        '
        description = 'Material 70'
        price =             2500
        currency = 'USD  '
        quantity =               35
        quantityunit = 'EA '
        vendor = 'VDR002'
        vendortype = '3'
        crea_date_time = get_timestamp( )
        crea_uname = 'USER01      '
        lchg_date_time = get_timestamp( )
        lchg_uname = 'USER01      '
      )
    ).

    insert zhh_purchdocitem from table @lt_purch_doc_item.
  ENDMETHOD.

  METHOD generate_purch_org.
    DATA: lt_purchorg TYPE TABLE OF zhh_purchorg.
    lt_purchorg = VALUE #(
      ( purchasingorganization = 'P01' description = 'Purch Org 01' emailaddress = 'purchorg01@example.com' )
      ( purchasingorganization = 'P02' description = 'Purch Org 02' emailaddress = 'purchorg02@example.com' )
      ( purchasingorganization = 'P03' description = 'Purch Org 03' emailaddress = 'purchorg03@example.com' )
      ( purchasingorganization = 'P04' description = 'Purch Org 04' emailaddress = 'purchorg04@example.com' )
      ( purchasingorganization = 'P05' description = 'Purch Org 05' emailaddress = 'purchorg05@example.com' )
    ).
    INSERT zhh_purchorg FROM TABLE @lt_purchorg.
  ENDMETHOD.

  METHOD generate_status.
    DATA: lt_status TYPE TABLE OF zhh_purchdocsts.
    lt_status = VALUE #(
      ( status = '1' statustext = 'Created' )
      ( status = '2' statustext = 'Approved' )
      ( status = '3' statustext = 'Closed' )
    ).
    INSERT zhh_purchdocsts FROM TABLE @lt_status.
  ENDMETHOD.

  METHOD generate_vendor_type.
    DATA: lt_vendor_type TYPE TABLE OF zhh_purchvndrtyp.
    lt_vendor_type = VALUE #(
      ( vendortype = '1' vendortypetext = 'Internal' )
      ( vendortype = '2' vendortypetext = 'External' )
      ( vendortype = '3' vendortypetext = 'Partner' )
    ).
    INSERT zhh_purchvndrtyp FROM TABLE @lt_vendor_type.
  ENDMETHOD.

  METHOD reset_table_content.
    DELETE FROM:
      zhh_purchvndrtyp,
      zhh_purchorg,
      zhh_purchdocsts,
      zhh_purchdoc,
      zhh_purchdocprio,
      zhh_purchdocitem.
  ENDMETHOD.

  METHOD get_timestamp.
    GET TIME STAMP FIELD re_timestamp.
  ENDMETHOD.

  METHOD generate_xfeld_domain.
    data: lt_dd07l type table of zhh_dd07l,
          lt_dd07t type table of zhh_dd07t.

    lt_dd07l = value #( domname = 'XFELD' as4local = 'A'
      ( valpos = '1' domvalue_l = 'X' )
      ( valpos = '2' domvalue_l = '' )
    ).
    lt_dd07t = value #( domname = 'XFELD' as4local = 'A' ddlanguage = sy-langu
      ( valpos = '1' ddtext = 'Yes' )
      ( valpos = '2' ddtext = 'No' )
    ).

    insert zhh_dd07l from table @lt_dd07l.
    insert zhh_dd07t from table @lt_dd07t.
  ENDMETHOD.

ENDCLASS.
