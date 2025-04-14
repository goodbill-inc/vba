# Vba::ReinsContractCriteriaDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_criteria_detail_key** | **Integer** | Unique identifier for each criteria detail on this criteria. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_exclude** | **Boolean** | Indicates if the range entered is an exclusion range. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_field** | **String** | The field that is part of the criteria (such as benefit, procedure code, diag code, etc.) | [optional] |
| **criteria_value_from** | **String** | The range for this Criteria_Field. | [optional] |
| **criteria_value_thru** | **String** | The range for this Criteria_Field. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reins_contract_criteria_key** | **Integer** | References ReinsContractCriteria.ReinsContractCriteria_Key on parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractCriteriaDetail.new(
  reins_contract_criteria_detail_key: null,
  criteria_exclude: null,
  criteria_field: null,
  criteria_value_from: null,
  criteria_value_thru: null,
  entry_date: null,
  entry_user: null,
  reins_contract_criteria_key: null,
  update_date: null,
  update_user: null
)
```

