# Vba::VBAInterfaceIDCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_interface_key** | **Integer** | ID of the interface. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **i_d_code** | **String** | ID code associated with the interface item. |  |
| **type** | **String** | Type associated with the interface item. |  |
| **description** | **String** | Description of the interface item. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **surrogate_id_code** | **String** | System Configuration Values used by VBA Engineers to group ID Codes with similar functionality. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceIDCode.new(
  vba_interface_key: null,
  i_d_code: null,
  type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  surrogate_id_code: null,
  update_date: null,
  update_user: null
)
```

