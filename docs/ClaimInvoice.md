# Vba::ClaimInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Invoice Identifier Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description for the Invoice | [optional] |
| **due_date** | **Time** | Due Date of the Invoice | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **invoice_date** | **Time** | Invoice Date for the Invoice | [optional] |
| **invoice_number** | **String** | Unique identifier Invoice Number | [optional] |
| **invoice_status** | **String** | Status of the Invoice | [optional] |
| **payee_id** | **String** | Payee of the Invoice | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoice.new(
  invoice_key: null,
  description: null,
  due_date: null,
  entry_date: null,
  entry_user: null,
  invoice_date: null,
  invoice_number: null,
  invoice_status: null,
  payee_id: null,
  update_date: null,
  update_user: null
)
```

