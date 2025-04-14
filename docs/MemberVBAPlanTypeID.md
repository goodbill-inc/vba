# Vba::MemberVBAPlanTypeID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **vb_a_plan_type** | **String** | Plan type associated with the Member&#39;s alternate ID. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **vb_a_plan_type_id** | **String** | Member&#39;s alternate ID for the associated plan type. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberVBAPlanTypeID.new(
  subscriber_id: null,
  member_seq: null,
  vb_a_plan_type: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  vb_a_plan_type_id: null
)
```

