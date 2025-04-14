# Vba::FundingVoidCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_id** | **Integer** |  | [optional] |
| **reentry_batch_number** | **Integer** |  | [optional] |
| **backout_ex_code** | **String** |  | [optional] |
| **reentry_ex_code** | **String** |  | [optional] |
| **reentry_provider_id** | **String** |  | [optional] |
| **reentry_subscriber_id** | **String** |  | [optional] |
| **reentry_member_seq** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingVoidCheck.new(
  check_id: null,
  reentry_batch_number: null,
  backout_ex_code: null,
  reentry_ex_code: null,
  reentry_provider_id: null,
  reentry_subscriber_id: null,
  reentry_member_seq: null,
  user_id: null
)
```

