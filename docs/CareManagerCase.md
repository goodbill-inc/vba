# Vba::CareManagerCase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_manager_case_key** | **Integer** |  |  |
| **care_manager_key** | **Integer** |  |  |
| **case_key** | **Integer** |  |  |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareManagerCase.new(
  care_manager_case_key: null,
  care_manager_key: null,
  case_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

