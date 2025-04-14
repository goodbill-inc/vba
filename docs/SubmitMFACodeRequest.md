# Vba::SubmitMFACodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username of the user sending the multi-factor authentication code. |  |
| **mfa_code** | **String** | The multi-factor authentication code provided by the user. |  |
| **session** | **String** | The session that should be passed both ways in challenge-response calls to the service. |  |

## Example

```ruby
require 'vba'

instance = Vba::SubmitMFACodeRequest.new(
  username: null,
  mfa_code: null,
  session: null
)
```

