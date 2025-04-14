# Vba::GroupDivisionDeductionType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. |  |
| **deduction_type** | **String** | References ClaimDeductionType.Deduction_Type for the list of deduction types that can be used during disability processing. This filters the list during seleciton based on what Division the member is enrolled. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupDivisionDeductionType.new(
  group_id: null,
  division_id: null,
  deduction_type: null
)
```

