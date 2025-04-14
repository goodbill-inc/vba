# Vba::ProviderCredOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom options values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_option_key** | **Integer** | Indicates the type of credentialing option. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **option_result** | **Integer** | Indicates the result of the credentialing option. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredOption.new(
  provider_cred_key: null,
  cred_option_key: null,
  entry_date: null,
  entry_user: null,
  option_result: null,
  update_date: null,
  update_user: null
)
```

