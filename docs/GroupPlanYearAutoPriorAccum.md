# Vba::GroupPlanYearAutoPriorAccum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_plan_year_auto_prior_accum_key** | **Integer** | Unique identifer for each auto prior accum configuration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | References GroupPlanYear.Division_ID value on the parent record. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References GroupPlanYear.Group_ID value on the parent record. |  |
| **plan_type** | **String** | References GroupPlanYear.Plan_Type value on the parent record. |  |
| **plan_year** | **String** | References GroupPlanYear.Plan_Year value on the parent record. |  |
| **prior_accum_benefit_code** | **String** | When auto prior accums are set, this indicates the Benefit_Code value to be written to the prior accum record. | [optional] |
| **prior_accum_plan_type** | **String** | When auto prior accums are set, this indicates the Plan_Type value to be written to the prior accum record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupPlanYearAutoPriorAccum.new(
  group_plan_year_auto_prior_accum_key: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  plan_type: null,
  plan_year: null,
  prior_accum_benefit_code: null,
  prior_accum_plan_type: null,
  update_date: null,
  update_user: null
)
```

