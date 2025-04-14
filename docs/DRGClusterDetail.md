# Vba::DRGClusterDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **drg_cluster_detail_key** | **Integer** | Key value identifying the details for a DRG Cluster |  |
| **dr_g_cluster** | **String** | Identifier for the DRG cluster. |  |
| **dr_g_code_from** | **String** | First DRG Code in the range of codes associated with the DRG Cluster | [optional] |
| **dr_g_code_thru** | **String** | Last DRG Code in the range of codes associated with the DRG Cluster | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::DRGClusterDetail.new(
  drg_cluster_detail_key: null,
  dr_g_cluster: null,
  dr_g_code_from: null,
  dr_g_code_thru: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

