# Vba::MemberCOBSavings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_cob_savings_key** | **Integer** | Unique identifier for each COB Savings record for this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_b_savings** | **Float** | Allows the User to override the automated COB Savings amount. If the ‘Use COB Savings’ option is selected within ‘Plan Options’, COB Savings auto-populate based upon the ‘COB’ amount. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | Group associated with the COB savings override. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **plan_type** | **String** | Identifies the plan type that the COB savings override will be applied to. |  |
| **plan_year** | **String** | Identifies the plan year that the COB savings override will be applied to. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberCOBSavings.new(
  member_cob_savings_key: null,
  co_b_savings: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  member_seq: null,
  plan_type: null,
  plan_year: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

