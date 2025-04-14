# Vba::Modifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **modifier_code** | **String** | Code identifying the procedure code modifier |  |
| **effective_date** | **Time** | Date the modifier becomes effective | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **fee_percent** | **Float** | Percentage used when the modifier is applied | [optional] |
| **modifier_description** | **String** | Description of the procedure code modifier | [optional] |
| **term_date** | **Time** | Date the modifier terminates | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Modifier.new(
  modifier_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  modifier_description: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

