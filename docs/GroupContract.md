# Vba::GroupContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. |  |
| **coverage_start** | **Time** | Date when the contract becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adult_age** | **Integer** | Identifies the age at which dependents are considered to be adults. Student status information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **advice_to_pay** | **Boolean** | When this option is selected, adjudication to mark every claim as &#39;Advice to Pay&#39; (ATP). Advice to Pay claims do not produce check records when processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **allow_multi_plan** | **String** | No longer in use. | [optional] |
| **benefit_at_member** | **String** | Indicates that the Group offers Member-level benfits. This means that the insured and dependents can enroll in separate coverage. |  |
| **billing_basis** | **String** | No longer in use. | [optional] |
| **billing_cycle_id** | **String** | No longer in use. | [optional] |
| **comm_pct_flag** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **comm_per** | **String** | No longer in use. | [optional] |
| **commission** | **Float** | No longer in use. | [optional] |
| **coverage_end** | **Time** | Date when the contract expires/expired. | [optional] |
| **cutoff_age** | **Integer** | Identifies the age at which dependents are no longer eligible for coverage. Adult Dependent information is required on the enrollment to allow claims to pay for a dependent whose age exceeds the age defined here. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **last_billed** | **Time** | No longer in use. | [optional] |
| **max_at_subscriber** | **String** | Disability setting for Subscriber-level maximums. |  |
| **orig_coverage_end** | **Time** | No longer in use. | [optional] |
| **paid_through** | **Time** | Premium Billing setting that holds the premiums paid through for a selection of contracted subscribers. | [optional] |
| **payor_id** | **String** | No longer in use. | [optional] |
| **policy_number** | **String** | No longer in use. | [optional] |
| **reinsurer_id** | **String** | No longer in use. | [optional] |
| **rider_at_member** | **String** | Indicates that the Group offers Member-level Riders. |  |
| **salaried_benefit** | **Boolean** | For Life &amp; Disability clients, this designates that the subscribers on this contract as having salaried benefit. This impacts how STD and LTD claims are generated during claim creation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **stop_loss_amt** | **Float** | No longer in use. | [optional] |
| **total_at_member** | **String** | Disability setting for totals calculating at the Member level. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContract.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  adult_age: null,
  advice_to_pay: null,
  allow_multi_plan: null,
  benefit_at_member: null,
  billing_basis: null,
  billing_cycle_id: null,
  comm_pct_flag: null,
  comm_per: null,
  commission: null,
  coverage_end: null,
  cutoff_age: null,
  entry_date: null,
  entry_user: null,
  last_billed: null,
  max_at_subscriber: null,
  orig_coverage_end: null,
  paid_through: null,
  payor_id: null,
  policy_number: null,
  reinsurer_id: null,
  rider_at_member: null,
  salaried_benefit: null,
  stop_loss_amt: null,
  total_at_member: null,
  update_date: null,
  update_user: null
)
```

