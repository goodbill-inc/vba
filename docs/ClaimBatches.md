# Vba::ClaimBatches

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **batch_type** | **String** |  | [optional] |
| **case_status** | **String** |  | [optional] |
| **case_status_date** | **Time** |  | [optional] |
| **case_status_reason** | **String** |  | [optional] |
| **case_status_user** | **String** |  | [optional] |
| **current_phys_tax_id** | **String** |  | [optional] |
| **default_claim_type** | **String** |  | [optional] |
| **default_date** | **Time** |  | [optional] |
| **default_plan_type** | **String** |  | [optional] |
| **default_plan_type2** | **String** |  | [optional] |
| **default_plan_type3** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **ed_i_key** | **Integer** |  | [optional] |
| **ed_i_location** | **String** |  | [optional] |
| **ed_i_source_file_name** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **original_claim_count** | **Integer** |  | [optional] |
| **original_phys_tax_id** | **String** |  | [optional] |
| **overpayment_ex_code** | **String** |  | [optional] |
| **overpayment_total** | **Float** |  | [optional] |
| **process_by_disability_date** | **Boolean** |  |  |
| **reviewed_date** | **Time** |  | [optional] |
| **reviewed_status** | **String** |  | [optional] |
| **reviewed_user** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **use_default_date** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::ClaimBatches.new(
  batch_number: null,
  batch_type: null,
  case_status: null,
  case_status_date: null,
  case_status_reason: null,
  case_status_user: null,
  current_phys_tax_id: null,
  default_claim_type: null,
  default_date: null,
  default_plan_type: null,
  default_plan_type2: null,
  default_plan_type3: null,
  description: null,
  ed_i_key: null,
  ed_i_location: null,
  ed_i_source_file_name: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  original_claim_count: null,
  original_phys_tax_id: null,
  overpayment_ex_code: null,
  overpayment_total: null,
  process_by_disability_date: null,
  reviewed_date: null,
  reviewed_status: null,
  reviewed_user: null,
  status: null,
  subscriber_id: null,
  update_date: null,
  update_user: null,
  use_default_date: null
)
```

