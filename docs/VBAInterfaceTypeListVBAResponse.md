# Vba::VBAInterfaceTypeListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;VBAInterfaceType&gt;**](VBAInterfaceType.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterfaceTypeListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

