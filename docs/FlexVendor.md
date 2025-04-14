# Vba::FlexVendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flex_vendor** | **String** | Name for the flex vendor. |  |
| **description** | **String** | Description of the flex vendor. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FlexVendor.new(
  flex_vendor: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

