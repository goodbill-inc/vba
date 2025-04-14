# Vba::ProviderRateAdjust

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_rate_adjust_key** | **Integer** | References the ProviderRate.ProviderRate_Key value on the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjust_pct** | **Float** | Desired adjustment percentage. | [optional] |
| **adjust_repeat** | **Integer** | Number of times the adjustment can be repeated before progressing to the next sequence. | [optional] |
| **adjust_rule** | **String** | This indicates if a special rule option is being implemented during rate calculation. This is defined between the client and VBA to determine the custom process. | [optional] |
| **adjust_seq** | **Integer** | Unique sequential identifier. Adjustments will be applied in sequential order. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **provider_rate_key** | **Integer** | Unique identifier for this Rate Adjustments configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderRateAdjust.new(
  provider_rate_adjust_key: null,
  adjust_pct: null,
  adjust_repeat: null,
  adjust_rule: null,
  adjust_seq: null,
  entry_date: null,
  entry_user: null,
  provider_rate_key: null,
  update_date: null,
  update_user: null
)
```

