# Vba::MemberCollege

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_college_key** | **Integer** | Unique identifier for each college record for this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **college_key** | **Integer** | Identifier associated with the Member&#39;s school. This can be configured within System Services &gt; System Configuration &gt; Colleges. | [optional] |
| **contact_fax** | **String** | Fax number of the Contact associated with the Member&#39;s school. | [optional] |
| **contact_name** | **String** | Name of the Contact associated with the Member&#39;s school. | [optional] |
| **contact_phone** | **String** | Phone number of the Contact associated with the Member&#39;s school. | [optional] |
| **effective_date** | **Time** | Date when the Member&#39;s &#39;student&#39; status becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hours** | **Float** | Identifies how many hours the Member is currently enrolled in. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **semester** | **Integer** | Identifies the semester that the Member is currently enrolled in. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the Member&#39;s &#39;student&#39; status expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberCollege.new(
  member_college_key: null,
  college_key: null,
  contact_fax: null,
  contact_name: null,
  contact_phone: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  hours: null,
  member_seq: null,
  semester: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

