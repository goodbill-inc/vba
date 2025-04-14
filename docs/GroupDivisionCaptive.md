# Vba::GroupDivisionCaptive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_division_captive1** | **String** | Unique identifier for this Captive. |  |
| **description** | **String** | The description for this captive to be used on the Division. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupDivisionCaptive.new(
  group_division_captive1: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

