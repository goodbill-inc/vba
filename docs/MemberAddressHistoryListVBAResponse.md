# Vba::MemberAddressHistoryListVBAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;MemberAddressHistory&gt;**](MemberAddressHistory.md) |  | [optional] |
| **error** | [**VBAProblemDetails**](VBAProblemDetails.md) |  | [optional] |
| **debug** | [**Debug**](Debug.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberAddressHistoryListVBAResponse.new(
  data: null,
  error: null,
  debug: null
)
```

