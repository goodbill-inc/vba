# Vba::PremRateAddOn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prem_rate_add_on_key** | **Integer** | Unique ID of the Add On Rate associated with a given Premium Rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **add_on_prem_rate_key** | **Integer** | Unique ID of the Add On Rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **add_on_grouping_id** | **String** | Used to identify Add On rates by Group | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **prem_rate_key** | **Integer** | Unique ID for the Premium Rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **sequence** | **Integer** | The suquence of this Category on the \&quot;INV\&quot; report. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRateAddOn.new(
  prem_rate_add_on_key: null,
  add_on_prem_rate_key: null,
  add_on_grouping_id: null,
  entry_date: null,
  entry_user: null,
  prem_rate_key: null,
  sequence: null,
  update_date: null,
  update_user: null
)
```

