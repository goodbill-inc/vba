# Vba::PremPaymentOnAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_payment_on_account_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **payment_amount** | **Float** |  | [optional] |
| **payment_posted** | **Float** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **plan_type** | **String** |  | [optional] |
| **prem_payment_key** | **Integer** |  |  |
| **subscriber_id** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremPaymentOnAccount.new(
  prem_payment_on_account_key: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  payment_amount: null,
  payment_posted: null,
  payor_id: null,
  plan_type: null,
  prem_payment_key: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

