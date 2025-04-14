# Vba::ErrorCategoryListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ErrorCategory&gt;**](ErrorCategory.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ErrorCategoryListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

