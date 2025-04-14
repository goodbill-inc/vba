# Vba::ProviderCredCertification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_certification_key** | **Integer** | Unique identifier for each certification record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **certification_date** | **Time** | Date when the certification becomes/became effective. | [optional] |
| **certification_details** | **String** | Allows the User to add a description of the assocaited certification. | [optional] |
| **certification_expiration_date** | **Time** | Date when the certification expires/expired. | [optional] |
| **cred_certification_key** | **Integer** | Indicates the type of certification for the credential. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **ps_v_date** | **Time** | Primary Source Verification date. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom certification values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredCertification.new(
  provider_cred_certification_key: null,
  certification_date: null,
  certification_details: null,
  certification_expiration_date: null,
  cred_certification_key: null,
  entry_date: null,
  entry_user: null,
  ps_v_date: null,
  provider_cred_key: null,
  update_date: null,
  update_user: null
)
```

