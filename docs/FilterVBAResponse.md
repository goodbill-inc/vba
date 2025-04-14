# Vba::FilterVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Filter**](Filter.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FilterVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

