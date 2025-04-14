# Vba::ProviderRateCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_rate_criteria_key** | **Integer** | References. The ProviderRateCriteria.ProviderRateCriteria_Key value on the parent table. |  |
| **criteria_from** | **String** | Beginning of selected criteria range. | [optional] |
| **criteria_operator** | **String** | Defines how the ‘From’ and ‘Thru’ range is treated: inclusive, exclusive, matching, etc. | [optional] |
| **criteria_thru** | **String** | End of selected criteria range. This criterion is only used for the ‘Between’ operation. | [optional] |
| **provider_rate_column_key** | **Integer** | References the ProviderRateColumn.ProviderRateColumn_Key on the parent table. |  |
| **provider_rate_key** | **Integer** | References the ProviderRate.ProviderRate_Key value on the parent table. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderRateCriteria.new(
  provider_rate_criteria_key: null,
  criteria_from: null,
  criteria_operator: null,
  criteria_thru: null,
  provider_rate_column_key: null,
  provider_rate_key: null
)
```

