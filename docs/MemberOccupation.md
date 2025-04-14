# Vba::MemberOccupation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **occupation_id** | **String** | Identifies the occupation that is associated with the Member. |  |
| **effective_date** | **Time** | Date when the occupation becomes/became effective for the Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hire_date** | **Time** | Date when the Member was hired at the associated occupation. | [optional] |
| **pay_rate** | **Float** | Rate of pay for the Member at the associated occupation. | [optional] |
| **pay_rate_frequency** | **String** | Frequency of the rate of pay for the Member at the associated occupation. | [optional] |
| **term_date** | **Time** | Date when the occupation expires/expired for the Member. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberOccupation.new(
  subscriber_id: null,
  member_seq: null,
  occupation_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  hire_date: null,
  pay_rate: null,
  pay_rate_frequency: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

