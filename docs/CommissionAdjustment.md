# Vba::CommissionAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_adjustment_key** | **Integer** | Unique identifier for the Commission Activity Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | Account for this Commission Adjustment | [optional] |
| **adjustment_amount** | **Float** | Amount of the adjustment | [optional] |
| **adjustment_date** | **Time** | Date of the adjustment | [optional] |
| **check_batch** | **Integer** | Check Batch for this Commission Adjustment | [optional] |
| **check_id** | **Integer** | Check for this Commission Adjustment | [optional] |
| **commission_agency_rep_rate_key** | **Integer** | Unique identifier for the CommissionAgencyRepRate table | [optional] |
| **commission_transaction_key** | **Integer** | Unique identifier for the CommissionTransaction table | [optional] |
| **commission_adjustment_reason** | **String** | Reason for the Commission Adjustment | [optional] |
| **commission_adjustment_type** | **String** | Type of the Commission Adjustment | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payor_id** | **String** | Payor for this Commission Adjustment | [optional] |
| **pre_payment_adjustment** | **Boolean** | TBD Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **commission_agency_rep_key** | **Integer** |  | [optional] |
| **commission_rate_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionAdjustment.new(
  commission_adjustment_key: null,
  account_key: null,
  adjustment_amount: null,
  adjustment_date: null,
  check_batch: null,
  check_id: null,
  commission_agency_rep_rate_key: null,
  commission_transaction_key: null,
  commission_adjustment_reason: null,
  commission_adjustment_type: null,
  entry_date: null,
  entry_user: null,
  payor_id: null,
  pre_payment_adjustment: null,
  update_date: null,
  update_user: null,
  commission_agency_rep_key: null,
  commission_rate_key: null
)
```

