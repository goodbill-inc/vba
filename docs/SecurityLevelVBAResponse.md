# Vba::SecurityLevelVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**SecurityLevel**](SecurityLevel.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityLevelVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

