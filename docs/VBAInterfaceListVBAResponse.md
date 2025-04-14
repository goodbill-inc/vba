# Vba::VBAInterfaceListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;VBAInterface&gt;**](VBAInterface.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

