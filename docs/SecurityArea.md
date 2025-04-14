# Vba::SecurityArea

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_area** | **String** | Name of the security area that the displayed security options will apply to. |  |
| **description** | **String** | Description of the security area. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityArea.new(
  security_area: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

