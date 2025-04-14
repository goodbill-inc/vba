# Vba::ProviderCredContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom contract values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_contract_key** | **Integer** | References the CredContract value for this provider. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **discount_percent** | **Integer** | Discount associated with this contract. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **signature_date** | **Time** | Signature date for this contract. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredContract.new(
  provider_cred_key: null,
  cred_contract_key: null,
  discount_percent: null,
  entry_date: null,
  entry_user: null,
  signature_date: null,
  update_date: null,
  update_user: null
)
```

