# Vba::MemberToothExCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **tooth_number** | **Integer** | Identifies the number of the tooth/teeth that the User intends to apply an Ex Code to. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Idenfities the Ex Code that will be applied to the selected tooth/teeth. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberToothExCode.new(
  subscriber_id: null,
  member_seq: null,
  tooth_number: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  update_date: null,
  update_user: null
)
```

