# Vba::MemberTooth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_tooth_key** | **Integer** | Unique identifier for each Tooth tracking record on this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_entered** | **Boolean** | Identifies that the information was automatically entered based upon claim information. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **tooth_number** | **Integer** | Identifies the number of the tooth/teeth that the User intends to change the status of. Teeth may also be selected using one of the group buttons such as Right, left; molars, incisors; upper, lower; etc. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **tooth_status** | **String** | Sets the status of the selected tooth/teeth. Teeth can be set as extracted, crowned, bridged, root, or cleared. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **user_entered** | **Boolean** | Idenfities that the information was manually entered by a User. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::MemberTooth.new(
  member_tooth_key: null,
  claim_entered: null,
  entry_date: null,
  entry_user: null,
  member_seq: null,
  subscriber_id: null,
  tooth_number: null,
  tooth_status: null,
  update_date: null,
  update_user: null,
  user_entered: null
)
```

