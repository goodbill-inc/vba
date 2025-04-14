# Vba::ErrorCategoryTypeListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ErrorCategoryType&gt;**](ErrorCategoryType.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ErrorCategoryTypeListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

