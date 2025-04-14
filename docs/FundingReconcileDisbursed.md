# Vba::FundingReconcileDisbursed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile_key** | **Integer** | ID of the reconciliation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_id** | **Integer** | ID of the check being used for the disbursement. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **selected** | **Boolean** | Indicates if the check was selected. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingReconcileDisbursed.new(
  reconcile_key: null,
  check_id: null,
  entry_date: null,
  entry_user: null,
  selected: null,
  update_date: null,
  update_user: null
)
```

