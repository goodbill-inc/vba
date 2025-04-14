# Vba::FundingAccountBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **account_balance** | **Float** |  | [optional] |
| **account_cleared_balance** | **Float** |  | [optional] |
| **issue_amount** | **Float** |  | [optional] |
| **cleared_amount** | **Float** |  | [optional] |
| **void_amount** | **Float** |  | [optional] |
| **deposit_amount** | **Float** |  | [optional] |
| **check_paid_amount** | **Float** |  | [optional] |
| **check_cleared_amount** | **Float** |  | [optional] |
| **check_void_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingAccountBalance.new(
  payor_id: null,
  account_key: null,
  account_balance: null,
  account_cleared_balance: null,
  issue_amount: null,
  cleared_amount: null,
  void_amount: null,
  deposit_amount: null,
  check_paid_amount: null,
  check_cleared_amount: null,
  check_void_amount: null
)
```

