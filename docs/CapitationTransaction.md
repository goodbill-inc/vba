# Vba::CapitationTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_transaction_key** | **Integer** | ID for the capitation transaction. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_batch** | **Integer** | Identifies the batch to which the transaction&#39;s check belongs. | [optional] |
| **description** | **String** | Description of the capitation transaction. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **payee_id** | **String** | ID of the Payee associated with the capitation transaction. | [optional] |
| **transaction_date** | **Time** | Date when the capitation transaction occurred. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationTransaction.new(
  capitation_transaction_key: null,
  check_batch: null,
  description: null,
  entry_date: null,
  entry_user: null,
  payee_id: null,
  transaction_date: null,
  update_date: null,
  update_user: null
)
```

