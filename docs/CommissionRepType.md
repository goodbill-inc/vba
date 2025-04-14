# Vba::CommissionRepType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rep_type** | **String** | Unique identifier for Rep Type |  |
| **description** | **String** | Description of the Rep Type | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **first_year_account** | **String** | Informational | [optional] |
| **renewal_account** | **String** | Informational | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRepType.new(
  rep_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  first_year_account: null,
  renewal_account: null,
  update_date: null,
  update_user: null
)
```

