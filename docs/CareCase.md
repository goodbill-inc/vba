# Vba::CareCase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_key** | **Integer** | Identifier of the case. |  |
| **appointment_date** | **Time** | User Managed field: Date of next Appointment | [optional] |
| **assessment_date** | **Time** | User managed field: Date when the case was assessed. | [optional] |
| **care_plan_key** | **Integer** | Identifies the type care associated with the case. |  |
| **case_assign_type** | **String** | Who or what Entity the Case was assigned to. | [optional] |
| **case_end_date** | **Time** | Day when the case ended. | [optional] |
| **case_id** | **String** | Identifier of the case. | [optional] |
| **case_priority** | **Integer** | Identifies the priority of the case. &#39;Case Priorities&#39; are configured within &#39;Care Management Configuration&#39;. | [optional] |
| **case_reason** | **String** | Identifies the reason of the case. &#39;Case Reasons&#39; are configured within &#39;Care Management Configuration&#39;. | [optional] |
| **case_score** | **Float** | User Managed field used when Auto Assigning cases. | [optional] |
| **case_start_date** | **Time** | Day when the case began. | [optional] |
| **case_status** | **String** | Identifies the status of the case. &#39;Case Statuses&#39; are configured within &#39;Care Management Configuration&#39;. | [optional] |
| **division_id** | **String** | ID of the Division associated with the case. | [optional] |
| **do_not_contact** | **Boolean** | User Managed field for whether or not to contact member. |  |
| **eligibility_verified** | **Time** | User Managed field: Date elegibility verified | [optional] |
| **eligibility_verified_comment** | **String** | User Managed field: Comment about Eligibility verification. | [optional] |
| **case_close_reason** | **String** | The identifier of the case close reason. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | ID of the Group associated with the case. | [optional] |
| **member_seq** | **String** | Sequential identifier of the Member associated with the case. | [optional] |
| **provider_id** | **String** | ID of the Provider associated with the case. | [optional] |
| **subscriber_id** | **String** | ID of the Subscriber associated with the case. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCase.new(
  case_key: null,
  appointment_date: null,
  assessment_date: null,
  care_plan_key: null,
  case_assign_type: null,
  case_end_date: null,
  case_id: null,
  case_priority: null,
  case_reason: null,
  case_score: null,
  case_start_date: null,
  case_status: null,
  division_id: null,
  do_not_contact: null,
  eligibility_verified: null,
  eligibility_verified_comment: null,
  case_close_reason: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  member_seq: null,
  provider_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

