# Vba::PremRateType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_type** | **String** | Unique identifier of the Rate Type |  |
| **add_on_type** | **Boolean** | Identifies the type of Add On rate to be applied Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjustment_type** | **Boolean** | Flag that determines if the Rate Type includes Adjustments Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the Rate Type | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **premium_type** | **Boolean** | Flag that determines if the Rate Type includes Premiums Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PremRateType.new(
  rate_type: null,
  add_on_type: null,
  adjustment_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  premium_type: null,
  update_date: null,
  update_user: null
)
```

