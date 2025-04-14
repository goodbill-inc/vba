# Vba::SecurityAreaUserGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_area** | **String** | Security area that the User Group settings are being configured for. |  |
| **user_group_key** | **Integer** | ID of the User Group that the level is being set for. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **security_level** | **Integer** | Security level that is being applied to the selected User. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityAreaUserGroup.new(
  security_area: null,
  user_group_key: null,
  entry_date: null,
  entry_user: null,
  security_level: null,
  update_date: null,
  update_user: null
)
```

