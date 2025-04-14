# Vba::ClaimInvoiceReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_invoice_received_key** | **Integer** | Unique Claim Invoice Received identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_payment_key** | **Integer** | Unique Payment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **invoice_key** | **Integer** | Invoice Identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **received_amount** | **Float** | Amount of the Payment Received | [optional] |
| **received_date** | **Time** | Date the Payment Received | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoiceReceived.new(
  claim_invoice_received_key: null,
  claim_payment_key: null,
  entry_date: null,
  entry_user: null,
  invoice_key: null,
  received_amount: null,
  received_date: null,
  update_date: null,
  update_user: null
)
```

