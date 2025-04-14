# Vba::SubscriberIDHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **Integer** | Unique identifier for each Subscriber ID change process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **error_number** | **Integer** | Indicates if the process returned an error during the change procedure. | [optional] |
| **new_subscriber_id** | **String** | The Subscriber_ID that Old_Subscriber_ID was changed to. | [optional] |
| **old_subscriber_id** | **String** | The Subscriber_ID value that was changed. | [optional] |
| **table_name** | **String** | Indicates the table that an error occurred during the change procedure. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberIDHistory.new(
  change_id: null,
  entry_date: null,
  entry_user: null,
  error_number: null,
  new_subscriber_id: null,
  old_subscriber_id: null,
  table_name: null
)
```

