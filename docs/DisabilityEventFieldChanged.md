# Vba::DisabilityEventFieldChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disability_event_field_changed_key** | **Integer** | Unique Identifier for the DisabilityEventFieldChanged table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disability_type** | **String** | Identifies the type of disability (injury or illness). | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | Explanation Code for this Change. | [optional] |
| **field_name** | **String** | Name of the Field that was Changed. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisabilityEventFieldChanged.new(
  disability_event_field_changed_key: null,
  disability_type: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  field_name: null,
  update_date: null,
  update_user: null
)
```

