# Vba::NetworkPracticeType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** |  |  |
| **practice_type** | **String** |  |  |
| **effective_date** | **Time** |  |  |
| **context4_fg** | **Boolean** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **fee_percent** | **Float** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkPracticeType.new(
  network_id: null,
  practice_type: null,
  effective_date: null,
  context4_fg: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

