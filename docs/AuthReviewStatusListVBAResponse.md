# Vba::AuthReviewStatusListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AuthReviewStatus&gt;**](AuthReviewStatus.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthReviewStatusListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

