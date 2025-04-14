# Vba::PlanPreEx

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. |  |
| **coverage_type** | **String** | Coverage type, based on enrollment, that will be applied by the pre-existing condition. |  |
| **disclosed_ex_code** | **String** | ExCode applied to this PlanPreEx disclosure. | [optional] |
| **disclosed_from_range** | **Integer** | Holds the value of the lower bound of a range defined for disclosed pre-existing  entry. | [optional] |
| **disclosed_pre_ex_amount** | **Float** | Amount allowed before a pend/deny on a pre-ex claim detail line, use in conjunction with Disclosed_Ex_Code. | [optional] |
| **disclosed_range_type** | **String** | Defines the type of range used with the bounds of the disclosed range. D &#x3D; Days, M &#x3D; Months. | [optional] |
| **disclosed_thru_range** | **Integer** | Holds the value of the upper bound of a range defined for disclosed pre-existing  entry. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex Code associated with the pre-existing condition. | [optional] |
| **from_range** | **Integer** | Beginning of the duration range that the pre-existing Conditon will apply to. | [optional] |
| **pre_ex_amount** | **Float** | Dollar amount that will be applied by the pre-existing condition before pending or denying claims. | [optional] |
| **range_type** | **String** | Unit of time used to measure the pre-existing Condition duration. Limited to units of either months or days. | [optional] |
| **thru_range** | **Integer** | End of the duration range that the pre-existing Conditon will apply to. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanPreEx.new(
  plan_id: null,
  coverage_type: null,
  disclosed_ex_code: null,
  disclosed_from_range: null,
  disclosed_pre_ex_amount: null,
  disclosed_range_type: null,
  disclosed_thru_range: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  from_range: null,
  pre_ex_amount: null,
  range_type: null,
  thru_range: null,
  update_date: null,
  update_user: null
)
```

