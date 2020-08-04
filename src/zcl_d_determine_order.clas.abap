CLASS zcl_d_determine_order DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_d_supercl_simple
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.

  METHODS /bobf/if_frw_determination~execute
    REDEFINITION .
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.



CLASS zcl_d_determine_order IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.
  "Find the highest used sales order number in both active and draft data

    WITH +both AS ( SELECT workorder FROM zwork_orders   "active data
        UNION ALL
        SELECT workorder  FROM zdwork_orders )          "draft data
    SELECT SINGLE
        FROM +both
        FIELDS MAX( workorder ) AS workorder
        INTO @DATA(lv_max_workorder).

    "If there are no entries, set a start value
    IF lv_max_workorder IS INITIAL.
        lv_max_workorder = '10000'.
    ENDIF.

    "Read data with the given keys
    DATA lt_data type ztibo_workorder3.

    io_read->retrieve(
        EXPORTING
            iv_node                 = is_ctx-node_key   " uuid of node name
            it_key                  = it_key            " keys given to the determination
        IMPORTING
            eo_message              = eo_message        " pass message object
            et_data                 = lt_data           " itab with node data
            et_failed_key           = et_failed_key     " pass failures
    ).


    "Assign numbers to each newly created line and tell BOPF about the modification
    LOOP AT lt_data REFERENCE INTO DATA(lr_data).
      IF lr_data->workorder IS INITIAL.
        ADD 1 TO lv_max_workorder.
        lr_data->workorder = lv_max_workorder.

        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
                input  = lr_data->workorder
            IMPORTING
                output = lr_data->workorder.

        io_modify->update(
          EXPORTING
            iv_node           = is_ctx-node_key    " uuid of node
            iv_key            = lr_data->key    " key of line
            is_data           = lr_data            " ref to modified data
            it_changed_fields = VALUE #( ( zif_i_bo_workorder_c=>sc_node_attribute-z_i_bo_workorder-workorder ) )
        ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
