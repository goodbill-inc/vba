# Vba::FlexVendorPurseStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flex_vendor** | **String** | ID of the flex vendor. |  |
| **purse_status** | **String** | Name for the vendor purse status. |  |
| **description** | **String** | Description of the vendor purse status. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FlexVendorPurseStatus.new(
  flex_vendor: null,
  purse_status: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

