# Vba::AdmissionTypePlace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admission_type** | **String** |  |  |
| **place_of_service** | **String** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **excluded_admission_type** | **Boolean** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AdmissionTypePlace.new(
  admission_type: null,
  place_of_service: null,
  entry_date: null,
  entry_user: null,
  excluded_admission_type: null,
  update_date: null,
  update_user: null
)
```

