# Vba::ProviderAuthExemptProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_auth_exempt_procedure_key** | **Integer** |  |  |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **from_procedure** | **String** |  |  |
| **provider_id** | **String** |  |  |
| **term_date** | **Time** |  | [optional] |
| **thru_procedure** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderAuthExemptProcedure.new(
  provider_auth_exempt_procedure_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  from_procedure: null,
  provider_id: null,
  term_date: null,
  thru_procedure: null,
  update_date: null,
  update_user: null
)
```

