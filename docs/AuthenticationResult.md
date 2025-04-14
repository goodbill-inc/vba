# Vba::AuthenticationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The ID token. | [optional] |
| **id_token** | **String** | The ID token. | [optional] |
| **refresh_token** | **String** | The ID token. | [optional] |
| **expires_in** | **Integer** | The expiration period of the authentication result in seconds. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthenticationResult.new(
  access_token: null,
  id_token: null,
  refresh_token: null,
  expires_in: null
)
```

