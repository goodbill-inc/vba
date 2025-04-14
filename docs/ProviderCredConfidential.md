# Vba::ProviderCredConfidential

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom confidential values with the credentialing process (ProviderCred.ProviderCred_Key) |  |
| **cred_confidential_key** | **Integer** | References the CredConfidentail value for this provider. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredConfidential.new(
  provider_cred_key: null,
  cred_confidential_key: null
)
```

