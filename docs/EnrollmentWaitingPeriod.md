# Vba::EnrollmentWaitingPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrollment_waiting_period_key** | **Integer** |  |  |
| **division_id** | **String** |  | [optional] |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **include_hire_date** | **Boolean** |  |  |
| **plan_id** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **waiting_period** | **Integer** |  | [optional] |
| **waiting_period_type** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentWaitingPeriod.new(
  enrollment_waiting_period_key: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  include_hire_date: null,
  plan_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  waiting_period: null,
  waiting_period_type: null
)
```

