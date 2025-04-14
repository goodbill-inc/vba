# Vba::FundingReconcileReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile_key** | **Integer** | ID of the reconciliation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **deposit_key** | **Integer** | ID of the deposit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **selected** | **Boolean** | Flag to indicated if the record is Selected. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingReconcileReceived.new(
  reconcile_key: null,
  deposit_key: null,
  entry_date: null,
  entry_user: null,
  selected: null,
  update_date: null,
  update_user: null
)
```

