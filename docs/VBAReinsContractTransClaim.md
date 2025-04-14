# Vba::VBAReinsContractTransClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_trans_key** | **Integer** |  | [optional] |
| **claim_number** | **Integer** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **service_thru** | **Time** |  | [optional] |
| **processed_date** | **Time** |  | [optional] |
| **check_id** | **Integer** |  | [optional] |
| **check_number** | **String** |  | [optional] |
| **member_first_name** | **String** |  | [optional] |
| **member_last_name** | **String** |  | [optional] |
| **provider_org_name** | **String** |  | [optional] |
| **provider_first_name** | **String** |  | [optional] |
| **provider_last_name** | **String** |  | [optional] |
| **paid_amount** | **Float** |  | [optional] |
| **claim_paid_amount_on_trans** | **Float** |  | [optional] |
| **claim_transaction_status** | **String** |  | [optional] |
| **claim_transaction_reimbursed** | **Float** |  | [optional] |
| **spec_ded_reimbursed** | **Float** |  | [optional] |
| **agg_spec_ded_reimbursed** | **Float** |  | [optional] |
| **claim_transaction_not_covered** | **Float** |  | [optional] |
| **claim_paid** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAReinsContractTransClaim.new(
  reins_contract_trans_key: null,
  claim_number: null,
  entry_user: null,
  entry_date: null,
  update_user: null,
  update_date: null,
  service_date: null,
  service_thru: null,
  processed_date: null,
  check_id: null,
  check_number: null,
  member_first_name: null,
  member_last_name: null,
  provider_org_name: null,
  provider_first_name: null,
  provider_last_name: null,
  paid_amount: null,
  claim_paid_amount_on_trans: null,
  claim_transaction_status: null,
  claim_transaction_reimbursed: null,
  spec_ded_reimbursed: null,
  agg_spec_ded_reimbursed: null,
  claim_transaction_not_covered: null,
  claim_paid: null
)
```

