# Vba::Commission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_key** | **Integer** | Unique identifier for the Commission table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | Unique identifier for the Account | [optional] |
| **adjustment_amount** | **Float** | Adjustment Amounts to this Commission | [optional] |
| **adjustment_amount_received** | **Float** | Adjustment Amounts Received to this Commission | [optional] |
| **calculated_commission_amount** | **Float** | Commission Amount after previous amounts | [optional] |
| **calculated_premium_amount** | **Float** | Premium Amount after previous amounts | [optional] |
| **calculated_premium_amount_received** | **Float** | Premium Amount Received after previous amounts | [optional] |
| **check_batch** | **Integer** | Check Batch for this Commission | [optional] |
| **check_id** | **Integer** | Check for this Commission | [optional] |
| **comm_rate** | **Float** | Decimal value that defines the base rate | [optional] |
| **comm_rate_max** | **Float** | Maximum the rate will be regardless of the calculation | [optional] |
| **comm_rate_min** | **Float** | Minimum the rate will be regardless of the calculation | [optional] |
| **comm_rate_variable1** | **Float** | First variable used in calculating the rate based on the type | [optional] |
| **comm_rate_variable2** | **Float** | Second variable used in calculating the rate based on the type | [optional] |
| **comm_rate_variable3** | **Float** | Third variable used in calculating the rate based on the type | [optional] |
| **comm_scale_from** | **Float** | Beginning range of the amount used for scaling | [optional] |
| **comm_scale_thru** | **Float** | Ending range of the amount used for scaling | [optional] |
| **comm_scale_timeframe** | **String** | Used to detemine what date to begin the range for scaling | [optional] |
| **comm_scale_type** | **String** | Determines what amount the scale is based off of | [optional] |
| **comm_term_range_from** | **Integer** | Beginning range of a number of Days, Months, or Years | [optional] |
| **comm_term_range_thru** | **Integer** | Ending range of a number of Days, Months, or Years | [optional] |
| **comm_term_range_type** | **String** | Determines if Term Range is Days, Months, or Years | [optional] |
| **commission_agency_rep_rate_key** | **Integer** | Unique identifier for the CommissionAgencyRepRate table | [optional] |
| **commission_agency_rep_key** | **Integer** |  | [optional] |
| **commission_rate_key** | **Integer** |  | [optional] |
| **commission_transaction_key** | **Integer** | Unique identifier for the CommissionTransaction table | [optional] |
| **commission_amount** | **Float** | Full Commission Amount without adjusting for previous amounts | [optional] |
| **commission_basis** | **String** | Basis of the Commission | [optional] |
| **commission_cycle** | **String** | Cycle of the Commission | [optional] |
| **commission_date** | **Time** | Date the Commission was calculated for | [optional] |
| **dependent_count** | **Integer** | Number of Dependents used for this Commission | [optional] |
| **division_id** | **String** | Division for this Commission | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | Group for this Commission | [optional] |
| **invoice_adjustment_key** | **Integer** | Unique identifier for the InvoiceAdjustment table | [optional] |
| **invoice_key** | **Integer** | Unique identifier for the PremInvoice table | [optional] |
| **license_number** | **String** | Not used | [optional] |
| **license_state** | **String** | Not used | [optional] |
| **license_type** | **String** | Not used | [optional] |
| **member_count** | **Integer** | Number of Members used for this Commission | [optional] |
| **new_commission_agency_rep_key** | **Integer** | Not used | [optional] |
| **original_commission_agency_rep_key** | **Integer** | Not used | [optional] |
| **payor_id** | **String** | Unique identifier for the Payor | [optional] |
| **plan_id** | **String** | Plan for this Commission | [optional] |
| **prem_rate_key** | **Integer** | PremRate for this Commission | [optional] |
| **premium_amount** | **Float** | Full Premium Amount without adjusting for previous amounts | [optional] |
| **premium_amount_received** | **Float** | Full Premium Amount Received without adjusting for previous amounts | [optional] |
| **rep_split** | **Float** | The amount or percentage of the split | [optional] |
| **rep_split_max** | **Float** | Maximum amount of the split | [optional] |
| **rep_split_min** | **Float** | Minimum amount of the split | [optional] |
| **rep_split_priority** | **Integer** | Priority of the split | [optional] |
| **rep_split_type** | **String** | Determines if split is percent or flat amount | [optional] |
| **subscriber_count** | **Integer** | Number of Subscribers used for this Commission | [optional] |
| **subscriber_id** | **String** | Subscriber for this Commission | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Commission.new(
  commission_key: null,
  account_key: null,
  adjustment_amount: null,
  adjustment_amount_received: null,
  calculated_commission_amount: null,
  calculated_premium_amount: null,
  calculated_premium_amount_received: null,
  check_batch: null,
  check_id: null,
  comm_rate: null,
  comm_rate_max: null,
  comm_rate_min: null,
  comm_rate_variable1: null,
  comm_rate_variable2: null,
  comm_rate_variable3: null,
  comm_scale_from: null,
  comm_scale_thru: null,
  comm_scale_timeframe: null,
  comm_scale_type: null,
  comm_term_range_from: null,
  comm_term_range_thru: null,
  comm_term_range_type: null,
  commission_agency_rep_rate_key: null,
  commission_agency_rep_key: null,
  commission_rate_key: null,
  commission_transaction_key: null,
  commission_amount: null,
  commission_basis: null,
  commission_cycle: null,
  commission_date: null,
  dependent_count: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  invoice_adjustment_key: null,
  invoice_key: null,
  license_number: null,
  license_state: null,
  license_type: null,
  member_count: null,
  new_commission_agency_rep_key: null,
  original_commission_agency_rep_key: null,
  payor_id: null,
  plan_id: null,
  prem_rate_key: null,
  premium_amount: null,
  premium_amount_received: null,
  rep_split: null,
  rep_split_max: null,
  rep_split_min: null,
  rep_split_priority: null,
  rep_split_type: null,
  subscriber_count: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

