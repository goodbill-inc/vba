# Vba::FundingStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile_key** | **Integer** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **begin_date** | **Time** |  | [optional] |
| **begin_balance** | **Float** |  | [optional] |
| **statement_date** | **Time** |  | [optional] |
| **statement_balance** | **Float** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **electronic_statements** | [**Array&lt;ElectronicStatement&gt;**](ElectronicStatement.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingStatement.new(
  reconcile_key: null,
  account_key: null,
  begin_date: null,
  begin_balance: null,
  statement_date: null,
  statement_balance: null,
  user_id: null,
  electronic_statements: null
)
```

