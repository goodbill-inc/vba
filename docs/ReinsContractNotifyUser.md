# Vba::ReinsContractNotifyUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | References the ReinsContract.ReinsContract_Key on parent record. When notification is enabled for the reinsurance contract, this notes which user to notify. |  |
| **user_id** | **String** | The user to be notified. |  |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContractNotifyUser.new(
  reins_contract_key: null,
  user_id: null
)
```

