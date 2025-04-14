# Vba::VBAClientVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**VBAClient**](VBAClient.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAClientVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

