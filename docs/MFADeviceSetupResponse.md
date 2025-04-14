# Vba::MFADeviceSetupResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qr_code** | **String** | A Base64-encoded string representing the QR code image generated from the secret code.  Can be used for setting up multi-factor authentication with an authenticator app. | [optional] |
| **secret_code** | **String** | A unique generated shared secret code that is used in the TOTP algorithm to generate a one-time code. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MFADeviceSetupResponse.new(
  qr_code: null,
  secret_code: null
)
```

