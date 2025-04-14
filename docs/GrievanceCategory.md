# Vba::GrievanceCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grievance_category** | **String** | Name given to the &#39;Category&#39;. |  |
| **default_category** | **Boolean** | Checking this option will automatically apply this &#39;Category&#39; to new grievances. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Description of the &#39;Category&#39;. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GrievanceCategory.new(
  grievance_category: null,
  default_category: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

