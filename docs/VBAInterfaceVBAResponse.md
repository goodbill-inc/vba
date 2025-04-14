# Vba::VBAInterfaceVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**VBAInterface**](VBAInterface.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

