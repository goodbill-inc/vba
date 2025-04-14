# Vba::MemberPreExDisclosedDiag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_pre_ex_disclosed_diag_key** | **Integer** | Unique identifier for each Member Pre Ex Disclosed Diag entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **diagnostic_code_type** | **String** | Unique ID for the diagnostic code type. |  |
| **diagnostic_group** | **String** | Name for the diagnostic group. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **from_diag** | **String** | First Diagnosis Code for the specified range. | [optional] |
| **member_seq** | **String** | Sequential identifier assigned to the Member. |  |
| **subscriber_id** | **String** | Identifier assigned to the Subscriber associated with this Member. |  |
| **thru_diag** | **String** | Last Diagnosis Code for the specified range. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberPreExDisclosedDiag.new(
  member_pre_ex_disclosed_diag_key: null,
  diagnostic_code_type: null,
  diagnostic_group: null,
  entry_date: null,
  entry_user: null,
  from_diag: null,
  member_seq: null,
  subscriber_id: null,
  thru_diag: null,
  update_date: null,
  update_user: null
)
```

