# Vba::ProviderNetworkModifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | Identifier of the Proivider record. |  |
| **network_id** | **String** | Indicates which Network the options will be associated with. |  |
| **modifier** | **String** | This is the modifier assigned to this configuration. When blank it indicates all modifiers. |  |
| **effective_date** | **Time** | Date when the associated modifier becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **fee_percent** | **Float** | Fee percentage that will be applied with the modifier. Negative values may be used to apply discounts. | [optional] |
| **term_date** | **Time** | Date when the associated modifier expires/expired. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderNetworkModifier.new(
  provider_id: null,
  network_id: null,
  modifier: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

