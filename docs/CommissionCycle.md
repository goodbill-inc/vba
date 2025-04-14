# Vba::CommissionCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_cycle** | **String** | Unique identifier for the Commission Cycle |  |
| **cycle_frequency** | **Integer** | Fequency of the Cycle | [optional] |
| **cycle_type** | **String** | Type of the Cycle | [optional] |
| **description** | **String** | Description of the Commission Cycle | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionCycle.new(
  commission_cycle: null,
  cycle_frequency: null,
  cycle_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

