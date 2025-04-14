# Vba::GroupUCPercentCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_uc_percent_criteria_key** | **Integer** | References the GroupUCPercentCriteria.GroupUCPercentCriteria_Key value on the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **criteria_from** | **String** | Beginning of selected criteria range. | [optional] |
| **criteria_operator** | **String** | Defines how the ‘From’ and ‘Thru’ range is treated: inclusive, exclusive, matching, etc. | [optional] |
| **criteria_thru** | **String** | End of selected criteria range. This criterion is only used for the ‘Between’ operation. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_uc_percent_column_key** | **Integer** | References the GroupUCPercentColumn.GroupUCPercentColumn_Key on the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **group_uc_percent_key** | **Integer** | References the GroupUCPercent.GroupUCPercent_Key value on the parent table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupUCPercentCriteria.new(
  group_uc_percent_criteria_key: null,
  criteria_from: null,
  criteria_operator: null,
  criteria_thru: null,
  entry_date: null,
  entry_user: null,
  group_uc_percent_column_key: null,
  group_uc_percent_key: null,
  update_date: null,
  update_user: null
)
```

