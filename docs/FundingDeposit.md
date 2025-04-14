# Vba::FundingDeposit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_key** | **Integer** | ID of the funding deposit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deposit_date** | **Time** | Date when the deposit occurred. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reconcile_key** | **Integer** | ID of the reconciliation associated with the deposit. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingDeposit.new(
  deposit_key: null,
  deposit_date: null,
  entry_date: null,
  entry_user: null,
  reconcile_key: null,
  update_date: null,
  update_user: null
)
```

