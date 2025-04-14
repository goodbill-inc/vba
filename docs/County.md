# Vba::County

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **county_code** | **String** | ID of the county. |  |
| **county_name** | **String** | Name for the county. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **state** | **String** | State that the county is within. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::County.new(
  county_code: null,
  county_name: null,
  entry_date: null,
  entry_user: null,
  state: null,
  update_date: null,
  update_user: null
)
```

