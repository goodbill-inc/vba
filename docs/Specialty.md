# Vba::Specialty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **specialty_code** | **String** |  |  |
| **all_specialties** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **pcp** | **Boolean** |  |  |
| **specialist** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Specialty.new(
  specialty_code: null,
  all_specialties: null,
  description: null,
  entry_date: null,
  entry_user: null,
  pcp: null,
  specialist: null,
  update_date: null,
  update_user: null
)
```

