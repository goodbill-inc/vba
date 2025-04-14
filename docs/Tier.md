# Vba::Tier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier1** | **String** | Identifier for the specific tier |  |
| **dependent** | **Boolean** | Flag indicating the tier includes any dependents |  |
| **description** | **String** | Description of the specific tier | [optional] |
| **hipa_a_code** | **String** | Code used by HIPAA to identify the specific tier | [optional] |
| **insured** | **Boolean** | Flag indicating the tier includes the insured |  |
| **max_members** | **Integer** | Maximum total members the tier allows. | [optional] |
| **multimember_tier** | **Boolean** | Flag indicating the tier allows multiple members |  |
| **spouse** | **Boolean** | Flag indicating the tier includes the spouse |  |
| **spouse_only** | **String** | Flag indicating the tier includes only the spouse | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Tier.new(
  tier1: null,
  dependent: null,
  description: null,
  hipa_a_code: null,
  insured: null,
  max_members: null,
  multimember_tier: null,
  spouse: null,
  spouse_only: null
)
```

