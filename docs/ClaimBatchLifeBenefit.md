# Vba::ClaimBatchLifeBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **benefit_code** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchLifeBenefit.new(
  batch_number: null,
  benefit_code: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  volume: null
)
```

