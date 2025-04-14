# Vba::MemberPreExDiag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **diagnostic_code_type** | **String** | Identifies the ICD version of the associated diagnosis codes. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **from_diag** | **String** | Identifies the beginning diagnosis code for the associated range during the Member&#39;s preexisting condition period. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **thru_diag** | **String** | Identifies the ending diagnosis code for the associated range during the Member&#39;s preexisting condition period. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberPreExDiag.new(
  subscriber_id: null,
  member_seq: null,
  diagnostic_code_type: null,
  from_diag: null,
  entry_date: null,
  entry_user: null,
  thru_diag: null,
  update_date: null,
  update_user: null
)
```

