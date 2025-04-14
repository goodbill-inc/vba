# Vba::PlanAuthPenaltyBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_auth_penalty_key** | **Integer** | References the PlanAuthPenalty.PlanAuthPenalty_Key value in parent table. |  |
| **benefit_code** | **String** | Identifies the Benefit Codes that are applied to the Auth Penalty. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanAuthPenaltyBenefit.new(
  plan_auth_penalty_key: null,
  benefit_code: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

