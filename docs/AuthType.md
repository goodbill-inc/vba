# Vba::AuthType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_type** | **String** | Name of the auth type. |  |
| **default_unit_type** | **String** | Specifies the default type of unit that will be used for this auth type. This unit will automatically be used on the auth screen when the associated auth type is selected. | [optional] |
| **description** | **String** | Description of the auth type. | [optional] |
| **disable_provider_match** | **Boolean** | Checking this box will remove the requirement of a Provider match when the associated auth type is used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ignore_procedure_modifier** | **Boolean** | Checking this box will remove the requirement of procedure modifier matching when the associated auth type is used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthType.new(
  auth_type: null,
  default_unit_type: null,
  description: null,
  disable_provider_match: null,
  entry_date: null,
  entry_user: null,
  ignore_procedure_modifier: null,
  update_date: null,
  update_user: null
)
```

