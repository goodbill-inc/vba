# Vba::SecurityAreaReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_area** | **String** | Security area that the report is being applied to/removed from. |  |
| **report_definition_key** | **Integer** | Name of the report that is being applied or removed from the security area. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityAreaReport.new(
  security_area: null,
  report_definition_key: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

