# Vba::FundingServiceSatisfyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_key** | **Integer** |  | [optional] |
| **funding_key** | **Integer** |  | [optional] |
| **new_request** | **Boolean** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **candidate_claims** | [**Array&lt;CandidateClaim&gt;**](CandidateClaim.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingServiceSatisfyRequest.new(
  request_key: null,
  funding_key: null,
  new_request: null,
  user_id: null,
  candidate_claims: null
)
```

