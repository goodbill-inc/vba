# Vba::ProviderProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_profile_key** | **Integer** | Unique identifier for each Provider Profile record. |  |
| **address_provider_id** | **String** | The referenced dependent or \&quot;Address\&quot; provider record. |  |
| **profile_provider_id** | **String** | The referenced parent or \&quot;Profile\&quot; provider record. |  |

## Example

```ruby
require 'vba'

instance = Vba::ProviderProfile.new(
  provider_profile_key: null,
  address_provider_id: null,
  profile_provider_id: null
)
```

