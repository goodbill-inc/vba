# Vba::ProviderCredPracticeDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom practice detail values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_practice_type_key** | **Integer** | Identifies the practice type. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **additional_details** | **String** | Free form entry of details for this practice record. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredPracticeDetail.new(
  provider_cred_key: null,
  cred_practice_type_key: null,
  additional_details: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

