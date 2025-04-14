# Vba::ReinsContractAggSpecMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent table. This holds the list of members who form the aggregating specific. |  |
| **subscriber_id** | **String** | The member that is part of the aggregating specific deductible. |  |
| **member_seq** | **String** | The member that is part of the aggregating specific deductible. |  |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractAggSpecMember.new(
  reins_contract_key: null,
  subscriber_id: null,
  member_seq: null
)
```

