# Vba::TemplateGroupConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **eff_date** | **Time** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **spec_incurred_from** | **Time** |  | [optional] |
| **spec_incurred_thru** | **Time** |  | [optional] |
| **spec_paid_from** | **Time** |  | [optional] |
| **spec_paid_thru** | **Time** |  | [optional] |
| **agg_incurred_from** | **Time** |  | [optional] |
| **agg_incurred_thru** | **Time** |  | [optional] |
| **agg_paid_from** | **Time** |  | [optional] |
| **agg_paid_thru** | **Time** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TemplateGroupConfig.new(
  group_id: null,
  eff_date: null,
  term_date: null,
  spec_incurred_from: null,
  spec_incurred_thru: null,
  spec_paid_from: null,
  spec_paid_thru: null,
  agg_incurred_from: null,
  agg_incurred_thru: null,
  agg_paid_from: null,
  agg_paid_thru: null
)
```

