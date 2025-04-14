# Vba::MessageThread

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_thread_key** | **Integer** | Unique identifier for the message thread. |  |
| **thread_create_date** | **Time** | Date and time when the thread was created. | [optional] |
| **thread_create_user_id** | **String** | Unique identifier (UUID) of the user who created the thread.  If null, this is considered an admin-level action or system-generated. | [optional] |
| **thread_status** | **String** | Current status of the thread, limited to 32 characters.  Possible values:    \&quot;CLOSED\&quot;  - Closed Thread    \&quot;NEW\&quot;     - New Thread    \&quot;NEWREC\&quot;  - Active Thread | [optional] |
| **thread_title** | **String** | Title or subject line for the thread, limited to 512 characters. | [optional] |
| **thread_type** | **String** | Type or category of the thread, limited to 32 characters. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MessageThread.new(
  message_thread_key: null,
  thread_create_date: null,
  thread_create_user_id: null,
  thread_status: null,
  thread_title: null,
  thread_type: null
)
```

