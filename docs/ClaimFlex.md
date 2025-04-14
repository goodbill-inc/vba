# Vba::ClaimFlex

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_flex_key** | **Integer** |  |  |
| **adjudicate_action** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **auto_created** | **Boolean** |  |  |
| **auto_created_claim_number** | **Integer** |  | [optional] |
| **auto_created_date** | **Time** |  | [optional] |
| **batch_number** | **Integer** |  |  |
| **calendar_year** | **String** |  |  |
| **diagnostic_code1** | **String** |  | [optional] |
| **diagnostic_code2** | **String** |  | [optional] |
| **diagnostic_code3** | **String** |  | [optional] |
| **diagnostic_code4** | **String** |  | [optional] |
| **diagnostic_code_type** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_code** | **String** |  | [optional] |
| **flex_claim_number** | **String** |  |  |
| **flex_claim_status** | **String** |  | [optional] |
| **group_id** | **String** |  |  |
| **member_birth_date** | **Time** |  | [optional] |
| **member_first_name** | **String** |  | [optional] |
| **member_last_name** | **String** |  | [optional] |
| **plan_id** | **String** |  |  |
| **provider_federal_id** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **provider_name** | **String** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **send_check_to** | **String** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **service_thru** | **Time** |  | [optional] |
| **subscriber_id** | **String** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimFlex.new(
  claim_flex_key: null,
  adjudicate_action: null,
  amount: null,
  auto_created: null,
  auto_created_claim_number: null,
  auto_created_date: null,
  batch_number: null,
  calendar_year: null,
  diagnostic_code1: null,
  diagnostic_code2: null,
  diagnostic_code3: null,
  diagnostic_code4: null,
  diagnostic_code_type: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  flex_claim_number: null,
  flex_claim_status: null,
  group_id: null,
  member_birth_date: null,
  member_first_name: null,
  member_last_name: null,
  plan_id: null,
  provider_federal_id: null,
  provider_id: null,
  provider_name: null,
  received_date: null,
  send_check_to: null,
  service_date: null,
  service_thru: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

