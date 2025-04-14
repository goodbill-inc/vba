# Vba::NetworkProfileListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;NetworkProfile&gt;**](NetworkProfile.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkProfileListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

