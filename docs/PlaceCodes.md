# Vba::PlaceCodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_code** | **String** | Code that identifies a specific place of service |  |
| **all_places** | **String** | Flag that identifies if a place code refers to all places of service Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of a specific place of service | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **exclude_proc_auth** | **Boolean** | Flag that indicates if the place code will exclude an auth for procedures Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **old_place_code** | **String** | Field identifying the old place code when the code on a place of service has changed | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlaceCodes.new(
  place_code: null,
  all_places: null,
  description: null,
  entry_date: null,
  entry_user: null,
  exclude_proc_auth: null,
  old_place_code: null,
  update_date: null,
  update_user: null
)
```

