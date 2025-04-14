# Vba::GroupContractPlanRider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupContractPlan.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupContractPlan.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | References GroupContractPlan.Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References GroupContractPlan.Plan_ID value on the parent record. |  |
| **benefit_code** | **String** | This is the rider being offered for this plan on this contract. The rider is pulled from the list of PlanBenefits with a Rider value &#x3D; 1. |  |
| **combined_volume_max** | **Float** | For disability claims this will work with the individual volume max for each payment and set a total max for all payments. The rest are not covered. | [optional] |
| **employee_contribution** | **Float** | For flex, determines the Employee Contribution amount (or Pct if \&quot;Employee_Contribution_Pct\&quot; is flagged) | [optional] |
| **employee_contribution_pct** | **Boolean** | For flex, notes if the amount entered into \&quot;Employee_Contribution\&quot; is a percent or flat amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **funding_indicator** | **String** | Information only, used in custom client reporting. | [optional] |
| **minimum_benefit** | **Float** | This is the minimum benefit assigned to each disability payment in all benefit calculations (working with volume minimum). | [optional] |
| **premium** | **Float** | No longer in use. | [optional] |
| **salary_pct** | **Float** | If \&quot;Use_Salary_Pct\&quot; is selected, this is the percentage. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_salary_pct** | **Boolean** | Indicates if a percent of salary should be used when determing this benefit amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **volume** | **Float** | For disability enrollment, this shows the weekly (for STD) or monthly (for LTD) benefit amount. | [optional] |
| **volume_max** | **Float** | When using a salary based benefit, this indicates the max volume (benefit amount) for that calculation. | [optional] |
| **volume_min** | **Float** | When using a salary based benefit, this indicates the minimum volume (benefit amount) for that calculation. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractPlanRider.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  plan_id: null,
  benefit_code: null,
  combined_volume_max: null,
  employee_contribution: null,
  employee_contribution_pct: null,
  entry_date: null,
  entry_user: null,
  funding_indicator: null,
  minimum_benefit: null,
  premium: null,
  salary_pct: null,
  update_date: null,
  update_user: null,
  use_salary_pct: null,
  volume: null,
  volume_max: null,
  volume_min: null
)
```

