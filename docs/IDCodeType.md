# Vba::IDCodeType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **i_d_code** | **String** | Identifier for a specific ID Code |  |
| **type** | **String** | Type of the ID Code |  |
| **data_type** | **String** | Data type of the data portion of the ID Code | [optional] |
| **description** | **String** | Description of the ID Code | [optional] |
| **ed_i_code** | **Boolean** | Flag indicating the ID Code is used for EDI transactions Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **format** | **String** | Format of the data portion of the ID Code | [optional] |
| **length** | **Integer** | Length of the data portion of the ID Code | [optional] |
| **system_code** | **Boolean** | Flag indicating the ID Code is part of the base application Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **type_default** | **Boolean** | This is a flag indicating an ID Code/Type combination that should be automatically populated, if not already, when opening the ID Codes screen from the appropriate area. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::IDCodeType.new(
  i_d_code: null,
  type: null,
  data_type: null,
  description: null,
  ed_i_code: null,
  entry_date: null,
  entry_user: null,
  format: null,
  length: null,
  system_code: null,
  type_default: null,
  update_date: null,
  update_user: null
)
```

