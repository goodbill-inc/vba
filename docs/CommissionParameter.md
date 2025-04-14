# Vba::CommissionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_parameter_key** | **Integer** |  |  |
| **billed_thru** | **Time** |  | [optional] |
| **commission_activity_key** | **Integer** |  |  |
| **commission_agency_rep_key** | **Integer** |  | [optional] |
| **commission_date** | **Time** |  | [optional] |
| **commission_date_type** | **String** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **received_thru** | **Time** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **undo_date** | **Time** |  | [optional] |
| **undo_user** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionParameter.new(
  commission_parameter_key: null,
  billed_thru: null,
  commission_activity_key: null,
  commission_agency_rep_key: null,
  commission_date: null,
  commission_date_type: null,
  end_date: null,
  group_id: null,
  received_thru: null,
  start_date: null,
  undo_date: null,
  undo_user: null,
  user_id: null
)
```

