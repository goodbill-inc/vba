# Vba::SubEnrollmentPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References the Subenrollment.Subscriber_ID value in the parent table. |  |
| **group_id** | **String** | References the Subenrollment.Group_ID value in the parent table. |  |
| **division_id** | **String** | References the Subenrollment.Division_ID value in the parent table. |  |
| **group_coverage_start** | **Time** | References the Subenrollment.Group_Coverage_Start value in the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **start_date** | **Time** | References the Subenrollment.Start_Date value in the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References the GroupContractPlan.Plan_ID value indicating which Plan this member is enrolling that is being offered. |  |
| **plan_start** | **Time** | Start date of Plan coverage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **application_received_date** | **Time** | Holds the date for the subscriber&#39;s application to disclose pre-existing conditions. | [optional] |
| **dollar_amount** | **Float** | The Subscriber&#39;s &#39;Volume&#39; within the selected plan on the enrollment. This will impact invoicing. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **lt_c_daily_benefit_amount** | **Float** | Member elected Daily Benefit Amount | [optional] |
| **lt_c_lifetime_max_amount** | **Float** | Lifetime Max Amount elected | [optional] |
| **lt_c_lifetime_max_days** | **Integer** | Lifetime Max Days elected | [optional] |
| **lt_c_lifetime_max_years** | **Integer** | Lifetime Max Years elected | [optional] |
| **lt_c_monthly_benefit_amount** | **Float** | Member elected Monthly Benefit Amount | [optional] |
| **paid_through** | **Time** | Date that the premiums have been paid through for this plan. The &#39;Paid Thru Exceeded&#39; Ex Code will be applied to Claims adjudicated with a service date beyond this date. | [optional] |
| **plan_end** | **Time** | End date of Plan coverage. | [optional] |
| **reason_id** | **Integer** | This identifier the reason the plan was termed. | [optional] |
| **tier** | **String** | The Subscriber&#39;s &#39;Tier&#39; within the selected plan on the enrollment. This will impact adjudication and invoicing. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_volume_scale** | **Boolean** | This option tells the system to calculate the &#39;Volume&#39; using the Group volume rules. Checking this box will display an elipsis that when clicked will explain the volume calculation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **writing_commission_agency_rep_key** | **Integer** | Unique identifier for the CommissionAgencyRep table | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubEnrollmentPlan.new(
  subscriber_id: null,
  group_id: null,
  division_id: null,
  group_coverage_start: null,
  start_date: null,
  plan_id: null,
  plan_start: null,
  application_received_date: null,
  dollar_amount: null,
  entry_date: null,
  entry_user: null,
  lt_c_daily_benefit_amount: null,
  lt_c_lifetime_max_amount: null,
  lt_c_lifetime_max_days: null,
  lt_c_lifetime_max_years: null,
  lt_c_monthly_benefit_amount: null,
  paid_through: null,
  plan_end: null,
  reason_id: null,
  tier: null,
  update_date: null,
  update_user: null,
  use_volume_scale: null,
  writing_commission_agency_rep_key: null
)
```

