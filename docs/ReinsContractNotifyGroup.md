# Vba::ReinsContractNotifyGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent record. When notification is enabled for the reinsurance contract, this notes which user group to notify. |  |
| **user_group_key** | **Integer** | The user group to be notified. |  |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractNotifyGroup.new(
  reins_contract_key: null,
  user_group_key: null
)
```

