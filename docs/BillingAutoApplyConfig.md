# Vba::BillingAutoApplyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** |  | [optional] |
| **prem_payment_key** | **Integer** |  | [optional] |
| **payment_posted** | **Float** |  | [optional] |
| **payment_posted_date** | **Time** |  | [optional] |
| **payment_id** | **String** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **auto_apply_option** | **Integer** |  | [optional] |
| **auto_apply_adjustment_option** | **Integer** |  | [optional] |
| **auto_apply_categories** | **Array&lt;String&gt;** |  | [optional] |
| **auto_apply_subscribers** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillingAutoApplyConfig.new(
  invoice_key: null,
  prem_payment_key: null,
  payment_posted: null,
  payment_posted_date: null,
  payment_id: null,
  received_date: null,
  auto_apply_option: null,
  auto_apply_adjustment_option: null,
  auto_apply_categories: null,
  auto_apply_subscribers: null
)
```

