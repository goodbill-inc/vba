# Vba::MessageAttachmentVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**MessageAttachment**](MessageAttachment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MessageAttachmentVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

