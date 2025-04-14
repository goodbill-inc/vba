# Vba::MemberEligibilityStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_eligibility_status_key** | **Integer** | Unique identifier for each Eligiblity Status value for this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the eligibility status becomes/became effective. | [optional] |
| **eligibility_status** | **String** | Identifies the eligibility status to be tied to the Member. This can be configured within Enrollment Services &gt; Enrollment Configuration &gt; Eligibility Status. |  |
| **end_date** | **Time** | Date when the eligibility status expires/expired. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberEligibilityStatus.new(
  member_eligibility_status_key: null,
  effective_date: null,
  eligibility_status: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

