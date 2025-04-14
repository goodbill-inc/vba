# Vba::GroupFlex

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References Groups.Group_ID value on the parent record. |  |
| **plan_id** | **String** | References the Plans.Plan_ID on the parent record. Must be a plan with a plan type flagged as Flex. |  |
| **calendar_year** | **String** | The numeric calendar year for this flex period. For example, 2022. |  |
| **contribution_amount** | **Float** | This is the employer contribution amount. | [optional] |
| **contribution_pct** | **Boolean** | Indicates if the amount entered in \&quot;Contribution_Amount\&quot; is a percent or flat amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **contribution_pct_type** | **String** | When \&quot;Contribution_Pct\&quot; is used, this notes what the contribution percentage is based upon: EMPELE - % of Employee Contribution, SALNET - % of Employee Net Salary, SALGROSS - % of Employee Gross Salary. | [optional] |
| **contribution_schedule** | **String** | References ContributionSchedule.Contribution_Schedule to define the employer contribution schedule for this flex offering. | [optional] |
| **effective_date** | **Time** | The effective date for this flex period. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **first_contribution_date** | **Time** | Notes the date that is the start date that employer contribution schedule will build upon to lay out the contributions for the flex period. | [optional] |
| **first_payment_date** | **Time** | Notes the date that is the start date that payment schedule will build upon to lay out the payment for the flex period. | [optional] |
| **first_reimburse_date** | **Time** | Notes the date that is the start date that reimbursement schedule will build upon to lay out the reimbursments for the flex period. | [optional] |
| **flex_vendor** | **String** | For EDI processing and integrations, notes the external flex vendor used for procesisng (typically card swipes). | [optional] |
| **grace_period** | **Integer** | The grace period value based on \&quot;Grace_Period_Type\&quot; for how long you have to process a flex claim after the term date. | [optional] |
| **grace_period_type** | **String** | Combined with \&quot;Grace_Period\&quot;, notes the grace period in: D - Days or M - Months. | [optional] |
| **max_election** | **Float** | The Max Election a member can enter for this offering. | [optional] |
| **minimum_payment** | **Float** | The minimum payment that can be applied during flex claims processing. | [optional] |
| **payment_schedule** | **String** | References PaymentSchedule.Payment_Schedule to define the payment schedule for this flex offering. | [optional] |
| **reimburse_schedule** | **String** | References ReimburseSchedule.Reimburse_Schedule to define the reimbursement schedule for this flex offering. | [optional] |
| **rollover_amount** | **Float** | The amount of flex contribution that can be rolled over to a subsquent flex offering on this same group. | [optional] |
| **submit_period** | **Integer** | The submit period value based on \&quot;Submit_Period_Type\&quot; for how long you have to submit a flex claim after the term date. | [optional] |
| **submit_period_type** | **String** | Combined with \&quot;Submit_Period\&quot;, notes the submission period in: D - Days or M - Months. | [optional] |
| **term_date** | **Time** | The term date for this flex period. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupFlex.new(
  group_id: null,
  plan_id: null,
  calendar_year: null,
  contribution_amount: null,
  contribution_pct: null,
  contribution_pct_type: null,
  contribution_schedule: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  first_contribution_date: null,
  first_payment_date: null,
  first_reimburse_date: null,
  flex_vendor: null,
  grace_period: null,
  grace_period_type: null,
  max_election: null,
  minimum_payment: null,
  payment_schedule: null,
  reimburse_schedule: null,
  rollover_amount: null,
  submit_period: null,
  submit_period_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

