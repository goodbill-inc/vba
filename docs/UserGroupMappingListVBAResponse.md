# Vba::UserGroupMappingListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UserGroupMapping&gt;**](UserGroupMapping.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UserGroupMappingListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

