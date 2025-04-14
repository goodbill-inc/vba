# Vba::Disaster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disaster_key** | **Integer** | Unique identifer for each disaster entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | The description of the Disaster. | [optional] |
| **disaster_id** | **String** | User defined identifier for the Disaster | [optional] |
| **effective_date** | **Time** | Date when the disaster becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | The ExCode applied to this disaster entry. | [optional] |
| **term_date** | **Time** | Date when the disaster no longe applies. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Disaster.new(
  disaster_key: null,
  description: null,
  disaster_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

