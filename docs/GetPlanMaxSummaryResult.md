# Vba::GetPlanMaxSummaryResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **as_of_date** | **Time** |  | [optional] |
| **amount_met** | **Float** |  | [optional] |
| **visits_met** | **Integer** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **benefit_code** | **String** |  | [optional] |
| **max_id** | **String** |  | [optional] |
| **max_type** | **String** |  | [optional] |
| **max_type_net** | **String** |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **max_per** | **String** |  | [optional] |
| **frequency** | **Integer** |  | [optional] |
| **from_procedure** | **String** |  | [optional] |
| **thru_procedure** | **String** |  | [optional] |
| **max_from** | **Time** |  | [optional] |
| **max_thru** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetPlanMaxSummaryResult.new(
  as_of_date: null,
  amount_met: null,
  visits_met: null,
  plan_id: null,
  benefit_code: null,
  max_id: null,
  max_type: null,
  max_type_net: null,
  quantity: null,
  max_per: null,
  frequency: null,
  from_procedure: null,
  thru_procedure: null,
  max_from: null,
  max_thru: null
)
```

