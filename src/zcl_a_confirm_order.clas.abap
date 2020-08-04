CLASS zcl_a_confirm_order DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_action~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_a_confirm_order IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.
    " Typed with node's combined table type
    DATA(lt_work_order) = VALUE ztibo_workorder( ).

    " READING BO data ----------------------------------------------

    " Retrieve the data of the requested node instance
    io_read->retrieve(
      EXPORTING
        iv_node         = is_ctx-node_key
        it_key          = it_key
      IMPORTING
        et_data         = lt_work_order
    ).

    " WRITING BO data ---------------------------------------------

    LOOP AT lt_work_order ASSIGNING FIELD-SYMBOL(<s_work_order>).

      " Set the attribue billing_status to new value
      <s_work_order>-astnr = 'CNF'.  " PAID


      " Update the changed data (billig_status) of the node instance
      io_modify->update(
        EXPORTING
          iv_node               = is_ctx-node_key
          iv_key                = <s_work_order>-key
          iv_root_key           = <s_work_order>-root_key
          is_data               = REF #( <s_work_order>-node_data )
          it_changed_fields     = VALUE #(
            ( zif_i_bo_workorder_c=>sc_node_attribute-z_i_bo_workorder-astnr )

          )
        ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
