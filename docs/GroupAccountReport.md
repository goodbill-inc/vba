# Vba::GroupAccountReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References Groups.Group_ID value on parent record. |  |
| **account_key** | **Integer** | References PayorAccount.Account_Key value on parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **payor_id** | **String** | References PayorAccount.Payor_ID value on parent record. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupAccountReport.new(
  group_id: null,
  account_key: null,
  entry_date: null,
  entry_user: null,
  payor_id: null,
  update_date: null,
  update_user: null
)
```

