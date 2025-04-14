# Vba::CostContainZelisClaimReprice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **amount_due** | **Float** |  | [optional] |
| **applied_service** | **String** |  | [optional] |
| **custom_eop_language** | **String** |  | [optional] |
| **due_date_from** | **Time** |  | [optional] |
| **due_date_to** | **Time** |  | [optional] |
| **eop_language_code** | **String** |  | [optional] |
| **savings** | **Float** |  | [optional] |
| **transaction_id** | **String** |  |  |
| **zelis_claim_id** | **Integer** |  | [optional] |
| **zelis_fees** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CostContainZelisClaimReprice.new(
  batch_number: null,
  batch_claim: null,
  amount_due: null,
  applied_service: null,
  custom_eop_language: null,
  due_date_from: null,
  due_date_to: null,
  eop_language_code: null,
  savings: null,
  transaction_id: null,
  zelis_claim_id: null,
  zelis_fees: null
)
```

