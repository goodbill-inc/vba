# Vba::VBAClientEnvironmentListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;VBAClientEnvironment&gt;**](VBAClientEnvironment.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAClientEnvironmentListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

