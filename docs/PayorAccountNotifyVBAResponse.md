# Vba::PayorAccountNotifyVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**PayorAccountNotify**](PayorAccountNotify.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorAccountNotifyVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

