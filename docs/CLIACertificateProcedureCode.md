# Vba::CLIACertificateProcedureCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_id** | **Integer** |  |  |
| **procedure_code** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **end_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CLIACertificateProcedureCode.new(
  certificate_id: null,
  procedure_code: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

