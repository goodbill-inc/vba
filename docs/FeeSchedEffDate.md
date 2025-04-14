# Vba::FeeSchedEffDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched** | **String** | Unique name given to the Fee Scheudle. |  |
| **effective_date** | **Time** | Date when the schedule will begin/began applying to claims. This date will be compared to the date of service on the claim. |  |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedEffDate.new(
  fee_sched: null,
  effective_date: null
)
```

