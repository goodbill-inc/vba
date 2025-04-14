# Vba::BillTypePlace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_of_bill** | **String** | Unique identifier for the Type of Bill |  |
| **place_of_service** | **String** | Place Code for this Type of Bill |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **excluded_type_of_bill** | **Boolean** | Excludes this Place Code for this Type of Bill | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::BillTypePlace.new(
  type_of_bill: null,
  place_of_service: null,
  entry_date: null,
  entry_user: null,
  excluded_type_of_bill: null,
  update_date: null,
  update_user: null
)
```

