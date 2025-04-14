# Vba::PremApplyPaymentCategoryResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apply_payment_category** | **String** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **reason_key** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **subscriber_name** | **String** |  | [optional] |
| **plan_type** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **amount_due** | **Float** |  | [optional] |
| **on_account** | **Float** |  | [optional] |
| **apply_payment** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremApplyPaymentCategoryResult.new(
  apply_payment_category: null,
  adjustment_reason: null,
  reason_key: null,
  group_id: null,
  group_name: null,
  subscriber_id: null,
  ssn: null,
  subscriber_name: null,
  plan_type: null,
  payor_id: null,
  amount_due: null,
  on_account: null,
  apply_payment: null
)
```

