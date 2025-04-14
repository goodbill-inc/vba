# Vba::SecurityLevelListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;SecurityLevel&gt;**](SecurityLevel.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityLevelListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

