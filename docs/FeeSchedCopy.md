# Vba::FeeSchedCopy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **old_fee_sched** | **String** |  | [optional] |
| **new_fee_sched** | **String** |  | [optional] |
| **old_eff_date** | **Time** |  | [optional] |
| **new_eff_date** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **percent_change** | **Float** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedCopy.new(
  old_fee_sched: null,
  new_fee_sched: null,
  old_eff_date: null,
  new_eff_date: null,
  description: null,
  percent_change: null,
  user_id: null
)
```

