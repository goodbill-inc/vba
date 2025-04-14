# Vba::ClaimPromptPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_prompt_pay_key** | **Integer** | Unique identifer for each claim prompt pay entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **division_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Division_ID. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Group_ID. | [optional] |
| **plan_id** | **String** | Holds the plan the patient is enrolled in and that benefits are assigned. | [optional] |
| **prompt_pay_duration** | **Integer** | Holds the length of the duration to define this prompt pay record, as a numeric value only. | [optional] |
| **prompt_pay_duration_type** | **String** | Defines the type of duration used in configuration. D &#x3D; Day, M &#x3D; Month, Y &#x3D; Year. | [optional] |
| **tax_id** | **String** | Holds the Tax_ID (Federal_ID) of the provider for this record. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimPromptPay.new(
  claim_prompt_pay_key: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  plan_id: null,
  prompt_pay_duration: null,
  prompt_pay_duration_type: null,
  tax_id: null,
  update_date: null,
  update_user: null
)
```

