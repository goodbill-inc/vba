# Vba::CareCaseClinicalFactCategoryType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_clinical_fact_category_type1** | **String** | Identifier for the Clinical Fact Category Type |  |
| **care_case_clinical_fact_category** | **String** | Identifier for the Clinical Fact Category | [optional] |
| **description** | **String** | Description of the Clinical Fact Category Type | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseClinicalFactCategoryType.new(
  care_case_clinical_fact_category_type1: null,
  care_case_clinical_fact_category: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

