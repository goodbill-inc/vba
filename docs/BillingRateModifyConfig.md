# Vba::BillingRateModifyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_basis** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **keep_rate_basis** | **Boolean** | Used in both Rate Copy and Rate Change | [optional] |
| **rate_category** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **keep_rate_category** | **Boolean** | Used in both Rate Copy and Rate Change | [optional] |
| **plan_id** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **keep_plan_id** | **Boolean** | Used in both Rate Copy and Rate Change | [optional] |
| **group_id** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **keep_group_id** | **Boolean** | Used in both Rate Copy and Rate Change | [optional] |
| **division_id** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **keep_division_id** | **Boolean** | Used in both Rate Copy and Rate Change | [optional] |
| **prem_rate_type** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **rate_option** | **Integer** | Used in both Rate Copy and Rate Change  1 - Use Existing;  2 - Update Existing;  3 - Create New; | [optional] |
| **payee_option** | **Integer** | Used in both Rate Copy and Rate Change  1 - Use Existing Rates;  2 - Create New Rates;  3 - Add; | [optional] |
| **existing_rate_term_date** | **Time** | Used only with Rate Change | [optional] |
| **new_rate_effective_date** | **Time** | Used only with Rate Change | [optional] |
| **new_rate_term_date** | **Time** | Used only with Rate Change | [optional] |
| **user_id** | **String** | Used in both Rate Copy and Rate Change | [optional] |
| **prem_rates** | [**Array&lt;PremRate&gt;**](PremRate.md) | Used in both Rate Copy and Rate Change | [optional] |
| **prem_rate_payees** | [**Array&lt;PremRatePayee&gt;**](PremRatePayee.md) | Used in both Rate Copy and Rate Change | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingRateModifyConfig.new(
  rate_basis: null,
  keep_rate_basis: null,
  rate_category: null,
  keep_rate_category: null,
  plan_id: null,
  keep_plan_id: null,
  group_id: null,
  keep_group_id: null,
  division_id: null,
  keep_division_id: null,
  prem_rate_type: null,
  rate_option: null,
  payee_option: null,
  existing_rate_term_date: null,
  new_rate_effective_date: null,
  new_rate_term_date: null,
  user_id: null,
  prem_rates: null,
  prem_rate_payees: null
)
```

