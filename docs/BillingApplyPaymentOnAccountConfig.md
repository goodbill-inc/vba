# Vba::BillingApplyPaymentOnAccountConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **payment** | [**PremPayment**](PremPayment.md) |  | [optional] |
| **on_account_payments** | [**Array&lt;PremPaymentOnAccount&gt;**](PremPaymentOnAccount.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingApplyPaymentOnAccountConfig.new(
  user_id: null,
  payment: null,
  on_account_payments: null
)
```

