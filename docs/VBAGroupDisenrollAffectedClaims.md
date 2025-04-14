# Vba::VBAGroupDisenrollAffectedClaims

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **claim_number** | **Integer** |  | [optional] |
| **diagnostic_code_type** | **String** |  | [optional] |
| **diagnostic_code1** | **String** |  | [optional] |
| **diagnostic_code2** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **service_thru** | **Time** |  | [optional] |
| **check_batch** | **Integer** |  | [optional] |
| **check_number** | **String** |  | [optional] |
| **claim_paid** | **Integer** |  | [optional] |
| **claim_paid_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAGroupDisenrollAffectedClaims.new(
  group_id: null,
  division_id: null,
  subscriber_id: null,
  member_seq: null,
  claim_number: null,
  diagnostic_code_type: null,
  diagnostic_code1: null,
  diagnostic_code2: null,
  provider_id: null,
  service_date: null,
  service_thru: null,
  check_batch: null,
  check_number: null,
  claim_paid: null,
  claim_paid_amount: null
)
```

