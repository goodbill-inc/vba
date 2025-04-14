# Vba::GetPremDistributionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **payor_name** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **last_distribution_date** | **Time** |  | [optional] |
| **distribution_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GetPremDistributionListResult.new(
  selected: null,
  group_id: null,
  payor_id: null,
  account_key: null,
  group_name: null,
  payor_name: null,
  account_name: null,
  last_distribution_date: null,
  distribution_amount: null
)
```

