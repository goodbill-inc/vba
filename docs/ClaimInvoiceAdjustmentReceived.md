# Vba::ClaimInvoiceAdjustmentReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_invoice_adjustment_received_key** | **Integer** | Unique Claim Invoice Adjustment Received identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjustment_received** | **Float** | Amount of the Claim Invoice Adjustment Received | [optional] |
| **adjustment_received_date** | **Time** | Date the Claim Invoice Adjustment Received | [optional] |
| **claim_invoice_adjustment_key** | **Integer** | Unique Claim Invoice Adjustment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_payment_key** | **Integer** | Unique Payment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoiceAdjustmentReceived.new(
  claim_invoice_adjustment_received_key: null,
  adjustment_received: null,
  adjustment_received_date: null,
  claim_invoice_adjustment_key: null,
  claim_payment_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

