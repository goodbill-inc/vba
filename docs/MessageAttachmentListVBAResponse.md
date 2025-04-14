# Vba::MessageAttachmentListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;MessageAttachment&gt;**](MessageAttachment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MessageAttachmentListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

