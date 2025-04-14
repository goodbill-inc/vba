# Vba::GroupAddContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | [**GroupContract**](GroupContract.md) |  | [optional] |
| **reenroll** | **Boolean** |  | [optional] |
| **reenroll_plan** | **Boolean** |  | [optional] |
| **reenroll_rider** | **Boolean** |  | [optional] |
| **copy_plan** | **Boolean** |  | [optional] |
| **copy_network** | **Boolean** |  | [optional] |
| **copy_tier** | **Boolean** |  | [optional] |
| **copy_rider** | **Boolean** |  | [optional] |
| **reenroll_rider_id_code** | **Boolean** |  | [optional] |
| **copy_plan_id_code** | **Boolean** |  | [optional] |
| **copy_network_id_code** | **Boolean** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **plan_mappings** | [**Array&lt;PlanMapping&gt;**](PlanMapping.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupAddContract.new(
  contract: null,
  reenroll: null,
  reenroll_plan: null,
  reenroll_rider: null,
  copy_plan: null,
  copy_network: null,
  copy_tier: null,
  copy_rider: null,
  reenroll_rider_id_code: null,
  copy_plan_id_code: null,
  copy_network_id_code: null,
  user_id: null,
  plan_mappings: null
)
```

