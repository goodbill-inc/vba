# Vba::MessageAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_attachment_key** | **Integer** | Unique identifier for the message attachment. |  |
| **file_name** | **String** | Name of the file attached to the message. | [optional] |
| **file_type** | **String** | Type of the file attached to the message, such as PDF or JPEG. | [optional] |
| **message_attachment** | **String** | Binary data representing the content of the message attachment. | [optional] |
| **message_key** | **Integer** | Unique identifier of the associated message. |  |

## Example

```ruby
require 'vba'

instance = Vba::MessageAttachment.new(
  message_attachment_key: null,
  file_name: null,
  file_type: null,
  message_attachment: null,
  message_key: null
)
```

