# Vba::PlanBenefitRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_benefit_rate_key** | **Integer** | Unique idenfiter assigned to the Plan Benefit Rate.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **effective_date** | **Time** | Date when the Rate becomes effective. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | This code is applied to any claim that utilizes the benefit rate. | [optional] |
| **network_id** | **String** | Network ID associated with the Plan Benefit Rate | [optional] |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **rate** | **Float** | This area will allow for a limit (dollar or percentage) of how much of the allowed amount can be paid out, per claim detail line, by the specific plan benefit.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **rate_max** | **Float** | Max rate that can be paid out. | [optional] |
| **rate_max_type** | **String** | Type of Benefit Level Maximum: Per Calendar Year - January 1st through December 31st. Per Plan Year - per plan year as defined by the Group. | [optional] |
| **rate_pct** | **Boolean** | Indicates whether the Rate will be a percentage or fixed amount.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **rate_type** | **String** | Type of Benefit Rate: Per Service Line - rate is applied to each service line. Per Day - rate is applied per service date. Per Visit - rate is applied per service date per Provider. |  |
| **term_date** | **Time** | Date when the Rate expires. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitRate.new(
  plan_benefit_rate_key: null,
  benefit_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  network_id: null,
  plan_id: null,
  rate: null,
  rate_max: null,
  rate_max_type: null,
  rate_pct: null,
  rate_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

