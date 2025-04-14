# Vba::DisasterLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disaster_location_key** | **Integer** | Unique identifer for each disaster location entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **county_code** | **String** | County Code associated with the disaster. | [optional] |
| **disaster_key** | **Integer** | Unique identifer for each disaster entry, references Disaster.Disaster_Key . | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **state** | **String** | State associated with the disaster. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **zip_code** | **String** | US Zip Code associated with the disaster. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DisasterLocation.new(
  disaster_location_key: null,
  county_code: null,
  disaster_key: null,
  entry_date: null,
  entry_user: null,
  state: null,
  update_date: null,
  update_user: null,
  zip_code: null
)
```

