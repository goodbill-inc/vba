# Vba::ReinsContractCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_cycle** | **String** | Unique identifier for each Contract Cycle. |  |
| **cycle_frequency** | **Integer** | The frequency for this reinsurance cycle based on Cycle_Type. | [optional] |
| **cycle_type** | **String** | In combination with Cycle_Frequency, dertermines the reinsurance cycle. | [optional] |
| **description** | **String** | The description for this cycle. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractCycle.new(
  contract_cycle: null,
  cycle_frequency: null,
  cycle_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

