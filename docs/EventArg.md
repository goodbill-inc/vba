# Vba::EventArg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **Integer** | ID of the event. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **argument_name** | **String** | Allows the User to choose from a list of existing process automation arguments to associate with the event. |  |
| **argument_type** | **String** | Identifies the type of process automation argument. | [optional] |
| **argument_value** | **String** | The value of the process automation argument. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EventArg.new(
  event_id: null,
  argument_name: null,
  argument_type: null,
  argument_value: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

