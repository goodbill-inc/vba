# Vba::FeeSched

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched** | **String** | Unique name given to the Fee Scheudle. |  |
| **always_use_schedule** | **String** | This field is currently informational only. | [optional] |
| **description** | **String** | A short description of the associated Fee Schedule. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **ex_code** | **String** | Indicates the Ex Code that will be applied to any claim that has been repriced by this ‘Fee Schedule Fee’. | [optional] |
| **process_adj_disc_by_amount** | **Boolean** | Indicates Adjustment and Discount information will be processed based on amount highest to lowest rather than detail line. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSched.new(
  fee_sched: null,
  always_use_schedule: null,
  description: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  process_adj_disc_by_amount: null,
  update_date: null,
  update_user: null
)
```

