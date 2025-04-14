# Vba::PremInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Unique identifier for the Invoice Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **additional_invoice_level** | **String** | Specifies invoice level of additional invoices defined on the prem rate. | [optional] |
| **bill_address** | **String** | Address of the group or individual the Invoice is for | [optional] |
| **bill_address2** | **String** | Second line for the Address of the group or individual the Invoice is for | [optional] |
| **bill_city** | **String** | City of the group or individual the Invoice is for | [optional] |
| **bill_county_code** | **String** | County of the group or individual the Invoice is for. | [optional] |
| **bill_name** | **String** | Name of the group or individual the Invoice is for | [optional] |
| **bill_state** | **String** | State of the group or individual the Invoice is for | [optional] |
| **bill_zip_code** | **String** | Zip Code of the group or individual the Invoice is for | [optional] |
| **billing_cycle_id** | **String** | This is the Billing Cycle the invoice was gerenated for. | [optional] |
| **billing_from** | **Time** | First day of the Invoice period | [optional] |
| **billing_thru** | **Time** | Last day of the Invoice period | [optional] |
| **due_date** | **Time** | Due Date of the Invoice | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **finalized** | **Boolean** | Finalized invoices cannot be changed Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **finalized_date** | **Time** | Date the Invoice was Finalized | [optional] |
| **finalized_user** | **String** | User that Finalized the Invoice | [optional] |
| **invoice_date** | **Time** | Date of the Invoice | [optional] |
| **invoice_level** | **String** | Level of the Invoice: Group, Division, or Subscriber | [optional] |
| **invoice_number** | **String** | Number assigned to this Invoice | [optional] |
| **invoice_status** | **String** | Status of the Invoice: Open or Closed | [optional] |
| **original_invoice_key** | **Integer** | Identifies the Invoice that this Invoice was created from | [optional] |
| **pay_period** | **Integer** | This number represents sequence of the payroll from the beginning of the payroll year. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremInvoice.new(
  invoice_key: null,
  additional_invoice_level: null,
  bill_address: null,
  bill_address2: null,
  bill_city: null,
  bill_county_code: null,
  bill_name: null,
  bill_state: null,
  bill_zip_code: null,
  billing_cycle_id: null,
  billing_from: null,
  billing_thru: null,
  due_date: null,
  entry_date: null,
  entry_user: null,
  finalized: null,
  finalized_date: null,
  finalized_user: null,
  invoice_date: null,
  invoice_level: null,
  invoice_number: null,
  invoice_status: null,
  original_invoice_key: null,
  pay_period: null,
  update_date: null,
  update_user: null
)
```

