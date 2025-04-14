# Vba::BillType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_of_bill** | **String** | Unique identifier for the Type of Bill |  |
| **description** | **String** | Description of Type of Bill | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **inpatient** | **Boolean** | Inpatient identifies the Type of Bill used for inpatient bills |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillType.new(
  type_of_bill: null,
  description: null,
  entry_date: null,
  entry_user: null,
  inpatient: null,
  update_date: null,
  update_user: null
)
```

