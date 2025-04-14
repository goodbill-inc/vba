# Vba::MemberCaseHead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_case_head_key** | **Integer** | Unique identifier associated with this Case Head entry for this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **case_head_key** | **Integer** | References CaseHead.CaseHead_Key on parent record. | [optional] |
| **effective_date** | **Time** | Date when the case head becomes/became effective. | [optional] |
| **end_date** | **Time** | Date when the case head becomes/became terminated. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberCaseHead.new(
  member_case_head_key: null,
  case_head_key: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

