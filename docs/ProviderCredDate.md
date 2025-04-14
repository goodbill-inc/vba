# Vba::ProviderCredDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_key** | **Integer** | Associates these custom date values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_date_key** | **Integer** | Indicates the type of credentialing date. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the associated credential becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **term_date** | **Time** | Date when the associated credential expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredDate.new(
  provider_cred_key: null,
  cred_date_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

