# Vba::EligibilityStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eligibility_status** | **String** | Identifier for a specified eligibility status |  |
| **description** | **String** | Description of the eligibility status | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **sec111_exclude** | **Boolean** | Indicates if the eligibility status excludes section 111 Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **sec111_include** | **Boolean** | Indicates if the eligibility status includes section 111 Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EligibilityStatus.new(
  eligibility_status: null,
  description: null,
  entry_date: null,
  entry_user: null,
  sec111_exclude: null,
  sec111_include: null,
  update_date: null,
  update_user: null
)
```

