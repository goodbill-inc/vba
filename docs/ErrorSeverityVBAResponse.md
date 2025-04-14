# Vba::ErrorSeverityVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ErrorSeverity**](ErrorSeverity.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ErrorSeverityVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

