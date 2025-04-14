# Vba::PremInvoicePaymentExt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Invoice the payment is for | [optional] |
| **prem_payment_key** | **Integer** | Payment that is applied to the invoice | [optional] |
| **payment_id** | **String** | ID for the Payment | [optional] |
| **payment_amount** | **Float** | Amount of the Payment | [optional] |
| **payment_date** | **Time** | Date of the Payment | [optional] |
| **invoice_posted_payments** | **Float** |  | [optional] |
| **payment_posted** | **Float** | Payment posted to the invoice | [optional] |
| **payment_posted_date** | **Time** | Date the Payment was Posted to the invoice | [optional] |
| **payment_applied** | **Float** | Calculated field that sums the PremInvoiceReceived, PremInvoiceSelfAdminReceived and PremInvoiceAdjReceived. | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoicePaymentExt.new(
  invoice_key: null,
  prem_payment_key: null,
  payment_id: null,
  payment_amount: null,
  payment_date: null,
  invoice_posted_payments: null,
  payment_posted: null,
  payment_posted_date: null,
  payment_applied: null,
  entry_user: null,
  entry_date: null,
  update_user: null,
  update_date: null
)
```

