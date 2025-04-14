# Vba::UserAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_amount_key** | **Integer** | ID of the User amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_type** | **String** | Identifies the claim type that the amount limit will be applied to. |  |
| **detail_amount** | **Float** | Identifies the amount limit that will be applied. | [optional] |
| **detail_column** | **String** | Identifies the claim detail that the amount limit will be applied to. |  |
| **effective_date** | **Time** | Date when the amount limit becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | Identifies the Ex Code that will be applied to any adjudicated claim that exceeds the ‘User Limit’. | [optional] |
| **term_date** | **Time** | Date when the amount limit expires/expired. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | ID of the User to whom the amount will be applied. |  |

## Example

```ruby
require 'vba'

instance = Vba::UserAmount.new(
  user_amount_key: null,
  claim_type: null,
  detail_amount: null,
  detail_column: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  term_date: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

