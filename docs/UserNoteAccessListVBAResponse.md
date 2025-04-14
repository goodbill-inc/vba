# Vba::UserNoteAccessListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UserNoteAccess&gt;**](UserNoteAccess.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UserNoteAccessListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

