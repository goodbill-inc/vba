# Vba::GroupNetworkCriteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_network_criteria_key** | **Integer** | Unique identifier for each Network Criteria used for network selection during adjudication. |  |
| **coverage_start** | **Time** | References GroupNetwork.Coverage_Start value on the parent record. | [optional] |
| **criteria_from** | **String** | The from value applied to this criteria. | [optional] |
| **criteria_operator** | **String** |  | [optional] |
| **criteria_thru** | **String** | The thru value applied to this criteria. | [optional] |
| **division_id** | **String** | References GroupNetwork.Division_ID value on the parent record. | [optional] |
| **group_network_criteria_column_key** | **Integer** | References GroupNetworkCriteriaColumn.GroupNetworkCriteriaColumn_Key in referenced table. | [optional] |
| **group_id** | **String** | References GroupNetwork.Group_ID value on the parent record. | [optional] |
| **network_id** | **String** | References GroupNetwork.Network_ID value on the parent record. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupNetworkCriteria.new(
  group_network_criteria_key: null,
  coverage_start: null,
  criteria_from: null,
  criteria_operator: null,
  criteria_thru: null,
  division_id: null,
  group_network_criteria_column_key: null,
  group_id: null,
  network_id: null
)
```

