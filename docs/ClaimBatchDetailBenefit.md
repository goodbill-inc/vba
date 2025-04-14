# Vba::ClaimBatchDetailBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **claim_seq** | **String** |  |  |
| **adjustment_seq** | **String** |  |  |
| **benefit_code** | **String** |  |  |
| **override** | **Boolean** |  |  |
| **override_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchDetailBenefit.new(
  batch_number: null,
  batch_claim: null,
  claim_seq: null,
  adjustment_seq: null,
  benefit_code: null,
  override: null,
  override_user: null
)
```

