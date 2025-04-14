# Vba::ClaimInvoiceAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_invoice_adjustment_key** | **Integer** | Unique Claim Invoice Adjustment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjustment_amount** | **Float** | Amount of the Claim Invoice Adjustment | [optional] |
| **adjustment_date** | **Time** | Date the Claim Invoice Adjustment | [optional] |
| **adjustment_reason** | **Integer** | Reason of the Claim Invoice Adjustment | [optional] |
| **batch_claim** | **Integer** | Claim Batch Claim Identifier | [optional] |
| **batch_number** | **Integer** | Claim Batch Number Identifier | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **invoice_key** | **Integer** | Invoice Identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoiceAdjustment.new(
  claim_invoice_adjustment_key: null,
  adjustment_amount: null,
  adjustment_date: null,
  adjustment_reason: null,
  batch_claim: null,
  batch_number: null,
  entry_date: null,
  entry_user: null,
  invoice_key: null,
  update_date: null,
  update_user: null
)
```

