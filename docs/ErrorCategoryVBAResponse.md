# Vba::ErrorCategoryVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ErrorCategory**](ErrorCategory.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ErrorCategoryVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

