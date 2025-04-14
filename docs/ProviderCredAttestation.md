# Vba::ProviderCredAttestation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_cred_attestation_key** | **Integer** | Unique identifier for each attestation question. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **answer_date** | **Time** | Answer to the selected attestation question. | [optional] |
| **answer_numeric** | **Integer** | Answer to the selected attestation question. | [optional] |
| **answer_text** | **String** | Answer to the selected attestation question. | [optional] |
| **answer_yes_no** | **Boolean** | Answer to the selected attestation question. | [optional] |
| **cred_attestation_method_key** | **Integer** | Allows the User to select the method of the selected attestation question. | [optional] |
| **cred_attestation_question_key** | **Integer** | Allows the User to select a question from the available attestation questions. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cred_attestation_source_key** | **Integer** | Allows the User to select the source of the selected attestation question. | [optional] |
| **cred_attestation_type_key** | **Integer** | Allows the User to select the type of the selected attestation question. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **provider_cred_key** | **Integer** | Associates these custom question values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **question_date** | **Time** | Identifies the date when the attestation question was administered. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderCredAttestation.new(
  provider_cred_attestation_key: null,
  answer_date: null,
  answer_numeric: null,
  answer_text: null,
  answer_yes_no: null,
  cred_attestation_method_key: null,
  cred_attestation_question_key: null,
  cred_attestation_source_key: null,
  cred_attestation_type_key: null,
  entry_date: null,
  entry_user: null,
  provider_cred_key: null,
  question_date: null,
  update_date: null,
  update_user: null
)
```

