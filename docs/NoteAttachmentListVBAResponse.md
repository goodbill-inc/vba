# Vba::NoteAttachmentListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;NoteAttachment&gt;**](NoteAttachment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NoteAttachmentListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

