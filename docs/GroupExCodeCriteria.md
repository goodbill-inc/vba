# Vba::GroupExCodeCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_ex_code_criteria_key** | **Integer** | Unique identifier for each Ex Code criteria for this Group/Division. |  |
| **criteria_from** | **String** | The from value for this criteria. | [optional] |
| **criteria_operator** | **String** | The operator for this part of the criteria. | [optional] |
| **criteria_thru** | **String** | The thru value for this criteria. | [optional] |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. | [optional] |
| **e_x_code** | **String** | The Ex Code that should be applied when this criteria is met during adjudication. | [optional] |
| **group_ex_code_criteria_column_key** | **Integer** | Indicates the column to interrogate during adjudication: 1 - Modifier, 2 - Federal ID or 3 - Total Payable. | [optional] |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupExCodeCriteria.new(
  group_ex_code_criteria_key: null,
  criteria_from: null,
  criteria_operator: null,
  criteria_thru: null,
  division_id: null,
  e_x_code: null,
  group_ex_code_criteria_column_key: null,
  group_id: null
)
```

