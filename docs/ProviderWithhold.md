# Vba::ProviderWithhold

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_withhold_key** | **Integer** | Unique identifier for each Withhold setting. |  |
| **account_key** | **Integer** | This field indicates the funding account criteria by which the withhold is applied to a claim. | [optional] |
| **benefit_code** | **String** | Benefit code required for adjudication matching. | [optional] |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the admin fee. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex code associated with the price line. | [optional] |
| **federal_id** | **String** | Allows setting the Tax ID that this withhold will apply when applying a withhold across multiple Providers. | [optional] |
| **network_id** | **String** | Identifies the required Network for adjudication matching. | [optional] |
| **payor_id** | **String** | This field indicates the payor criteria by which the withhold is applied to a claim. | [optional] |
| **provider_id** | **String** | The Provider ID this Withhold setting is being applied. | [optional] |
| **term_date** | **Time** | End of the range of acceptable service dates for the admin fee. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **withhold** | **Float** | Shows the withheld percentage. | [optional] |
| **withhold_max** | **Float** | Indicates the max Withhold that can be taken for this withhold configuration. | [optional] |
| **withhold_pct** | **Boolean** | Indicates if the Withhold value on this table is a Percentage or a Flat amount. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderWithhold.new(
  provider_withhold_key: null,
  account_key: null,
  benefit_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  federal_id: null,
  network_id: null,
  payor_id: null,
  provider_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  withhold: null,
  withhold_max: null,
  withhold_pct: null
)
```

