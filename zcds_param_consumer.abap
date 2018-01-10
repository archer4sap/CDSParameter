*&---------------------------------------------------------------------*
*& Report zcds_param_consumer
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_param_consumer.

SELECT *
    FROM zcds_param( part_number = '000000001000001234' )
    INTO TABLE @DATA(lt_material).
IF sy-subrc IS INITIAL .
  WRITE : 'Meterial Exists!'.
ENDIF.
