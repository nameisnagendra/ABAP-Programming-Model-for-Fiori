interface ZIF_I_BO_WORKORDER3_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF Z_I_BO_WORKORDER,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2197F',
 CREATE_Z_I_BO_WORKORDER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAE797F',
 DELETE_Z_I_BO_WORKORDER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAEF97F',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB1F97F',
 LOCK_Z_I_BO_WORKORDER          TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBADB97F',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2597F',
 SAVE_Z_I_BO_WORKORDER          TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAF797F',
 UNLOCK_Z_I_BO_WORKORDER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBADF97F',
 UPDATE_Z_I_BO_WORKORDER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAEB97F',
 VALIDATE_Z_I_BO_WORKORDER      TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAF397F',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2397F',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
 CREATE_Z_I_OB_OPERATIONS       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED7C5512F97F',
 DELETE_Z_I_OB_OPERATIONS       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED7C5513797F',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB4597F',
 SAVE_Z_I_OB_OPERATIONS         TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED7C5513F97F',
 UPDATE_Z_I_OB_OPERATIONS       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED7C5513397F',
 VALIDATE_Z_I_OB_OPERATIONS     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED7C5513B97F',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB4397F',
      END OF Z_I_OB_OPERATIONS,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF Z_I_BO_WORKORDER,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_Z_I_BO_WORKORDER,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_Z_I_BO_WORKORDER,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_Z_I_BO_WORKORDER,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_Z_I_BO_WORKORDER,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF Z_I_BO_WORKORDER,
        BEGIN OF Z_I_OB_OPERATIONS,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF Z_I_OB_OPERATIONS,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF Z_I_BO_WORKORDER,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB1B97F',
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB1D97F',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3B97F',
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3D97F',
 PARENT_KEY                     TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3F97F',
 ROOT_KEY                       TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB4197F',
      END OF Z_I_OB_OPERATIONS,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF Z_I_BO_WORKORDER,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAD997F',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAD597F',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAE597F',
 _OPERATIONS                    TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5511797F',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_BO_WORKORDER_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAFD97F',
      END OF Z_I_BO_WORKORDER_LOCK,
      BEGIN OF Z_I_BO_WORKORDER_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAFB97F',
      END OF Z_I_BO_WORKORDER_MESSAGE,
      BEGIN OF Z_I_BO_WORKORDER_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAFF97F',
      END OF Z_I_BO_WORKORDER_PROPERTY,
      BEGIN OF Z_I_OB_OPERATIONS,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5512997F',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5512D97F',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5514397F',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5514597F',
      END OF Z_I_OB_OPERATIONS,
      BEGIN OF Z_I_OB_OPERATIONS_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5514797F',
      END OF Z_I_OB_OPERATIONS_MESSAGE,
      BEGIN OF Z_I_OB_OPERATIONS_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5C5ED7C5514997F',
      END OF Z_I_OB_OPERATIONS_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF Z_I_BO_WORKORDER,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF Z_I_OB_OPERATIONS,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056B1212D1EDAB5C5ED5ADBACB97F' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'Z_I_BO_WORKORDER' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF Z_I_BO_WORKORDER,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2797F',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2997F',
 DELETE_DRAFT_WHN_ACTIVE_DELETE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3797F',
 DETERMINE_ORDER                TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5FB0310AD79F1',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3597F',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3397F',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3197F',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2B97F',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2F97F',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB2D97F',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED7C54FFD97F',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED7C5500197F',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5C5ED7C54FFF97F',
      END OF Z_I_OB_OPERATIONS,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB0397F',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 Z_I_BO_WORKORDER               TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED5ADBACF97F',
 Z_I_BO_WORKORDER_LOCK          TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAD797F',
 Z_I_BO_WORKORDER_MESSAGE       TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAD397F',
 Z_I_BO_WORKORDER_PROPERTY      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAE397F',
 Z_I_OB_OPERATIONS              TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB0997F',
 Z_I_OB_OPERATIONS_MESSAGE      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED7C5512797F',
 Z_I_OB_OPERATIONS_PROPERTY     TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5C5ED7C5512B97F',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF Z_I_BO_WORKORDER,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  WORKORDER                      TYPE STRING VALUE 'WORKORDER',
  EQUNR                          TYPE STRING VALUE 'EQUNR',
  AUART                          TYPE STRING VALUE 'AUART',
  ERNAM                          TYPE STRING VALUE 'ERNAM',
  ERDAT                          TYPE STRING VALUE 'ERDAT',
  AENAM                          TYPE STRING VALUE 'AENAM',
  KTEXT                          TYPE STRING VALUE 'KTEXT',
  BUKRS                          TYPE STRING VALUE 'BUKRS',
  WERKS                          TYPE STRING VALUE 'WERKS',
  ASTNR                          TYPE STRING VALUE 'ASTNR',
  PL_COST                        TYPE STRING VALUE 'PL_COST',
  ACT_COST                       TYPE STRING VALUE 'ACT_COST',
  CURRENCY                       TYPE STRING VALUE 'CURRENCY',
  STATUS_CRITICAL                TYPE STRING VALUE 'STATUS_CRITICAL',
  LAST_CHANGED                   TYPE STRING VALUE 'LAST_CHANGED',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  WORKORDER                      TYPE STRING VALUE 'WORKORDER',
  ACTIVITY                       TYPE STRING VALUE 'ACTIVITY',
  DESCRIPTION                    TYPE STRING VALUE 'DESCRIPTION',
  ACT_WORK                       TYPE STRING VALUE 'ACT_WORK',
  PL_WORK                        TYPE STRING VALUE 'PL_WORK',
  UNIT                           TYPE STRING VALUE 'UNIT',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF Z_I_OB_OPERATIONS,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF Z_I_BO_WORKORDER,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5C5ED5ADBAD197F',
      END OF Z_I_BO_WORKORDER,
      BEGIN OF Z_I_OB_OPERATIONS,
 Z_I_OB_OPERATIONS              TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5C5ED7C5511597F',
      END OF Z_I_OB_OPERATIONS,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF Z_I_BO_WORKORDER,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB0197F',
      END OF Z_I_BO_WORKORDER,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF Z_I_BO_WORKORDER,
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5C5ED5ADBB3997F',
      END OF Z_I_BO_WORKORDER,
    END OF SC_VALIDATION .
endinterface.
