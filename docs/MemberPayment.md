# Vba::MemberPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_payment_key** | **Integer** | Unique Identifier for this payment for the member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | References Subenrollment.Division_ID value on the parent record. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_coverage_start** | **Time** | References Subenrollment.Group_Coverage_Start value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **group_id** | **String** | References Subenrollment.Group_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **payment_amount** | **Float** | Amount of the associated payment. | [optional] |
| **payment_date** | **Time** | Date when the associated payment was processed. | [optional] |
| **payment_id** | **String** | Unique identifier assigned to the associated payment. | [optional] |
| **payment_type** | **String** | Identifies the type associated with the payment. | [optional] |
| **start_date** | **Time** | References Subenrollment.Start_Date value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberPayment.new(
  member_payment_key: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_coverage_start: null,
  group_id: null,
  member_seq: null,
  payment_amount: null,
  payment_date: null,
  payment_id: null,
  payment_type: null,
  start_date: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

