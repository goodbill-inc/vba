# Vba::ClaimType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_type** | **String** | Unique identifier for each claim type. This table is maintaned and managed by VBA and should not be manipulated. |  |
| **description** | **String** | The description of this Claim Type. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimType.new(
  claim_type: null,
  description: null
)
```

