# Vba::GroupStudentAge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_student_age_key** | **Integer** | Unique identifer for each Student/Age configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_from** | **Integer** | Indicates the starting age of the acceptable student age range. | [optional] |
| **age_thru** | **Integer** | Indicates the ending age of the acceptable student age range. | [optional] |
| **age_type** | **String** | Indicates the exact date when the age range applies: Birth Date - student age settings become effective/expire as of the birth date during the year in which they reach the chosen age. End of Birth Month - student age settings become effective/expired as of the end of the birth moth during the year in which they reach the chosen age. End of Birth Year - student age settings become effective/expired as of the end of the birth year in which they reach the chosen age. | [optional] |
| **division_id** | **String** | References the GroupDivision.Division_ID value on the parent record. | [optional] |
| **effective_date** | **Time** | Date when the student age setting becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex code that will be applied to claims of students from the Group who fall within the designated criteria. | [optional] |
| **group_id** | **String** | References the GroupDivision.Group_ID value on the parent record. | [optional] |
| **state** | **String** | Identifies the state in which the student age settings apply. | [optional] |
| **state_type** | **String** | Indicates if the state used in this settings is the member, subscriber or employer state. | [optional] |
| **term_date** | **Time** | Date when the student age setting expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupStudentAge.new(
  group_student_age_key: null,
  age_from: null,
  age_thru: null,
  age_type: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  group_id: null,
  state: null,
  state_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

