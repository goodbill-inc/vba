# Vba::CommissionRepAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_rep_account_key** | **Integer** |  |  |
| **account_key** | **Integer** |  |  |
| **commission_rep_key** | **Integer** |  |  |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRepAccount.new(
  commission_rep_account_key: null,
  account_key: null,
  commission_rep_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

