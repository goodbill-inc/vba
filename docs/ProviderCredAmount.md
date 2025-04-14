# Vba::ProviderCredAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom amount values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_amount_key** | **Integer** | The type associated with the credentialing amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **amount** | **Float** | The dollar amount or percentage associated with the credential. | [optional] |
| **amount_pct** | **Boolean** | This indicates that the associated amount represents a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredAmount.new(
  provider_cred_key: null,
  cred_amount_key: null,
  amount: null,
  amount_pct: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

