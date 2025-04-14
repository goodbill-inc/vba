# Vba::PremRateCategoryConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_rate_category** | **String** |  | [optional] |
| **prem_rate_category_description** | **String** |  | [optional] |
| **basis_configs** | [**Array&lt;PremRateBasisConfig&gt;**](PremRateBasisConfig.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRateCategoryConfig.new(
  prem_rate_category: null,
  prem_rate_category_description: null,
  basis_configs: null
)
```

