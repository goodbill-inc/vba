# Vba::VerifyMFADeviceSetupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **friendly_device_name** | **String** | The friendly device name. | [optional] |
| **access_token** | **String** | The session that should be passed both ways in challenge-response calls to the service. | [optional] |
| **user_code** | **String** | The one-time password computed using the secret code returned by AssociateSoftwareToken. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VerifyMFADeviceSetupRequest.new(
  friendly_device_name: null,
  access_token: null,
  user_code: null
)
```

