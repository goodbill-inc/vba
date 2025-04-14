# Vba::TreatmentType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatment_type** | **String** | Identifier for the specific type of treatment |  |
| **description** | **String** | Description of the specific type of treatment | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TreatmentType.new(
  treatment_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

