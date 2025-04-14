# Vba::ClaimInvoiceDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_key** | **Integer** | Invoice the claim is on Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **batch_number** | **Integer** | Unique identifier for the Batch Number Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **batch_claim** | **Integer** | Unique identifier for the Batch Claim Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoiceDetail.new(
  invoice_key: null,
  batch_number: null,
  batch_claim: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

