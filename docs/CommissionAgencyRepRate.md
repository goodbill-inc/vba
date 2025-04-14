# Vba::CommissionAgencyRepRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_agency_rep_rate_key** | **Integer** |  |  |
| **commission_agency_rep_key** | **Integer** |  |  |
| **commission_rate_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **parent_commission_agency_rep_rate_key** | **Integer** |  | [optional] |
| **split** | **Float** |  | [optional] |
| **split_max** | **Float** |  | [optional] |
| **split_min** | **Float** |  | [optional] |
| **split_priority** | **Integer** |  | [optional] |
| **split_type** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionAgencyRepRate.new(
  commission_agency_rep_rate_key: null,
  commission_agency_rep_key: null,
  commission_rate_key: null,
  entry_date: null,
  entry_user: null,
  parent_commission_agency_rep_rate_key: null,
  split: null,
  split_max: null,
  split_min: null,
  split_priority: null,
  split_type: null,
  update_date: null,
  update_user: null
)
```

