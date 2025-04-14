# Vba::CommissionRateClusterAgencyRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commission_rate_cluster_agency_rep_key** | **Integer** | Unique identifer for the Commission Rate Cluster Agency Rep Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **commission_agency_rep_key** | **Integer** | Unique identifier for the CommissionAgencyRep | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **parent_commission_agency_rep_key** | **Integer** | Parent key for the CommissionAgencyRep record this is a child of | [optional] |
| **rate_cluster** | **String** | Unique identifer for the Rate Cluster | [optional] |
| **split** | **Float** | The amount or percentage of the split | [optional] |
| **split_max** | **Float** | Maximum amount of the split | [optional] |
| **split_min** | **Float** | Minimum amount of the split | [optional] |
| **split_priority** | **Integer** | Priority of the split | [optional] |
| **split_type** | **String** | Determines if split is percent or flat amount | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CommissionRateClusterAgencyRep.new(
  commission_rate_cluster_agency_rep_key: null,
  commission_agency_rep_key: null,
  entry_date: null,
  entry_user: null,
  parent_commission_agency_rep_key: null,
  rate_cluster: null,
  split: null,
  split_max: null,
  split_min: null,
  split_priority: null,
  split_type: null,
  update_date: null,
  update_user: null
)
```

