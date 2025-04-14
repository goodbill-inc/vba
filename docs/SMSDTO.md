# Vba::SMSDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_activity_id** | **String** | Activity ID that spawned this | [optional] |
| **_when** | **Time** |  | [optional] |
| **on_success** | [**CallbackDTO**](CallbackDTO.md) |  | [optional] |
| **on_failure** | [**CallbackDTO**](CallbackDTO.md) |  | [optional] |
| **sender_client_id** | **String** | The 3 chatacter ID for the Client to bill for the message | [optional] |
| **to_number** | **String** | The number to send the SMS | [optional] |
| **content** | **String** | The content of the SMS | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SMSDTO.new(
  parent_activity_id: null,
  _when: null,
  on_success: null,
  on_failure: null,
  sender_client_id: null,
  to_number: null,
  content: null
)
```

