# Vba::CapitationServiceTIN

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capitation_service_key** | **Integer** | ID for the capitation service. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **federal_id** | **String** | Federal tax ID associated with the capitation service. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationServiceTIN.new(
  capitation_service_key: null,
  federal_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

