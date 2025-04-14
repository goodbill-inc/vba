# Vba::FundingRequestClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** | Batch number of the claim associated with the funding request. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **batch_claim** | **Integer** | Claim number of the claim associated with the funding request. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **request_key** | **Integer** | ID of the funding request. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **funded** | **Boolean** | Indicates that the claim has been funded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **funded_amount** | **Float** | Amount that was funded. | [optional] |
| **funded_date** | **Time** | Date when the claim was funded. | [optional] |
| **request_amount** | **Float** | Amount of the funding request. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingRequestClaim.new(
  batch_number: null,
  batch_claim: null,
  request_key: null,
  entry_date: null,
  entry_user: null,
  funded: null,
  funded_amount: null,
  funded_date: null,
  request_amount: null,
  update_date: null,
  update_user: null
)
```

