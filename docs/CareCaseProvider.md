# Vba::CareCaseProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **care_case_provider_key** | **Integer** |  |  |
| **case_key** | **Integer** |  |  |
| **effective_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **provider_role_id** | **String** |  | [optional] |
| **term_date** | **Time** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CareCaseProvider.new(
  care_case_provider_key: null,
  case_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  provider_id: null,
  provider_role_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

