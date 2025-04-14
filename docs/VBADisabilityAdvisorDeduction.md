# Vba::VBADisabilityAdvisorDeduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deduction_type** | **String** | This is the deduction to be applied, this must be a valid value from the DeductionType table. | [optional] |
| **deduction_pct** | **Boolean** | This indicates if the value in DeductionAmount is a Pct deduction. | [optional] |
| **deduction_amount** | **Float** | This is the amount of the Deduction.  If DeductionPct is true, then this value must be between 0 - 100. | [optional] |
| **case_number** | **String** | This is the Case Number for the deduction.  Information only. | [optional] |
| **third_party_payment** | **Boolean** | This indicates if the deduction should spawn a 3rd party payment which is a separate Professional claim for the deduction. | [optional] |
| **provider_id** | **String** | When ThirdPartyPayment is true, this is the ProviderID for the 3rd party payment. | [optional] |
| **pre_tax** | **Boolean** | This indicates if the deduction should be applied before taxes are calculated. | [optional] |
| **pre_gross** | **Boolean** | This indicates if the deduction should be applied before the gross amount is calculated. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBADisabilityAdvisorDeduction.new(
  deduction_type: null,
  deduction_pct: null,
  deduction_amount: null,
  case_number: null,
  third_party_payment: null,
  provider_id: null,
  pre_tax: null,
  pre_gross: null
)
```

