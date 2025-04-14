# Vba::VBAInterfaceMapType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_interface_key** | **Integer** | ID of the VBA interface. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **map_type** | **String** | Name for the map type. |  |
| **description** | **String** | Description of the map type. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **surrogate_map_type** | **String** | System Configuration Values used by VBA Engineers to group EDICode Map Types with similar functionality. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceMapType.new(
  vba_interface_key: null,
  map_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  surrogate_map_type: null,
  update_date: null,
  update_user: null
)
```

