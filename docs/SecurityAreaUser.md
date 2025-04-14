# Vba::SecurityAreaUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the User whom the level is being set for. |  |
| **security_area** | **String** | Security area that the User settings are being configured for. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **security_level** | **Integer** | Security level that is being applied to the selected User. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityAreaUser.new(
  user_id: null,
  security_area: null,
  entry_date: null,
  entry_user: null,
  security_level: null,
  update_date: null,
  update_user: null
)
```

