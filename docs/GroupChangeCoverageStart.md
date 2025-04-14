# Vba::GroupChangeCoverageStart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | [**GroupContract**](GroupContract.md) |  | [optional] |
| **new_coverage_start** | **Time** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **disable_enrollment_update** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupChangeCoverageStart.new(
  contract: null,
  new_coverage_start: null,
  user_id: null,
  disable_enrollment_update: null
)
```

