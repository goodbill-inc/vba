# Vba::ClaimAnesthesiaPlaceCodeUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_anesthesia_place_code_unit_key** | **Integer** |  |  |
| **effective_date** | **Time** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **mnutes_per_unit** | **Float** |  | [optional] |
| **place_code** | **String** |  | [optional] |
| **term_date** | **Time** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimAnesthesiaPlaceCodeUnit.new(
  claim_anesthesia_place_code_unit_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  mnutes_per_unit: null,
  place_code: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

