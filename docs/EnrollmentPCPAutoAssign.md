# Vba::EnrollmentPCPAutoAssign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | [**OptionCriteria**](OptionCriteria.md) |  |  |
| **group_criterias** | [**Array&lt;GroupCriteria&gt;**](GroupCriteria.md) |  |  |
| **network_criterias** | [**Array&lt;NetworkCriteria&gt;**](NetworkCriteria.md) |  |  |
| **specialty_criterias** | [**Array&lt;SpecialtyCriteria&gt;**](SpecialtyCriteria.md) |  | [optional] |
| **practice_type_criterias** | [**Array&lt;PracticeTypeCriteria&gt;**](PracticeTypeCriteria.md) |  | [optional] |
| **id_code_criterias** | [**Array&lt;IDCodeCriteria&gt;**](IDCodeCriteria.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentPCPAutoAssign.new(
  options: null,
  group_criterias: null,
  network_criterias: null,
  specialty_criterias: null,
  practice_type_criterias: null,
  id_code_criterias: null
)
```

