# Vba::ClaimInvoicePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Invoice Identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_payment_key** | **Integer** | Unique Payment identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payment_posted** | **Float** | Invoice Payment Amount Applied | [optional] |
| **payment_posted_date** | **Time** | Date of Payment applied | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoicePayment.new(
  invoice_key: null,
  claim_payment_key: null,
  entry_date: null,
  entry_user: null,
  payment_posted: null,
  payment_posted_date: null,
  update_date: null,
  update_user: null
)
```

