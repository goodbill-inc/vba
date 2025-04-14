# Vba::AuthCodeVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**AuthCode**](AuthCode.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthCodeVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

