# Vba::VBAInterfaceStatusListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;VBAInterfaceStatus&gt;**](VBAInterfaceStatus.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceStatusListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

