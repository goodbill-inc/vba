# Vba::AuthReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_auth_number** | **String** | This is the Auth Number being referenced by Referenced Auth Number |  |
| **referenced_auth_number** | **String** | This is the Auth Number being referenced by Original Auth Number |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **reference_date** | **Time** | The date this reference was processed by the system. | [optional] |
| **reference_type** | **String** | This indicates the type of Reference being made. The only Reference_Type value currently in use is \&quot;A\&quot; for \&quot;Adjustment\&quot;. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthReference.new(
  original_auth_number: null,
  referenced_auth_number: null,
  entry_date: null,
  entry_user: null,
  reference_date: null,
  reference_type: null,
  update_date: null,
  update_user: null
)
```

