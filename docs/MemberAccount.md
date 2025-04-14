# Vba::MemberAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_account_key** | **Integer** | Unique identifier for each Account on this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | References FundingAccount.Account_Key for this account on this Member. | [optional] |
| **effective_from** | **Time** | Date when the Member account becomes/became effective. | [optional] |
| **effective_thru** | **Time** | Date when the Member account becomes/became terminated. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. | [optional] |
| **pre_note_sent** | **Boolean** | Custom value used for accounting system integrations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pre_note_sent_date** | **Time** | Custom value used for accounting system integrations. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **wire_transfer** | **Boolean** | Indicates that the Member account is setup for direct deposit. Checking this box will activate the ACH option within Subscriber Information. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::MemberAccount.new(
  member_account_key: null,
  account_key: null,
  effective_from: null,
  effective_thru: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  pre_note_sent: null,
  pre_note_sent_date: null,
  subscriber_id: null,
  update_date: null,
  update_user: null,
  wire_transfer: null
)
```

