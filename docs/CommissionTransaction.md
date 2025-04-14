# Vba::CommissionTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_transaction_key** | **Integer** |  |  |
| **check_batch** | **Integer** |  | [optional] |
| **comm_date** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **transaction_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionTransaction.new(
  commission_transaction_key: null,
  check_batch: null,
  comm_date: null,
  description: null,
  entry_date: null,
  entry_user: null,
  transaction_date: null,
  update_date: null,
  update_user: null
)
```

