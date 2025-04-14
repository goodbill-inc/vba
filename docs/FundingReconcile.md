# Vba::FundingReconcile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile_key** | **Integer** | ID of the reconciliation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | ID of the account associated with the reconciliation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **begin_balance** | **Float** | Beginning balance of the reconciliation | [optional] |
| **begin_date** | **Time** | Beginning Date of the reconciliation. | [optional] |
| **electronic_statement** | **Boolean** | Indicates that the associated reconciliation has an electronic statement. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **reconcile_date** | **Time** | Date when the reconciliation occurred. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **reconcile_status** | **String** | Most recent status of the reconciliation. &#39;Reconcile Statuses&#39; are configured within &#39;Accounting Configuration&#39;. | [optional] |
| **reconcile_user** | **String** | User associated with the reconciliation |  |
| **statement_balance** | **Float** | Balance of the reconciliation statement | [optional] |
| **statement_date** | **Time** | Date when the statement associated with the reconciliation was submitted. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingReconcile.new(
  reconcile_key: null,
  account_key: null,
  begin_balance: null,
  begin_date: null,
  electronic_statement: null,
  entry_date: null,
  entry_user: null,
  reconcile_date: null,
  reconcile_status: null,
  reconcile_user: null,
  statement_balance: null,
  statement_date: null,
  update_date: null,
  update_user: null
)
```

