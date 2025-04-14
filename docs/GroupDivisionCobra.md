# Vba::GroupDivisionCobra

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. |  |
| **cobra_division_id** | **String** | Which Division ID inside this Group that is the COBRA Division. |  |

## Example

```ruby
require 'vba'

instance = Vba::GroupDivisionCobra.new(
  group_id: null,
  division_id: null,
  cobra_division_id: null
)
```

