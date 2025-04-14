# Vba::ClaimDisabilityDeduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **case_number** | **String** |  | [optional] |
| **deduction_amount** | **Float** |  | [optional] |
| **deduction_pct** | **Boolean** |  |  |
| **deduction_type** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **pre_gross** | **Boolean** |  |  |
| **pre_tax** | **Boolean** |  |  |
| **provider_id** | **String** |  | [optional] |
| **third_party_payment** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDisabilityDeduction.new(
  batch_number: null,
  case_number: null,
  deduction_amount: null,
  deduction_pct: null,
  deduction_type: null,
  entry_date: null,
  entry_user: null,
  pre_gross: null,
  pre_tax: null,
  provider_id: null,
  third_party_payment: null,
  update_date: null,
  update_user: null
)
```

