# Vba::VBAInterfaceStatusVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**VBAInterfaceStatus**](VBAInterfaceStatus.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceStatusVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

