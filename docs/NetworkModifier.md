# Vba::NetworkModifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** |  |  |
| **modifier** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **fee_percent** | **Float** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkModifier.new(
  network_id: null,
  modifier: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

