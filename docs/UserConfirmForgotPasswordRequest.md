# Vba::UserConfirmForgotPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The User ID | [optional] |
| **password** | **String** | The new password. | [optional] |
| **confirmation_code** | **String** | The confirmation code received from the latest forgot password request. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UserConfirmForgotPasswordRequest.new(
  user_id: null,
  password: null,
  confirmation_code: null
)
```

