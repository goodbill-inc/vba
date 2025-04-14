# Vba::CommissionGenerate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_date_type** | **String** |  | [optional] |
| **commission_date** | **Time** |  | [optional] |
| **received_thru** | **Time** |  | [optional] |
| **billed_thru** | **Time** |  | [optional] |
| **commission_run_by_option** | **Integer** |  | [optional] |
| **payment_interval** | **String** |  | [optional] |
| **current_only** | **Boolean** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **machine_id** | **String** |  | [optional] |
| **reps** | **Array&lt;Integer&gt;** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionGenerate.new(
  commission_date_type: null,
  commission_date: null,
  received_thru: null,
  billed_thru: null,
  commission_run_by_option: null,
  payment_interval: null,
  current_only: null,
  user_id: null,
  machine_id: null,
  reps: null,
  groups: null
)
```

