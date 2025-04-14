# Vba::PlanAuthPenalty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_auth_penalty_key** | **Integer** | Unique identifier assigned to the Plan Auth Penalty. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the penalty becomes effective. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **penalty** | **Float** | Amount of the penalty that will applied. | [optional] |
| **penalty_max** | **Float** | Maximum penalty that can be applied. | [optional] |
| **penalty_pct** | **Boolean** | Indicates whether the penalty will be a percentage or fixed amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **penalty_type** | **String** | Identifies the type of penalty: By Visit - adjudication will consider per Provider per day. By Occurrence - adjudication will consider the occurrence date of the claim. | [optional] |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. | [optional] |
| **term_date** | **Time** | Date when the penalty is terminated. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanAuthPenalty.new(
  plan_auth_penalty_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  penalty: null,
  penalty_max: null,
  penalty_pct: null,
  penalty_type: null,
  plan_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

