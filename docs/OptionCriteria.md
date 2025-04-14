# Vba::OptionCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_date** | **Time** |  | [optional] |
| **capitation_category** | **String** |  | [optional] |
| **reason_id** | **Integer** |  | [optional] |
| **assignment_rule1** | **String** |  | [optional] |
| **assignment_rule2** | **String** |  | [optional] |
| **assignment_rule3** | **String** |  | [optional] |
| **assignment_rule4** | **String** |  | [optional] |
| **max_radius** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::OptionCriteria.new(
  run_date: null,
  capitation_category: null,
  reason_id: null,
  assignment_rule1: null,
  assignment_rule2: null,
  assignment_rule3: null,
  assignment_rule4: null,
  max_radius: null
)
```

