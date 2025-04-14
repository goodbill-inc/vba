# Vba::CommissionRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_rate_key** | **Integer** | Unique identifier for the Commission Rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | Account of the Commission Rate | [optional] |
| **commission_rate_category** | **String** | Category of the Commission Rate | [optional] |
| **commission_rate_id** | **String** | User defind identifier for the Commission Rate | [optional] |
| **commission_rate_type** | **String** | Type of the Commission Rate | [optional] |
| **commission_basis** | **String** | Commission Basis used for the rate | [optional] |
| **commission_cycle** | **String** | Commission Cycle used for the rate | [optional] |
| **description** | **String** | Description of the Commission Rate | [optional] |
| **division_id** | **String** | Division of the Commission Rate | [optional] |
| **effective_date** | **Time** | Effective Date of the Commission Rate | [optional] |
| **end_date** | **Time** | End Date of the Commission Rate | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | Group of the Commission Rate | [optional] |
| **issue_age_from** | **Integer** | Holds the lower bound of the applicable age range for the commission rate record. | [optional] |
| **issue_age_thru** | **Integer** | Holds the upper bound of the applicable age range for the commission rate record. | [optional] |
| **issue_state** | **String** | Holds the abbreviated state name for the commission rate record. | [optional] |
| **member_seq** | **String** | Member Sequnce of the Commission Rate | [optional] |
| **parent_commission_rate_key** | **Integer** | Commission Rate that this record is a child of | [optional] |
| **parent_rate_cluster** | **String** | Defines which CommissionRateCluster.Rate_Cluster is a parent to this commission rate record. | [optional] |
| **payor_id** | **String** | Payor of the Commission Rate | [optional] |
| **plan_id** | **String** | Plan of the Commission Rate | [optional] |
| **plan_type** | **String** | Holds the plan_type for which this commission rate record applies. | [optional] |
| **pre_payment_adjustment_reason** | **String** | TBD | [optional] |
| **pre_payment_rate** | **Boolean** | TBD Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pre_payment_type** | **String** | TBD | [optional] |
| **prem_rate_key** | **Integer** | Not used | [optional] |
| **rate** | **Float** | Decimal value that defines the base rate | [optional] |
| **rate_max** | **Float** | Maximum the rate will be regardless of the calculation | [optional] |
| **rate_min** | **Float** | Minimum the rate will be regardless of the calculation | [optional] |
| **rate_round_precision** | **Integer** | Precision that the rate is rounded to | [optional] |
| **rate_round_type** | **String** | Type that determine how the rate is rounded | [optional] |
| **rate_variable1** | **Float** | First variable used in calculating the rate based on the type | [optional] |
| **rate_variable2** | **Float** | Second variable used in calculating the rate based on the type | [optional] |
| **rate_variable3** | **Float** | Third variable used in calculating the rate based on the type | [optional] |
| **scale_exclude_header_adjustments** | **Boolean** | Determines if Header Adjustments are included in the scaling Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **scale_from** | **Float** | Beginning range of the amount used for scaling | [optional] |
| **scale_thru** | **Float** | Ending range of the amount used for scaling | [optional] |
| **scale_timeframe** | **String** | Used to detemine what date to begin the range for scaling | [optional] |
| **scale_type** | **String** | Determines what amount the scale is based off of | [optional] |
| **subscriber_id** | **String** | Subscriber of the Commission Rate | [optional] |
| **term_range_date_type** | **String** | Used to detemine what date to begin the range for scaling | [optional] |
| **term_range_from** | **Integer** | Beginning range of a number of Days, Months, or Years | [optional] |
| **term_range_thru** | **Integer** | Ending range of a number of Days, Months, or Years | [optional] |
| **term_range_type** | **String** | Determines if Term Range is Days, Months, or Years | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_initial_premium** | **Boolean** | Flag to calculate commission based on the first calculated premium for this rate and then agent. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRate.new(
  commission_rate_key: null,
  account_key: null,
  commission_rate_category: null,
  commission_rate_id: null,
  commission_rate_type: null,
  commission_basis: null,
  commission_cycle: null,
  description: null,
  division_id: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  issue_age_from: null,
  issue_age_thru: null,
  issue_state: null,
  member_seq: null,
  parent_commission_rate_key: null,
  parent_rate_cluster: null,
  payor_id: null,
  plan_id: null,
  plan_type: null,
  pre_payment_adjustment_reason: null,
  pre_payment_rate: null,
  pre_payment_type: null,
  prem_rate_key: null,
  rate: null,
  rate_max: null,
  rate_min: null,
  rate_round_precision: null,
  rate_round_type: null,
  rate_variable1: null,
  rate_variable2: null,
  rate_variable3: null,
  scale_exclude_header_adjustments: null,
  scale_from: null,
  scale_thru: null,
  scale_timeframe: null,
  scale_type: null,
  subscriber_id: null,
  term_range_date_type: null,
  term_range_from: null,
  term_range_thru: null,
  term_range_type: null,
  update_date: null,
  update_user: null,
  use_initial_premium: null
)
```

