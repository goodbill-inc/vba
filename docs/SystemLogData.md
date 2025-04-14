# Vba::SystemLogData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_log_data_key** | **Integer** | Key value identifying a specific system log entry |  |
| **log_action** | **String** | Action that was performed by the event that was logged | [optional] |
| **log_data** | **String** | Data that was deemed important from the logged event | [optional] |
| **log_date** | **Time** | Date and time the logged event occurred |  |
| **log_result** | **String** | Result of the event that was logged | [optional] |
| **log_type** | **String** | Type of event that was logged | [optional] |
| **machine_id** | **String** | Computer the user was using when the event was logged |  |
| **success** | **Boolean** | Flag specifying if the logged event or operation was successful |  |
| **user_id** | **String** | User that was logged into the application when the event was logged |  |

## Example

```ruby
require 'vba'

instance = Vba::SystemLogData.new(
  system_log_data_key: null,
  log_action: null,
  log_data: null,
  log_date: null,
  log_result: null,
  log_type: null,
  machine_id: null,
  success: null,
  user_id: null
)
```

