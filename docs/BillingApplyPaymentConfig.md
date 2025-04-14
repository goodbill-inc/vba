# Vba::BillingApplyPaymentConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_type** | **String** |  | [optional] |
| **posted_date** | **Time** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **posted_amount** | **Float** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **write_off_when_in_tolerance_range** | **Boolean** |  | [optional] |
| **payment** | [**PremPayment**](PremPayment.md) |  | [optional] |
| **apply_payments** | [**Array&lt;PremApplyPaymentCategoryResult&gt;**](PremApplyPaymentCategoryResult.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingApplyPaymentConfig.new(
  file_type: null,
  posted_date: null,
  received_date: null,
  posted_amount: null,
  user_id: null,
  write_off_when_in_tolerance_range: null,
  payment: null,
  apply_payments: null
)
```

