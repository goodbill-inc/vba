# Vba::SuspenseClaimList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_number** | **Integer** |  | [optional] |
| **claim_paid_amount** | **Float** |  | [optional] |
| **claim_funded_status** | **String** |  | [optional] |
| **service_lines** | **Integer** |  | [optional] |
| **claim_status** | **String** |  | [optional] |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **batch_number** | **Integer** |  | [optional] |
| **batch_claim** | **Integer** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **provider_first_name** | **String** |  | [optional] |
| **provider_last_name** | **String** |  | [optional] |
| **provider_org_name** | **String** |  | [optional] |
| **payee_name** | **String** |  | [optional] |
| **member_first_name** | **String** |  | [optional] |
| **member_last_name** | **String** |  | [optional] |
| **service_date** | **Time** |  | [optional] |
| **service_thru** | **Time** |  | [optional] |
| **selected** | **Integer** |  | [optional] |
| **reins_claim** | **Integer** |  | [optional] |
| **claim_audit_key** | **Integer** |  | [optional] |
| **check_batch** | **Integer** |  | [optional] |
| **paid** | **Integer** |  | [optional] |
| **fee_sched** | **String** |  | [optional] |
| **suspense_type** | **String** |  | [optional] |
| **zelis_suspense** | **Boolean** |  | [optional] |
| **process_date** | **Time** |  | [optional] |
| **process_user** | **String** |  | [optional] |
| **suspense_claim_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SuspenseClaimList.new(
  claim_number: null,
  claim_paid_amount: null,
  claim_funded_status: null,
  service_lines: null,
  claim_status: null,
  payor_id: null,
  account_key: null,
  group_id: null,
  division_id: null,
  batch_number: null,
  batch_claim: null,
  provider_id: null,
  subscriber_id: null,
  member_seq: null,
  payee_id: null,
  provider_first_name: null,
  provider_last_name: null,
  provider_org_name: null,
  payee_name: null,
  member_first_name: null,
  member_last_name: null,
  service_date: null,
  service_thru: null,
  selected: null,
  reins_claim: null,
  claim_audit_key: null,
  check_batch: null,
  paid: null,
  fee_sched: null,
  suspense_type: null,
  zelis_suspense: null,
  process_date: null,
  process_user: null,
  suspense_claim_key: null
)
```

