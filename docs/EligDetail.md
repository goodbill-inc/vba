# Vba::EligDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **group_date_enrolled** | **Time** |  | [optional] |
| **group_disenroll_date** | **Time** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **division_date_enrolled** | **Time** |  | [optional] |
| **division_disenroll_date** | **Time** |  | [optional] |
| **division_name** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **plan_description** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **tier_description** | **String** |  | [optional] |
| **plan_start** | **Time** |  | [optional] |
| **plan_end** | **Time** |  | [optional] |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EligDetail.new(
  group_id: null,
  group_name: null,
  group_date_enrolled: null,
  group_disenroll_date: null,
  division_id: null,
  division_date_enrolled: null,
  division_disenroll_date: null,
  division_name: null,
  plan_id: null,
  plan_description: null,
  start_date: null,
  tier_description: null,
  plan_start: null,
  plan_end: null,
  volume: null
)
```

