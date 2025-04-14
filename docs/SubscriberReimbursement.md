# Vba::SubscriberReimbursement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_reimbursement_key** | **Integer** | Unique identifier for each remibursement configuration for this Group and Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | References BenefitCodes.Benefit_Code value on parent record. |  |
| **effective_date** | **Time** | Effective date of this remibursement configuration. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **group_id** | **String** | References Groups.Group_ID value on parent record. |  |
| **max_id** | **String** | References PlanMaximum.Max_ID value on parent record. |  |
| **plan_id** | **String** | References Plans.Plan_ID value on parent record. |  |
| **term_date** | **Time** | Term Date of this reimbursement configuration. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberReimbursement.new(
  subscriber_reimbursement_key: null,
  benefit_code: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  max_id: null,
  plan_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

