# Vba::DisenrollLogRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disenroll_log_key** | **Integer** | ID for the specific disenroll log record Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **prem_rate_key** | **Integer** | Unique key of the Premium Rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **prem_rate_category** | **String** | Category specifying what area the Premium Rate applies to | [optional] |
| **prem_rate_id** | **String** | Unique identifier of the Premium Rate | [optional] |
| **rate** | **Float** | Premium rate that applies to the specific enrollment | [optional] |
| **rate_description** | **String** | Description of the premium rate that applies to the enrollment | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisenrollLogRate.new(
  disenroll_log_key: null,
  prem_rate_key: null,
  entry_date: null,
  entry_user: null,
  prem_rate_category: null,
  prem_rate_id: null,
  rate: null,
  rate_description: null,
  update_date: null,
  update_user: null
)
```

