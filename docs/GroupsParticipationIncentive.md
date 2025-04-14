# Vba::GroupsParticipationIncentive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups_participation_incentive_key** | **Integer** | Unique indicator for each Participation Incentive record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | The description of the incentive being added. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **participation_incentive_id** | **String** | The participation incentive ID used for this setting. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupsParticipationIncentive.new(
  groups_participation_incentive_key: null,
  description: null,
  entry_date: null,
  entry_user: null,
  participation_incentive_id: null,
  update_date: null,
  update_user: null
)
```

