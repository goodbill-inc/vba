# Vba::ClaimAnesthesiaProcedureCodeUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_anesthesia_procedure_code_unit_key** | **Integer** |  |  |
| **effective_date** | **Time** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **procedure_code** | **String** |  | [optional] |
| **term_date** | **Time** |  |  |
| **units** | **Float** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAnesthesiaProcedureCodeUnit.new(
  claim_anesthesia_procedure_code_unit_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  procedure_code: null,
  term_date: null,
  units: null,
  update_date: null,
  update_user: null
)
```

