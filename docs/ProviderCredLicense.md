# Vba::ProviderCredLicense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_license_key** | **Integer** | Unique identifier for each license record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_license_type_key** | **Integer** | Indicates the type of license associated with the credential. | [optional] |
| **effective_date** | **Time** | Date when the license becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **license_name** | **String** | Name of the assoicated license. | [optional] |
| **license_number** | **String** | License number of the associated license. | [optional] |
| **ps_v_date** | **Time** | Primary Source Verification date. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom license values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **specialty_code** | **String** | Specialty associated with the license. | [optional] |
| **state** | **String** | State in which the associated license is effective. | [optional] |
| **term_date** | **Time** | Date when the license expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredLicense.new(
  provider_cred_license_key: null,
  cred_license_type_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  license_name: null,
  license_number: null,
  ps_v_date: null,
  provider_cred_key: null,
  specialty_code: null,
  state: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

