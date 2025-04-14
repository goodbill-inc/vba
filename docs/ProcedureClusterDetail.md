# Vba::ProcedureClusterDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **procedure_cluster_detail_key** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **procedure_cluster** | **String** |  |  |
| **procedure_code1** | **Boolean** |  |  |
| **procedure_code2** | **Boolean** |  |  |
| **procedure_code_from** | **String** |  | [optional] |
| **procedure_code_thru** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProcedureClusterDetail.new(
  procedure_cluster_detail_key: null,
  entry_date: null,
  entry_user: null,
  procedure_cluster: null,
  procedure_code1: null,
  procedure_code2: null,
  procedure_code_from: null,
  procedure_code_thru: null,
  update_date: null,
  update_user: null
)
```

