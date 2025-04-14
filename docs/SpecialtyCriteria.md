# Vba::SpecialtyCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **specialty_code** | **String** |  | [optional] |
| **sequence** | **Integer** |  | [optional] |
| **age_from** | **Integer** |  | [optional] |
| **age_thru** | **Integer** |  | [optional] |
| **sex** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SpecialtyCriteria.new(
  specialty_code: null,
  sequence: null,
  age_from: null,
  age_thru: null,
  sex: null
)
```

