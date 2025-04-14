# Vba::IssueDurationValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_duration_value_key** | **Integer** | Key value identifying the Issue Duration Value |  |
| **description** | **String** | Description of Issue Duration - Cash Value or Reduced Paid Up | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **type** | **String** | Type of Issue Duration - CV or RPU | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::IssueDurationValue.new(
  issue_duration_value_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  type: null,
  update_date: null,
  update_user: null
)
```

