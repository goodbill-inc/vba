# Vba::FundingTransferFunds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **issue_amount** | **Float** |  | [optional] |
| **issue_type** | **String** |  | [optional] |
| **issue_id** | **String** |  | [optional] |
| **issue_name** | **String** |  | [optional] |
| **issue_date** | **Time** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **funding_type** | **String** |  | [optional] |
| **transfer_funding_type** | **String** |  | [optional] |
| **transfer_payor_id** | **String** |  | [optional] |
| **transfer_account_key** | **Integer** |  | [optional] |
| **create_check** | **Boolean** |  | [optional] |
| **expense_type** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingTransferFunds.new(
  payor_id: null,
  account_key: null,
  issue_amount: null,
  issue_type: null,
  issue_id: null,
  issue_name: null,
  issue_date: null,
  received_date: null,
  funding_type: null,
  transfer_funding_type: null,
  transfer_payor_id: null,
  transfer_account_key: null,
  create_check: null,
  expense_type: null,
  payee_id: null,
  user_id: null
)
```

