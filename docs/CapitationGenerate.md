# Vba::CapitationGenerate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_id** | **String** |  | [optional] |
| **account_key** | **Integer** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **provider_id** | **String** |  | [optional] |
| **capitation_date** | **Time** |  | [optional] |
| **capitation_category** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **capitation_keys** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CapitationGenerate.new(
  payor_id: null,
  account_key: null,
  group_id: null,
  division_id: null,
  subscriber_id: null,
  member_seq: null,
  plan_id: null,
  provider_id: null,
  capitation_date: null,
  capitation_category: null,
  payee_id: null,
  capitation_keys: null
)
```

