# Vba::PolicyStatusListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PolicyStatus&gt;**](PolicyStatus.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PolicyStatusListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

