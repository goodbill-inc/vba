# Vba::GroupAccountPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_account_period_key** | **Integer** | Unique identifier for each effective period on this account setting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. | [optional] |
| **effective_date** | **Time** | Date when the Group Account Period becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the Group Account Period expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupAccountPeriod.new(
  group_account_period_key: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

