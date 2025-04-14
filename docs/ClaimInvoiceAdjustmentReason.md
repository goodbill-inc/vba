# Vba::ClaimInvoiceAdjustmentReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_reason** | **Integer** | Unique identifier for the Adjustment_Reason Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the Reason |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimInvoiceAdjustmentReason.new(
  adjustment_reason: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

