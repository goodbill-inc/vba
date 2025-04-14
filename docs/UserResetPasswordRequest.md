# Vba::UserResetPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | A valid access token that Amazon Cognito issued to the user whose password you want to change. |  |
| **previous_password** | **String** | The old new password. |  |
| **proposed_password** | **String** | The new password. |  |

## Example

```ruby
require 'vba'

instance = Vba::UserResetPasswordRequest.new(
  access_token: null,
  previous_password: null,
  proposed_password: null
)
```

