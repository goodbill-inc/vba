# Vba::ClaimAdjustmentConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_numbers** | **Array&lt;Integer&gt;** |  | [optional] |
| **new_batch** | **Boolean** |  | [optional] |
| **new_batch_description** | **String** |  | [optional] |
| **seq_list** | **String** |  | [optional] |
| **reenter_claim** | **Boolean** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **pay_to** | **String** |  | [optional] |
| **apply_backout_ex_code** | **Boolean** |  | [optional] |
| **backout_ex_code** | **String** |  | [optional] |
| **auto_process_backout** | **Boolean** |  | [optional] |
| **apply_reentry_ex_code** | **Boolean** |  | [optional] |
| **reentry_ex_code** | **String** |  | [optional] |
| **use_original_received_date** | **Boolean** |  | [optional] |
| **add_note** | [**NoteData**](NoteData.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAdjustmentConfig.new(
  claim_numbers: null,
  new_batch: null,
  new_batch_description: null,
  seq_list: null,
  reenter_claim: null,
  subscriber_id: null,
  member_seq: null,
  provider_id: null,
  pay_to: null,
  apply_backout_ex_code: null,
  backout_ex_code: null,
  auto_process_backout: null,
  apply_reentry_ex_code: null,
  reentry_ex_code: null,
  use_original_received_date: null,
  add_note: null
)
```

