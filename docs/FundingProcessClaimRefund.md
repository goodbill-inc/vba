# Vba::FundingProcessClaimRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_funding_key** | **Integer** |  | [optional] |
| **claim_number** | **Integer** |  | [optional] |
| **refund_batch_number** | **Integer** |  | [optional] |
| **reenter_claim** | **Boolean** |  | [optional] |
| **backout_ex_code** | **String** |  | [optional] |
| **reentry_ex_code** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingProcessClaimRefund.new(
  refund_funding_key: null,
  claim_number: null,
  refund_batch_number: null,
  reenter_claim: null,
  backout_ex_code: null,
  reentry_ex_code: null,
  user_id: null
)
```

