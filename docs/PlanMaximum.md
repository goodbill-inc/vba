# Vba::PlanMaximum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **max_id** | **String** | User-defined Identifier for the Maximum being entered. |  |
| **dental_designation** | **String** | Specifies the Dental Designation options including Tooth, Quadrant, and Arch. | [optional] |
| **effective_date** | **Time** | Having effective and term dates for the maximums allows for changes throughout the life of the plan. The dates defined reference to the date of service of the claim to determine which maximum applies. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **expire_date** | **Time** | Having effective and term dates for the maximums allows for changes throughout the life of the plan. The dates defined reference to the date of service of the claim to determine which maximum applies. | [optional] |
| **frequency** | **Integer** | The frequency defined here states how many of the Max Per apply for the Maximum line. This field has the logic of: Current minus Freq. A zero in this field will force the Maximum to calculate within the year, day, etc. defined in the Max Per. A 4 in this field will force the Maximum to calculate within 5 years, days, etc. defined in the Max Per. | [optional] |
| **max_description** | **String** | Description identifying the Plan Maximum. | [optional] |
| **max_ex_code** | **String** | Each maximum needs and Ex Code defined for explanation during adjudication and for Remittance and EOB&#39;s. A denial Ex Code can only be used Visit Maximums as payable type Maximums can have partially paid lines. A denial code on at claim detail line that should be partially paid will result in the entire line being denied and the Maximum not being fulfilled. | [optional] |
| **max_payable_ex_code** | **String** | Used for dollar maximums. The Ex Code in field 11 would be an informational code which allows the amount over the max to roll to the next line and apply the Denial Ex Code. | [optional] |
| **max_per** | **String** | Defines the timeframe that applies to the Maximum: Day - per service date. Month - per every 30 or 31 days. Calendar Month - per calendar month in which the services were rendered. Calendar Year - per calendar year in which the services were rendered. Plan Year - per plan year as defined for the Member. Lifetime - per lifetime. Occurrence - per occurrence date on the claim header. Birth Date Year - per year defined by the Member&#39;s date of birth. Visit - per service date per Provider. | [optional] |
| **max_sequence** | **Integer** | Each Maximum needs to be sequenced in order for adjudication to determine which Maximum line should apply first. | [optional] |
| **max_type** | **String** | Indicates the type of Maximum: Visits - per service date. Svc Count - per units on service line. Payable Amount - payable amounts from claims. Co-pay Amount - co-pay amounts from claims. Co-Ins Amount - co-ins amounts from claims. Deductible Amount - deductible amounts from claims. Occurrence Payable - payable amount per occurrence date. Occurrence - per occurrence date on the claim header. Svc Count_Payable - payable amount on the service line divided by the number of units on the claim. This will pay the amount per unit for the number of units that are allowed by the rule. | [optional] |
| **max_type_net** | **String** | Indicates whether both In and/or Out of Network benefits apply. | [optional] |
| **member_family** | **String** | Indicates whether the Maximum applies to the Family or each Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **quantity** | **Float** | Defines the dollar or count quantity that should apply to the Maximum. | [optional] |
| **subscriber_reimbursement** | **Boolean** | Checking this box indicates that this benefit maximum represents a maximum that must be paid out in full regardless of the billed amount on the claim or allowable. A new claim will be created to pay any difference to the Subscriber. Note: The database will apply a default value of &#x60;False&#x60; for this field if a value is not provided. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **visit_criteria** | **Integer** | No longer in use. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanMaximum.new(
  plan_id: null,
  benefit_code: null,
  max_id: null,
  dental_designation: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  expire_date: null,
  frequency: null,
  max_description: null,
  max_ex_code: null,
  max_payable_ex_code: null,
  max_per: null,
  max_sequence: null,
  max_type: null,
  max_type_net: null,
  member_family: null,
  quantity: null,
  subscriber_reimbursement: null,
  update_date: null,
  update_user: null,
  visit_criteria: null
)
```

