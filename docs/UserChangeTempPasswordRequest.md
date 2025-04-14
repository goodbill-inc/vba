# Vba::UserChangeTempPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The User ID |  |
| **new_password** | **String** | The User&#39;s new new password |  |
| **session** | **String** | The session token returned from the original login attempt that triggered the Change Temp Password flow. |  |

## Example

```ruby
require 'vba'

instance = Vba::UserChangeTempPasswordRequest.new(
  user_id: null,
  new_password: null,
  session: null
)
```

