# Vba::ProviderPerDiemProcedure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_per_diem_key** | **Integer** |  |  |
| **from_procedure** | **String** |  |  |
| **thru_procedure** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderPerDiemProcedure.new(
  provider_per_diem_key: null,
  from_procedure: null,
  thru_procedure: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

