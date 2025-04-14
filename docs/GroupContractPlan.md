# Vba::GroupContractPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupContract.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupContract.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | References GroupContract.Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References Plans.Plan_ID on the parent record. |  |
| **account_key** | **Integer** | Identifies the banking account associated with the selected contract. | [optional] |
| **advice_to_pay** | **Boolean** | When this option is selected, adjudication to mark every claim as &#39;Advice to Pay&#39; (ATP). Advice to Pay claims do not produce check records when processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **bpl** | **String** | No longer in use. | [optional] |
| **billing_basis** | **String** | No longer in use. | [optional] |
| **calc_interest** | **Boolean** | Indicates if interest is to be calculated for this contract plan during check processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach** | **Boolean** | For ACH payments, Indicates if interest is to be calculated for this contract plan during check processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach_min** | **Float** | For ACH payments, If interest is to be calculated, this value determines the minimum interest that can be applied. Any interst calculated below this number is ignored. | [optional] |
| **calc_interest_ach_network_option** | **String** | For ACH payments, Indicates if interest is to be calculated by: N - In Network or O - Out of Network. Leave this blank if interest applies to both. | [optional] |
| **calc_interest_ach_on_adj** | **Boolean** | For ACH payments, Flag indicating if interest should be calculated on adjustment claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach_option** | **String** | For ACH payments, Indicates what field will be used for interest calculation: B - Billed Amount, A - Allowed Amount or P - Paid Amount. | [optional] |
| **calc_interest_ach_pct** | **Float** | For ACH payments, Indicates the interest percentage to be applied during interest calculations. | [optional] |
| **calc_interest_ach_prompt_pay_freq** | **Integer** | For ACH payments, This is the frequency of \&quot;Calc_Interest_Prompt_Pay_Type\&quot; for determining if interest is applicable. | [optional] |
| **calc_interest_ach_prompt_pay_type** | **String** | For ACH payments, This is the \&quot;Calc_Interest_Prompt_Pay_Freq\&quot; in number of: D - Days, M - Months or Y - Years. | [optional] |
| **calc_interest_min** | **Float** | If interest is to be calculated, this value determines the minimum interest that can be applied. Any interst calculated below this number is ignored. | [optional] |
| **calc_interest_network_option** | **String** | Indicates if interest is to be calculated by: N - In Network or O - Out of Network. Leave this blank if interest applies to both. | [optional] |
| **calc_interest_on_adj** | **Boolean** | Flag indicating if interest should be calculated on adjustment claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_option** | **String** | Indicates what field will be used for interest calculation: B - Billed Amount, A - Allowed Amount or P - Paid Amount. | [optional] |
| **calc_interest_pct** | **Float** | Indicates the interest percentage to be applied during interest calculations. | [optional] |
| **calc_interest_prompt_pay_freq** | **Integer** | This is the frequency of \&quot;Calc_Interest_Prompt_Pay_Type\&quot; for determining if interest is applicable. | [optional] |
| **calc_interest_prompt_pay_type** | **String** | This is the \&quot;Calc_Interest_Prompt_Pay_Freq\&quot; in number of: D - Days, M - Months or Y - Years. | [optional] |
| **dependent_contribution** | **Float** | For flex, determines the Dependent Contribution amount (or Pct if \&quot;Dependent_Contribution_Pct\&quot; is flagged) | [optional] |
| **dependent_contribution_pct** | **Boolean** | For flex, notes if the amount entered into \&quot;Dependent_Contribution\&quot; is a percent or flat amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disability_pay_through_day** | **Integer** | This is the day number of the week that disability claims created through the disability advisor will run through. This allows a disability claim with an ETD that ends in the middle of a week to be pushed through the end of that week if needed. | [optional] |
| **employee_contribution** | **Float** | For flex, determines the Employee Contribution amount (or Pct if \&quot;Employee_Contribution_Pct\&quot; is flagged) | [optional] |
| **employee_contribution_pct** | **Boolean** | For flex, notes if the amount entered into \&quot;Employee_Contribution\&quot; is a percent or flat amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **end_coverage_age** | **Integer** | This is the age of the subscribers on the day based on \&quot;End_Coverage_Age_Type\&quot; before benefits are no longer eligible. | [optional] |
| **end_coverage_age_type** | **String** | The type of age in years entered in \&quot;End_Coverage_Age\&quot; by type: EXACTDATE - Age Exact Date, BEGINMONTH - Age at Beginning of month, ENDMONTH - Age at End of month, BEGINYEAR - Age at the beginning of the year, or ENDYEAR - Age at the End of the year. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exempt_federal** | **Boolean** | Indicates a federal exemption as part of the selected contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_medicare** | **Boolean** | indicates a medicare exemption as part of the selected contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_soc_sec** | **Boolean** | Indicates a social security exemption as part of the selected contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exempt_state** | **Boolean** | Indicates a state exemption as part of the selected contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **federal_tax_day_limit** | **Integer** | Limit of days for the federal tax exemption. | [optional] |
| **federal_wage_limit** | **Float** | Wage limit for the federal tax exemption. | [optional] |
| **locator** | **String** | No longer in use. | [optional] |
| **medicare_tax_day_limit** | **Integer** | Limit of days for the medicare tax exemption. | [optional] |
| **medicare_wage_limit** | **Float** | Wage liimit for the medicare tax exemption. | [optional] |
| **minimum_benefit** | **Float** | For disability claims, this indicates the minimum benefit (weekly for STD plans or monthly for LTD plans). | [optional] |
| **paid_through** | **Time** | Premium Billing setting that holds the premiums paid through for a selection of contracted subscribers. | [optional] |
| **payor_id** | **String** | References PayorAccount.Payor_ID value on parent record. | [optional] |
| **prorate_fica** | **Boolean** | Notes if Disability Claims should Prorate the FICA tax based on the disability payment duration. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **r_x_bin** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **r_x_cs_contact** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **r_x_cs_phone** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **r_x_grp** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **r_x_name** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **r_x_pcn** | **String** | Information fields used to hold RX information on this Contract Plan for reporting and interfaces. | [optional] |
| **retirement_plan** | **Boolean** | Flag to indicate if this plan on this contract is a retirement plan. This is information only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **salary_pct** | **Float** | If \&quot;Use_Salary_Pct\&quot; option is enabled, this indicatres the percent of salary. | [optional] |
| **soc_sec_tax_day_limit** | **Integer** | Limit of days for the social security tax exemption. | [optional] |
| **soc_sec_wage_limit** | **Float** | Wage limite for Social Security tax exemption. | [optional] |
| **state_tax_day_limit** | **Integer** | Limit of days for the state tax exemption. | [optional] |
| **state_wage_limit** | **Float** | Wage limit for the state tax exemption. | [optional] |
| **tax_day_limit_type** | **Integer** | Indicates if the tax day limitations are by day or calendar months.  The database default for this field is &#39;1&#39;.  Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_plan_options** | **Boolean** | Used on the front end to indicate if the plan options should be shown to the user, has not backend functional impact. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_salary_pct** | **Boolean** | Indicates that disability should be based upon salary percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **volume** | **Float** | No longer in use. | [optional] |
| **volume_max** | **Float** | Indicates the benefit maximum of the disabiltiy plan. | [optional] |
| **volume_min** | **Float** | Indicates the benefit minimum of the disability plan. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractPlan.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  plan_id: null,
  account_key: null,
  advice_to_pay: null,
  bpl: null,
  billing_basis: null,
  calc_interest: null,
  calc_interest_ach: null,
  calc_interest_ach_min: null,
  calc_interest_ach_network_option: null,
  calc_interest_ach_on_adj: null,
  calc_interest_ach_option: null,
  calc_interest_ach_pct: null,
  calc_interest_ach_prompt_pay_freq: null,
  calc_interest_ach_prompt_pay_type: null,
  calc_interest_min: null,
  calc_interest_network_option: null,
  calc_interest_on_adj: null,
  calc_interest_option: null,
  calc_interest_pct: null,
  calc_interest_prompt_pay_freq: null,
  calc_interest_prompt_pay_type: null,
  dependent_contribution: null,
  dependent_contribution_pct: null,
  disability_pay_through_day: null,
  employee_contribution: null,
  employee_contribution_pct: null,
  end_coverage_age: null,
  end_coverage_age_type: null,
  entry_date: null,
  entry_user: null,
  exempt_federal: null,
  exempt_medicare: null,
  exempt_soc_sec: null,
  exempt_state: null,
  federal_tax_day_limit: null,
  federal_wage_limit: null,
  locator: null,
  medicare_tax_day_limit: null,
  medicare_wage_limit: null,
  minimum_benefit: null,
  paid_through: null,
  payor_id: null,
  prorate_fica: null,
  r_x_bin: null,
  r_x_cs_contact: null,
  r_x_cs_phone: null,
  r_x_grp: null,
  r_x_name: null,
  r_x_pcn: null,
  retirement_plan: null,
  salary_pct: null,
  soc_sec_tax_day_limit: null,
  soc_sec_wage_limit: null,
  state_tax_day_limit: null,
  state_wage_limit: null,
  tax_day_limit_type: null,
  update_date: null,
  update_user: null,
  use_plan_options: null,
  use_salary_pct: null,
  volume: null,
  volume_max: null,
  volume_min: null
)
```

