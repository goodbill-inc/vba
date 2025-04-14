# Vba::ClaimDetailDeduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **claim_seq** | **String** |  |  |
| **adjustment_seq** | **String** |  |  |
| **deduction_seq** | **Integer** |  |  |
| **case_number** | **String** |  | [optional] |
| **deduction_amount** | **Float** |  | [optional] |
| **deduction_applied** | **Float** |  | [optional] |
| **deduction_pct** | **Boolean** |  |  |
| **deduction_type** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **pre_gross** | **Boolean** |  |  |
| **pre_tax** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDetailDeduction.new(
  batch_number: null,
  batch_claim: null,
  claim_seq: null,
  adjustment_seq: null,
  deduction_seq: null,
  case_number: null,
  deduction_amount: null,
  deduction_applied: null,
  deduction_pct: null,
  deduction_type: null,
  entry_date: null,
  entry_user: null,
  pre_gross: null,
  pre_tax: null,
  update_date: null,
  update_user: null
)
```

