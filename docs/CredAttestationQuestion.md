# Vba::CredAttestationQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cred_attestation_question_key** | **Integer** | Unique Identity Key associated with this table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **date_answer** | **Boolean** | Identifies that the question requires a date answer. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **default_method_key** | **Integer** | Specifies the default method that will be used to administer the question. | [optional] |
| **default_source_key** | **Integer** | Specifies the default source of the question. | [optional] |
| **default_type_key** | **Integer** | Specifies the default question type. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **numeric_answer** | **Boolean** | Identifies that the question requires a numeric answer. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **question** | **String** | Displays the text of the question. | [optional] |
| **text_answer** | **Boolean** | Identifies that the question requires a text answer. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **yes_no_answer** | **Boolean** | Identifies that the question requires a yes or no answer. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::CredAttestationQuestion.new(
  cred_attestation_question_key: null,
  date_answer: null,
  default_method_key: null,
  default_source_key: null,
  default_type_key: null,
  entry_date: null,
  entry_user: null,
  numeric_answer: null,
  question: null,
  text_answer: null,
  update_date: null,
  update_user: null,
  yes_no_answer: null
)
```

