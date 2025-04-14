# Vba::PayeeAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_account_key** | **Integer** |  |  |
| **account_key** | **Integer** |  |  |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **payee_id** | **String** |  |  |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **wire_transfer** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::PayeeAccount.new(
  payee_account_key: null,
  account_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  payee_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  wire_transfer: null
)
```

