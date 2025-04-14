# Vba::DRGCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dr_g_code** | **String** | Code identifying a specific DRG |  |
| **cervical_or_lumbar** | **String** | Flag that specifies if the DRG is related to cervical or lumbar | [optional] |
| **description** | **String** | Description of the DRG | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DRGCodes.new(
  dr_g_code: null,
  cervical_or_lumbar: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

