# Vba::ClaimDeductionType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deduction_type** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **pre_gross** | **Boolean** |  |  |
| **pre_tax** | **Boolean** |  |  |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDeductionType.new(
  deduction_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  pre_gross: null,
  pre_tax: null,
  update_date: null,
  update_user: null
)
```

