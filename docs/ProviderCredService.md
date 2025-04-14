# Vba::ProviderCredService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom service values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_service_key** | **Integer** | The service being added to this credentialing process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **percentage** | **Integer** | Information Pct. Associated with this service for reporting. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredService.new(
  provider_cred_key: null,
  cred_service_key: null,
  entry_date: null,
  entry_user: null,
  percentage: null,
  update_date: null,
  update_user: null
)
```

