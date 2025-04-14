# Vba::VBAGroupContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_subscribers** | **Integer** |  | [optional] |
| **eligible_subscribers** | **Integer** |  | [optional] |
| **total_members** | **Integer** |  | [optional] |
| **eligible_members** | **Integer** |  | [optional] |
| **group_contract_detail** | [**GroupContract**](GroupContract.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAGroupContract.new(
  total_subscribers: null,
  eligible_subscribers: null,
  total_members: null,
  eligible_members: null,
  group_contract_detail: null
)
```

