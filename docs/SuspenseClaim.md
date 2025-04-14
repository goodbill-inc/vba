# Vba::SuspenseClaim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **suspense_claim_key** | **Integer** |  |  |
| **claim_number** | **Integer** |  |  |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **suspense_criteria_key** | **Integer** |  |  |
| **suspense_date** | **Time** |  | [optional] |
| **suspense_status** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SuspenseClaim.new(
  suspense_claim_key: null,
  claim_number: null,
  entry_date: null,
  entry_user: null,
  suspense_criteria_key: null,
  suspense_date: null,
  suspense_status: null,
  update_date: null,
  update_user: null
)
```

