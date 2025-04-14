# Vba::PremPaymentSubscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_payment_key** | **Integer** |  |  |
| **subscriber_id** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **payment_amount** | **Float** |  | [optional] |
| **payment_posted** | **Float** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremPaymentSubscriber.new(
  prem_payment_key: null,
  subscriber_id: null,
  entry_date: null,
  entry_user: null,
  payment_amount: null,
  payment_posted: null,
  update_date: null,
  update_user: null
)
```

