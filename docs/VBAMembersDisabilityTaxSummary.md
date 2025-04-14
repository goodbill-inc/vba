# Vba::VBAMembersDisabilityTaxSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | The total amount of disability tax. | [optional] |
| **paid** | **Float** | The amount of disability tax that has been paid. | [optional] |
| **payable** | **Float** | The amount of disability tax that is payable. | [optional] |
| **in_batch** | **Float** | The amount of disability tax in batch. | [optional] |
| **denied** | **Float** | The amount of disability tax that has been denied. | [optional] |
| **total_days** | **Float** | The total number of days for which disability benefits were claimed. | [optional] |
| **paid_days** | **Float** | The number of days for which disability benefits have been paid. | [optional] |
| **payable_days** | **Float** | The number of days for which disability benefits are payable. | [optional] |
| **in_batch_days** | **Float** | The number of days for which disability benefits are in batch. | [optional] |
| **denied_days** | **Float** | The number of days for which disability benefits have been denied. | [optional] |
| **benefit_total_amount** | **Float** | The total amount of disability benefits claimed. | [optional] |
| **benefit_paid_amount** | **Float** | The amount of disability benefits paid. | [optional] |
| **benefit_payable_amount** | **Float** | The amount of disability benefits payable. | [optional] |
| **benefit_in_batch_amount** | **Float** | The amount of disability benefits in batch. | [optional] |
| **deduction_total_amount** | **Float** | The total amount of deductions claimed for disability tax. | [optional] |
| **deduction_paid_amount** | **Float** | The amount of deductions paid for disability tax. | [optional] |
| **deduction_payable_amount** | **Float** | The amount of deductions payable for disability tax. | [optional] |
| **deduction_in_batch_amount** | **Float** | The amount of deductions in batch for disability tax. | [optional] |
| **taxable_total_amount** | **Float** | The total amount of taxable disability benefits. | [optional] |
| **taxable_paid_amount** | **Float** | The amount of taxable disability benefits paid. | [optional] |
| **taxable_payable_amount** | **Float** | The total amount of taxable benefits payable for the member&#39;s disability tax summary. | [optional] |
| **taxable_in_batch_amount** | **Float** | The total amount of taxable benefits in batch for the member&#39;s disability tax summary. | [optional] |
| **federal_tax_total_amount** | **Float** | The total federal tax amount for the member&#39;s disability tax summary. | [optional] |
| **federal_tax_paid_amount** | **Float** | The total amount of federal tax paid for the member&#39;s disability tax summary. | [optional] |
| **federal_tax_payable_amount** | **Float** | The total amount of federal tax payable for the member&#39;s disability tax summary. | [optional] |
| **federal_tax_in_batch_amount** | **Float** | The total amount of federal tax in batch for the member&#39;s disability tax summary. | [optional] |
| **soc_sec_tax_total_amount** | **Float** | The total Social Security tax amount for the member&#39;s disability tax summary. | [optional] |
| **soc_sec_tax_paid_amount** | **Float** | The total amount of Social Security tax paid for the member&#39;s disability tax summary. | [optional] |
| **soc_sec_tax_payable_amount** | **Float** | The total amount of Social Security tax payable for the member&#39;s disability tax summary. | [optional] |
| **soc_sec_tax_in_batch_amount** | **Float** | The total amount of Social Security tax in batch for the member&#39;s disability tax summary. | [optional] |
| **medicare_tax_total_amount** | **Float** | The total Medicare tax amount for the member&#39;s disability tax summary. | [optional] |
| **medicare_tax_paid_amount** | **Float** | The total amount of Medicare tax paid for the member&#39;s disability tax summary. | [optional] |
| **medicare_tax_payable_amount** | **Float** | The total amount of Medicare tax payable for the member&#39;s disability tax summary. | [optional] |
| **medicare_tax_in_batch_amount** | **Float** | The total amount of Medicare tax in batch for the member&#39;s disability tax summary. | [optional] |
| **state_tax_total_amount** | **Float** | The total state tax amount for the member&#39;s disability tax summary. | [optional] |
| **state_tax_paid_amount** | **Float** | The total amount of state tax paid for the member&#39;s disability tax summary. | [optional] |
| **state_tax_payable_amount** | **Float** | Represents the amount of state tax payable for a VBA member&#39;s disability tax summary. | [optional] |
| **state_tax_in_batch_amount** | **Float** | Represents the amount of state tax in batch for a VBA member&#39;s disability tax summary. | [optional] |
| **local_tax_total_amount** | **Float** | Represents the total amount of local tax for a VBA member&#39;s disability tax summary. | [optional] |
| **local_tax_paid_amount** | **Float** | Represents the amount of local tax paid for a VBA member&#39;s disability tax summary. | [optional] |
| **local_tax_payable_amount** | **Float** | Represents the amount of local tax payable for a VBA member&#39;s disability tax summary. | [optional] |
| **local_tax_in_batch_amount** | **Float** | Represents the amount of local tax in batch for a VBA member&#39;s disability tax summary. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAMembersDisabilityTaxSummary.new(
  total: null,
  paid: null,
  payable: null,
  in_batch: null,
  denied: null,
  total_days: null,
  paid_days: null,
  payable_days: null,
  in_batch_days: null,
  denied_days: null,
  benefit_total_amount: null,
  benefit_paid_amount: null,
  benefit_payable_amount: null,
  benefit_in_batch_amount: null,
  deduction_total_amount: null,
  deduction_paid_amount: null,
  deduction_payable_amount: null,
  deduction_in_batch_amount: null,
  taxable_total_amount: null,
  taxable_paid_amount: null,
  taxable_payable_amount: null,
  taxable_in_batch_amount: null,
  federal_tax_total_amount: null,
  federal_tax_paid_amount: null,
  federal_tax_payable_amount: null,
  federal_tax_in_batch_amount: null,
  soc_sec_tax_total_amount: null,
  soc_sec_tax_paid_amount: null,
  soc_sec_tax_payable_amount: null,
  soc_sec_tax_in_batch_amount: null,
  medicare_tax_total_amount: null,
  medicare_tax_paid_amount: null,
  medicare_tax_payable_amount: null,
  medicare_tax_in_batch_amount: null,
  state_tax_total_amount: null,
  state_tax_paid_amount: null,
  state_tax_payable_amount: null,
  state_tax_in_batch_amount: null,
  local_tax_total_amount: null,
  local_tax_paid_amount: null,
  local_tax_payable_amount: null,
  local_tax_in_batch_amount: null
)
```

