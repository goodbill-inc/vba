# Vba::UserAuthenticationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **challenge_name** | **String** | The name of the challenge.  This field will be filled if the Authentication process requires additional steps.  You may programatically build application logic based on this field&#39;s value.   Valid values: NEW_PASSWORD_REQUIRED: For users who are required to change their passwords after successful first login. | [optional] |
| **session** | **String** | The session that should pass both ways in challenge-response calls to the service. If the caller must pass another challenge, they return a session with other challenge parameters. | [optional] |
| **authentication_result** | [**AuthenticationResult**](AuthenticationResult.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::UserAuthenticationResponse.new(
  challenge_name: null,
  session: null,
  authentication_result: null
)
```

