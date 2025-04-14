# Vba::ClaimFlexDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_flex_key** | **Integer** |  |  |
| **batch_number** | **Integer** |  |  |
| **batch_claim** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimFlexDetail.new(
  claim_flex_key: null,
  batch_number: null,
  batch_claim: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

