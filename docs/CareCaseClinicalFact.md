# Vba::CareCaseClinicalFact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_clinical_fact_key** | **Integer** | Identifier for the CareCaseClinicalFact Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **care_case_clinical_fact_category** | **String** | User Managed field that ties to the Clinical Fact in the system | [optional] |
| **care_case_clinical_fact_category_type** | **String** | User Managed field that ties to the Clinical Fact Type in the system | [optional] |
| **case_key** | **Integer** | Identifier of the case. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseClinicalFact.new(
  care_case_clinical_fact_key: null,
  care_case_clinical_fact_category: null,
  care_case_clinical_fact_category_type: null,
  case_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

