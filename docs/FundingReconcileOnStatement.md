# Vba::FundingReconcileOnStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_statement_key** | **Integer** | ID of the reconciliation offset. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **issue_amount** | **Float** | Offset amount used for the funding reconciliation. | [optional] |
| **issue_date** | **Time** | Date when the associated issue was created. | [optional] |
| **issue_id** | **String** | ID of the issue associated with the funding reconciliation. | [optional] |
| **issue_type** | **String** | Issue Type&#39; associated with the funding reconciliation. &#39;Funding Issue Types&#39; are configured within &#39;Accounting Configuration&#39;. | [optional] |
| **payor_id** | **String** | ID of the Payor being used for the associated reconciliation. | [optional] |
| **reconcile_key** | **Integer** | ID of the reconciliation associated with the offset. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reconcile_type** | **String** | Indicates whether the associated offset is a credit or a debit. | [optional] |
| **selected** | **Boolean** | Indicates that this offest will be applied to the current reconciliation when the User selects &#39;Update&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingReconcileOnStatement.new(
  on_statement_key: null,
  entry_date: null,
  entry_user: null,
  issue_amount: null,
  issue_date: null,
  issue_id: null,
  issue_type: null,
  payor_id: null,
  reconcile_key: null,
  reconcile_type: null,
  selected: null,
  update_date: null,
  update_user: null
)
```

