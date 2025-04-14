# Vba::ArmorCodeExCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **armor_code_ex_code_key** | **Integer** | Unique identifier for each record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **armor_code** | **String** | Armor Code From Value to be matched with an Explanation Code. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Explanation Code Value to be matched with an Armor Code Range. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ArmorCodeExCode.new(
  armor_code_ex_code_key: null,
  armor_code: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  update_date: null,
  update_user: null
)
```

