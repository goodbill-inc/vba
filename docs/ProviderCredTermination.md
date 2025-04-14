# Vba::ProviderCredTermination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **network_id** | **String** | No longer in use. |  |
| **cred_termination_key** | **Integer** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | No longer in use. | [optional] |
| **entry_user** | **String** | No longer in use. | [optional] |
| **update_date** | **Time** | No longer in use. | [optional] |
| **update_user** | **String** | No longer in use. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredTermination.new(
  provider_cred_key: null,
  network_id: null,
  cred_termination_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

