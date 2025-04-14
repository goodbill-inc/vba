# Vba::NetworkProfileAssign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Unique idenfitier assigned to the Network Profile record. |  |
| **assign_type** | **String** | Defines the type of record match used by the assignment.  Supports Provider_ID, Profile_Provider_ID, or Federal_ID |  |
| **assign_id** | **String** | Holds ID value used in conjunction with the Assign_Type to define the desired provider match. |  |
| **effective_date** | **Time** | Date when the Network Profile becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **term_date** | **Time** | Date when the Network Profile no longer applies. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkProfileAssign.new(
  profile_id: null,
  assign_type: null,
  assign_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

