# Vba::CostContainZelisClaimDetailReprice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **claim_seq** | **String** |  |  |
| **adjustment_seq** | **String** |  |  |
| **amount_due** | **Float** |  | [optional] |
| **applied_service** | **String** |  | [optional] |
| **edit_code** | **String** |  | [optional] |
| **edit_description** | **String** |  | [optional] |
| **rand_c** | **Float** |  | [optional] |
| **savings** | **Float** |  | [optional] |
| **zelis_fees** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CostContainZelisClaimDetailReprice.new(
  batch_number: null,
  batch_claim: null,
  claim_seq: null,
  adjustment_seq: null,
  amount_due: null,
  applied_service: null,
  edit_code: null,
  edit_description: null,
  rand_c: null,
  savings: null,
  zelis_fees: null
)
```

