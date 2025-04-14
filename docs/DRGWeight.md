# Vba::DRGWeight

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dr_g_schedule** | **String** | Identifier for DRG Schedule |  |
| **dr_g_code** | **String** | Code identifying a specific DRG |  |
| **effective_date** | **Time** | Date the DRG Schedule becomes effective |  |
| **term_date** | **Time** | Date the DRG Schedule terminates | [optional] |
| **weight** | **Float** | Weight that is applied to the specified DRG | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DRGWeight.new(
  dr_g_schedule: null,
  dr_g_code: null,
  effective_date: null,
  term_date: null,
  weight: null
)
```

