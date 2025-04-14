# Vba::Country

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **String** | ID of the country. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **long_name** | **String** | Full name of the country. | [optional] |
| **short_name** | **String** | Abbreviated name of the country. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Country.new(
  country_id: null,
  entry_date: null,
  entry_user: null,
  long_name: null,
  short_name: null,
  update_date: null,
  update_user: null
)
```

