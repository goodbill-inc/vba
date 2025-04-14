# Vba::PremPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_payment_key** | **Integer** |  |  |
| **account_key** | **Integer** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **funding_key** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **payment_amount** | **Float** |  | [optional] |
| **payment_date** | **Time** |  | [optional] |
| **payment_id** | **String** |  | [optional] |
| **payment_name** | **String** |  | [optional] |
| **payment_type** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremPayment.new(
  prem_payment_key: null,
  account_key: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  funding_key: null,
  group_id: null,
  payment_amount: null,
  payment_date: null,
  payment_id: null,
  payment_name: null,
  payment_type: null,
  payor_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

