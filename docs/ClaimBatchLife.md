# Vba::ClaimBatchLife

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **claim_id** | **String** |  | [optional] |
| **death_date** | **Time** |  | [optional] |
| **death_reason** | **Integer** |  | [optional] |
| **diagnostic_code1** | **String** |  | [optional] |
| **diagnostic_code2** | **String** |  | [optional] |
| **diagnostic_code3** | **String** |  | [optional] |
| **diagnostic_code4** | **String** |  | [optional] |
| **diagnostic_code_type** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_code1** | **String** |  | [optional] |
| **ex_code2** | **String** |  | [optional] |
| **illness** | **Boolean** |  |  |
| **illness_duration** | **Integer** |  | [optional] |
| **illness_duration_type** | **String** |  | [optional] |
| **last_day_worked** | **Time** |  | [optional] |
| **mail_to** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **pay_to** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **volume** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatchLife.new(
  batch_number: null,
  claim_id: null,
  death_date: null,
  death_reason: null,
  diagnostic_code1: null,
  diagnostic_code2: null,
  diagnostic_code3: null,
  diagnostic_code4: null,
  diagnostic_code_type: null,
  entry_date: null,
  entry_user: null,
  ex_code1: null,
  ex_code2: null,
  illness: null,
  illness_duration: null,
  illness_duration_type: null,
  last_day_worked: null,
  mail_to: null,
  member_seq: null,
  pay_to: null,
  payee_id: null,
  plan_id: null,
  provider_id: null,
  received_date: null,
  subscriber_id: null,
  update_date: null,
  update_user: null,
  volume: null
)
```

