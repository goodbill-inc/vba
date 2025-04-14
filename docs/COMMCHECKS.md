# Vba::COMMCHECKS

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected** | **Integer** |  | [optional] |
| **check_number** | **String** |  | [optional] |
| **check_date** | **Time** |  | [optional] |
| **check_type** | **String** |  | [optional] |
| **name_on_check** | **String** |  | [optional] |
| **check_status** | **String** |  | [optional] |
| **amount_due** | **Float** |  | [optional] |
| **paid_amount** | **Float** |  | [optional] |
| **create_date** | **Time** |  | [optional] |
| **create_user** | **String** |  | [optional] |
| **check_batch** | **Integer** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **pay_to_id** | **String** |  | [optional] |
| **address_on_check** | **String** |  | [optional] |
| **address2_on_check** | **String** |  | [optional] |
| **city_on_check** | **String** |  | [optional] |
| **state_on_check** | **String** |  | [optional] |
| **zip_on_check** | **String** |  | [optional] |
| **send_check_to** | **String** |  | [optional] |
| **name_on_address** | **String** |  | [optional] |
| **payment_method** | **String** |  | [optional] |
| **signature_key** | **Integer** |  | [optional] |
| **check_paid_date** | **Time** |  | [optional] |
| **account_balance** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::COMMCHECKS.new(
  selected: null,
  check_number: null,
  check_date: null,
  check_type: null,
  name_on_check: null,
  check_status: null,
  amount_due: null,
  paid_amount: null,
  create_date: null,
  create_user: null,
  check_batch: null,
  payee_id: null,
  payor_id: null,
  account_key: null,
  pay_to_id: null,
  address_on_check: null,
  address2_on_check: null,
  city_on_check: null,
  state_on_check: null,
  zip_on_check: null,
  send_check_to: null,
  name_on_address: null,
  payment_method: null,
  signature_key: null,
  check_paid_date: null,
  account_balance: null
)
```

