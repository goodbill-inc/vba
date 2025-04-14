# Vba::AuthTypePlace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_type** | **String** | Name of the auth type that the place of service will be tied to. |  |
| **place_of_service** | **String** | Specifies the place of service that will be tied to the auth type. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **excluded** | **Boolean** | Identifies that the selected place of service will be excluded from the auth type. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthTypePlace.new(
  auth_type: null,
  place_of_service: null,
  entry_date: null,
  entry_user: null,
  excluded: null,
  update_date: null,
  update_user: null
)
```

