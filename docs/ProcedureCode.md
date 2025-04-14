# Vba::ProcedureCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **procedure_code** | **String** | Code assigned to the associated procedure. |  |
| **age_range_type** | **String** | Indicates how age is defined within the age range. &#39;End of month&#39; means that the age will be updated when the birth ends. &#39;Birth Date&#39; means that the age will be updated on the date of birth. | [optional] |
| **age_restricted** | **Boolean** | Indicates that the associated procedure is limited to a certain age range. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_type** | **String** | Identifies how the age range is defined. | [optional] |
| **category_id** | **String** | Indicates the procedure category that the associated procedure belongs to. | [optional] |
| **description** | **String** | Text field where the User may enter a short description of the associated procedure. | [optional] |
| **effective_date** | **Time** | Date when the associated procedure code becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **from_age** | **Integer** | Identifies the starting age for the acceptable age range for the associated procedure code. | [optional] |
| **gender** | **String** | Indicates a required gender for the associated procedure code. | [optional] |
| **long_description** | **String** | Text field where the User may enter a longer and more detailed description of the associated procedure. | [optional] |
| **network_price** | **Float** | Network Price associated with the procedure code | [optional] |
| **pend_ex_code** | **String** | Indicates the Ex Code that will be applied to claims that contain the associated procedure. | [optional] |
| **pend_flag** | **String** | Allows the User to choose an Ex Code that will be applied to claims that contain the associated procedure. | [optional] |
| **procedure_group** | **Integer** | Identifies the group of procedures that the associated procedure belongs to. | [optional] |
| **qualifier** | **String** | Identifies a procedure code as a revenue code. | [optional] |
| **require_auth** | **Boolean** | Indicates that an auth will be required when the associated procedure is used within a claim. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | Date when the associated procedure code expires/expired. | [optional] |
| **thru_age** | **Integer** | Identifies the ending age for the acceptable age range for the associated procedure code. | [optional] |
| **treatment_type** | **String** | Identifier specifying the treatment type associated with the procedure code | [optional] |
| **uc_r_price** | **Float** | Usual and Customary Price associated with the procedure code | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureCode.new(
  procedure_code: null,
  age_range_type: null,
  age_restricted: null,
  age_type: null,
  category_id: null,
  description: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  from_age: null,
  gender: null,
  long_description: null,
  network_price: null,
  pend_ex_code: null,
  pend_flag: null,
  procedure_group: null,
  qualifier: null,
  require_auth: null,
  term_date: null,
  thru_age: null,
  treatment_type: null,
  uc_r_price: null,
  update_date: null,
  update_user: null
)
```

