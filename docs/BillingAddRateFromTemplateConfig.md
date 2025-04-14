# Vba::BillingAddRateFromTemplateConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Populate the Group ID that will be set on the newly created rate.  This is required. | [optional] |
| **division_id** | **String** | Populate the Division ID that will be set on the newly created rate.  This is optional. | [optional] |
| **prem_rate_type** | **String** | Popluate the Rate Type on the new rate if different than the Template Rate.  This is optional. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingAddRateFromTemplateConfig.new(
  group_id: null,
  division_id: null,
  prem_rate_type: null
)
```

