# Vba::FeeSchedAnesthesia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_sched_anesthesia_key** | **Integer** | Unique identifier of this table.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **fee_sched** | **String** | The fee schedule this anesthesia is associated with. |  |
| **from_value** | **String** | Starting value of the type. |  |
| **thru_value** | **String** | Ending value of the type. |  |
| **type** | **String** | Determines if the type is Modifier, Procedure, or Place Code. |  |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FeeSchedAnesthesia.new(
  fee_sched_anesthesia_key: null,
  entry_date: null,
  entry_user: null,
  fee_sched: null,
  from_value: null,
  thru_value: null,
  type: null,
  update_date: null,
  update_user: null
)
```

