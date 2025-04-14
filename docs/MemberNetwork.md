# Vba::MemberNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupNetwork.Group_ID in parent table. |  |
| **division_id** | **String** | References GroupNetwork.Division_ID in parent table. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **network_id** | **String** | References GroupNetwork.Network_ID in parent table. |  |
| **effective_date** | **Time** | Date when the Network becomes/became effective for the Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **network_type** | **String** | Identifies the type associated with the selected Network. | [optional] |
| **term_date** | **Time** | Date when the Network expires/expired for the Member. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberNetwork.new(
  group_id: null,
  division_id: null,
  subscriber_id: null,
  member_seq: null,
  network_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  network_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

