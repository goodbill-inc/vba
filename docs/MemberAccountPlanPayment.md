# Vba::MemberAccountPlanPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_key** | **Integer** | Unique identifier for each payment record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **member_account_key** | **Integer** | References the MemberAccount.MemberAccount_Key value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References the SubenrollmentPlan.Plan_ID value for this members enrollment. |  |
| **transaction_amount** | **Float** | Total amount of the transaction. | [optional] |
| **transaction_date** | **Time** | Date when the transaction occurred. | [optional] |
| **transaction_id** | **String** | Identifier assigned to the associated transaction. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberAccountPlanPayment.new(
  payment_key: null,
  entry_date: null,
  entry_user: null,
  member_account_key: null,
  plan_id: null,
  transaction_amount: null,
  transaction_date: null,
  transaction_id: null,
  update_date: null,
  update_user: null
)
```

