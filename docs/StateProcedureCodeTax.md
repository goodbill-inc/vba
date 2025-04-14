# Vba::StateProcedureCodeTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** |  |  |
| **procedure_code** | **String** |  |  |
| **apply_state_tax** | **Boolean** |  |  |
| **below_limit_flag** | **Boolean** |  |  |
| **default_percentage_election** | **Float** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **non_taxable_limit** | **Float** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **use_percentage_election** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::StateProcedureCodeTax.new(
  state: null,
  procedure_code: null,
  apply_state_tax: null,
  below_limit_flag: null,
  default_percentage_election: null,
  entry_date: null,
  entry_user: null,
  non_taxable_limit: null,
  update_date: null,
  update_user: null,
  use_percentage_election: null
)
```

