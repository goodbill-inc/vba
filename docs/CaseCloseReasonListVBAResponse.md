# Vba::CaseCloseReasonListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;CaseCloseReason&gt;**](CaseCloseReason.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CaseCloseReasonListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

