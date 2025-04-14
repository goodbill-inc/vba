# Vba::MemberBeneficiaryPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References MemberBeneficiary.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References MemberBeneficiary.Member_Seq value on the parent record. |  |
| **beneficiary_id** | **String** | References MemberBeneficiary.Beneficiary_ID value on the parent record. |  |
| **plan_id** | **String** | References Plans.Plan_ID value on parent record. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberBeneficiaryPlan.new(
  subscriber_id: null,
  member_seq: null,
  beneficiary_id: null,
  plan_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

