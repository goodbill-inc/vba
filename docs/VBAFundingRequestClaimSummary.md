# Vba::VBAFundingRequestClaimSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_number** | **Integer** | Gets or sets the claim number. | [optional] |
| **batch_number** | **Integer** | Gets or sets the batch number. | [optional] |
| **batch_claim** | **Integer** | Gets or sets the batch claim. | [optional] |
| **claim_paid_amount** | **Float** | Gets or sets the claim paid amount. | [optional] |
| **claim_funded_status** | **String** | Gets or sets the claim funded status. | [optional] |
| **claim_status** | **String** | Gets or sets the claim status. | [optional] |
| **funded** | **Boolean** | Gets or sets a value indicating whether the claim is funded. | [optional] |
| **funded_date** | **Time** | Gets or sets the funded date. | [optional] |
| **processed_date** | **Time** | Gets or sets the processed date. | [optional] |
| **request_amount** | **Float** | Gets or sets the request amount. | [optional] |
| **funded_amount** | **Float** | Gets or sets the funded amount. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAFundingRequestClaimSummary.new(
  claim_number: null,
  batch_number: null,
  batch_claim: null,
  claim_paid_amount: null,
  claim_funded_status: null,
  claim_status: null,
  funded: null,
  funded_date: null,
  processed_date: null,
  request_amount: null,
  funded_amount: null
)
```

