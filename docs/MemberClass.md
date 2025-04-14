# Vba::MemberClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_class_key** | **Integer** | Unique identifier for each Class entry for this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **class_code** | **String** | List of &#39;classes&#39; that can be associated with a Member. This can be configured within Enrollment Services &gt; Enrollment Configuration &gt; Classes. |  |
| **effective_date** | **Time** | Date when the &#39;class&#39; becomes/became effective. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the &#39;class&#39; becomes/became terminated. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberClass.new(
  member_class_key: null,
  class_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

