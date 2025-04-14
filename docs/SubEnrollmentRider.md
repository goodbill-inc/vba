# Vba::SubEnrollmentRider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References the SubenrollmentPlan.Subscriber_ID value in the parent table. |  |
| **group_id** | **String** | References the SubenrollmentPlan.Group_ID value in the parent table. |  |
| **division_id** | **String** | References the SubenrollmentPlan.Division_ID value in the parent table. |  |
| **group_coverage_start** | **Time** | References the SubenrollmentPlan.Group_Coverage_Start value in the parent table. |  |
| **start_date** | **Time** | References the SubenrollmentPlan.Start_Date value in the parent table. |  |
| **plan_id** | **String** | References the SubenrollmentPlan.Plan_ID value in the parent table. |  |
| **plan_start** | **Time** | References the SubenrollmentPlan.Plan_Start value in the parent table. |  |
| **benefit_code** | **String** | References the BenefitCodes.Benefit_Code value that is flagged as a Rider on this Plan and indicates the optional coverage this member has enrolled in. |  |
| **from_date** | **Time** | Start date of Rider coverage. |  |
| **billing_member_seq_override** | **String** | By default, billing calculations use the insured demographic information for determing the settings. This value allows another member of the family to be used when determining those calculations. | [optional] |
| **employee_contribution** | **Float** | Indicates the Employee Contribution amount that is used during Diability processing to properly take tax amounts. | [optional] |
| **employee_contribution_pct** | **Boolean** | Indicates if the Emploee Contribution amount entered is a Pct or flat amount.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **external_id** | **String** | Custom value used for Ceridican tax processing interface. | [optional] |
| **initial_volume** | **Float** | This is the volume used in intial volume calculations. This number can either be a flat amount or a percentage of the Member&#39;s gross salary. | [optional] |
| **initial_volume_salary_pct** | **Boolean** | Indicates that the number from the &#39;Initial Volume&#39; field represents a percentage of the Member&#39;s salary. Salaries are found from a Member&#39;s &#39;Financial&#39; detail dropdown.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **lt_c_daily_benefit_amount** | **Float** | Member elected Daily Benefit Amount | [optional] |
| **lt_c_lifetime_max_amount** | **Float** | Lifetime Max Amount elected | [optional] |
| **lt_c_lifetime_max_days** | **Integer** | Lifetime Max Days elected | [optional] |
| **lt_c_lifetime_max_years** | **Integer** | Lifetime Max Years elected | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** | Member elected Monthly Benefit Amount | [optional] |
| **new_commission_agency_rep_key** | **Integer** | No longer in use. | [optional] |
| **original_commission_agency_rep_key** | **Integer** | No longer in use. | [optional] |
| **thru_date** | **Time** | End date of Rider coverage. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_employee_age** | **Boolean** | Billing setting indicating that the employee age is used in all calculations that are age based for this specific Rider.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **use_gi_volume_min_max** | **Boolean** | The &#39;Gaurantee Issue&#39; option is an alternative to the &#39;Use Scale&#39; option. It offers a convenient secondary option for min/max when calculating Rider volume. Plan type must include the \&quot;Life AD&amp;D\&quot; indicator.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **use_volume_scale** | **Boolean** | This option tells the system to calculate the &#39;Volume&#39; using the Group volume rules. Checking this box will display an elipsis that when clicked will explain the volume calculation. Plan type must include the \&quot;Life AD&amp;D\&quot; indicator.  Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;False&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **volume** | **Float** | The Member&#39;s &#39;Volume&#39; within the selected Rider benefit on the enrollment. The Member Enrollment &#39;Volume&#39; has no impact on invoicing. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubEnrollmentRider.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  plan_id: null,
  plan_start: null,
  benefit_code: null,
  from_date: null,
  billing_member_seq_override: null,
  employee_contribution: null,
  employee_contribution_pct: null,
  entry_date: null,
  entry_user: null,
  external_id: null,
  initial_volume: null,
  initial_volume_salary_pct: null,
  lt_c_daily_benefit_amount: null,
  lt_c_lifetime_max_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_monthly_benefit_amount: null,
  new_commission_agency_rep_key: null,
  original_commission_agency_rep_key: null,
  thru_date: null,
  update_date: null,
  update_user: null,
  use_employee_age: null,
  use_gi_volume_min_max: null,
  use_volume_scale: null,
  volume: null
)
```

