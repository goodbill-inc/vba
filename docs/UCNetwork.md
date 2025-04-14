# Vba::UCNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID that the Usual and Customary Network applies to |  |
| **division_id** | **String** | Division ID that the Usual and Customary Network applies to |  |
| **plan_id** | **String** | Plan ID that the Usual and Customary Network applies to |  |
| **state** | **String** | State that the Usual and Customary Network applies to |  |
| **fee_sched** | **String** | Fee Schedule that is used for the Usual and Customary Network |  |
| **end_date** | **Time** | Date the Usual and Customary Network terminates | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **start_date** | **Time** | Date that the Usual and Customary Network becomes effective | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UCNetwork.new(
  group_id: null,
  division_id: null,
  plan_id: null,
  state: null,
  fee_sched: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  start_date: null,
  update_date: null,
  update_user: null
)
```

