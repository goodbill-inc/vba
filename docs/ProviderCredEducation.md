# Vba::ProviderCredEducation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_education_key** | **Integer** | Unique value for each education record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_education_type_key** | **Integer** | Indicates the type of education associated with the credential. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **education_name** | **String** | Name of the educational institution. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **gpa** | **Float** | Grade point average of the Provider from the associated institution. | [optional] |
| **graduation_date** | **Time** | Date when the Provider graduated from the associated institution. | [optional] |
| **honors** | **String** | Identifies any honors that the Provider obtained from the assoicated institution. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom education values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **start_date** | **Time** | Date when the Provider started their education at the associated institution. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredEducation.new(
  provider_cred_education_key: null,
  cred_education_type_key: null,
  education_name: null,
  entry_date: null,
  entry_user: null,
  gpa: null,
  graduation_date: null,
  honors: null,
  provider_cred_key: null,
  start_date: null,
  update_date: null,
  update_user: null
)
```

