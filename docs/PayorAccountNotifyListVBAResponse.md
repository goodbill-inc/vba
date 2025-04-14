# Vba::PayorAccountNotifyListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PayorAccountNotify&gt;**](PayorAccountNotify.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorAccountNotifyListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

