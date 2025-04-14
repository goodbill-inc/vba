# Vba::GroupUCPercentClaimType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **u_c_percent_claim_type** | **String** | When using UC, this is the UC Claim Type used to pull rate values. |  |
| **description** | **String** | A user friendly description of the UC configuration being created. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupUCPercentClaimType.new(
  u_c_percent_claim_type: null,
  description: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

