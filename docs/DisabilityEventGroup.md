# Vba::DisabilityEventGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disability_event_group_key** | **Integer** | Unique Identifier for the DisabilityEventGroup table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **disability_event_case_changed_key** | **Integer** | Unique Identifier for the DisabilityEventCaseChanged table. | [optional] |
| **disability_event_changed_key** | **Integer** | Unique Identifier for the DisabilityEventChanged table. | [optional] |
| **disability_event_deduction_changed_key** | **Integer** | Unique Identifier for the DisabilityEventDeductionChanged table. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | Group ID for the DisabilityEventGroup | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisabilityEventGroup.new(
  disability_event_group_key: null,
  disability_event_case_changed_key: null,
  disability_event_changed_key: null,
  disability_event_deduction_changed_key: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  update_date: null,
  update_user: null
)
```

