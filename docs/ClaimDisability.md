# Vba::ClaimDisability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_number** | **Integer** |  |  |
| **admit_date** | **Time** |  | [optional] |
| **apply_extension** | **Integer** |  | [optional] |
| **apply_extension_ex_code** | **String** |  | [optional] |
| **attended_physician** | **Time** |  | [optional] |
| **birth_date** | **Time** |  | [optional] |
| **closure_effective_date** | **Time** |  | [optional] |
| **delivery_date** | **Time** |  | [optional] |
| **delivery_type** | **String** |  | [optional] |
| **dep_ssdi_end_date** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **diagnostic_code1** | **String** |  | [optional] |
| **diagnostic_code2** | **String** |  | [optional] |
| **diagnostic_code_type** | **String** |  | [optional] |
| **disability_pay_through_day** | **Integer** |  | [optional] |
| **disability_type** | **String** |  | [optional] |
| **disabled_by_physician** | **Time** |  | [optional] |
| **discharge_date** | **Time** |  | [optional] |
| **entry_date** | **Time** |  | [optional] |
| **entry_user** | **String** |  | [optional] |
| **ex_code** | **String** |  | [optional] |
| **exceed_max** | **Boolean** |  |  |
| **exhaust_date** | **Time** |  | [optional] |
| **expected_typical_duration** | **Integer** |  | [optional] |
| **fic_a_percent** | **Float** |  | [optional] |
| **federal_withheld** | **Float** |  | [optional] |
| **followup_date** | **Time** |  | [optional] |
| **followup_ex_code** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **image_number_1** | **String** |  | [optional] |
| **image_number_2** | **String** |  | [optional] |
| **image_number_3** | **String** |  | [optional] |
| **image_number_4** | **String** |  | [optional] |
| **include_return_to_work** | **Boolean** |  |  |
| **include_waiting_period** | **Boolean** |  |  |
| **include_waiting_period_in_max** | **Boolean** |  |  |
| **job_type** | **String** |  | [optional] |
| **lt_d_effective_date** | **Time** |  | [optional] |
| **lt_d_packet_date** | **Time** |  | [optional] |
| **last_day_worked** | **Time** |  | [optional] |
| **last_physician_warrant_date** | **Time** |  | [optional] |
| **liability_injury** | **Integer** |  | [optional] |
| **mail_to** | **String** |  | [optional] |
| **max_disability_days** | **Integer** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **overpayment_deduction** | **Float** |  | [optional] |
| **overpayment_ex_code** | **String** |  | [optional] |
| **overpayment_total** | **Float** |  | [optional] |
| **partial_disability** | **Boolean** |  |  |
| **pay_to** | **String** |  | [optional] |
| **payment_days** | **Integer** |  | [optional] |
| **payment_duration** | **Integer** |  | [optional] |
| **physician_return_to_work** | **Time** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **plan_type** | **String** |  | [optional] |
| **plan_type_ltd** | **Boolean** |  |  |
| **received_date** | **Time** |  | [optional] |
| **return_to_work** | **Time** |  | [optional] |
| **rollup_waiting_period** | **Boolean** |  |  |
| **scd** | **Boolean** |  |  |
| **salary_cont_ex_code** | **String** |  | [optional] |
| **salary_cont_from** | **Time** |  | [optional] |
| **salary_cont_paid** | **Boolean** |  |  |
| **salary_cont_thru** | **Time** |  | [optional] |
| **sick_time_ex_code** | **String** |  | [optional] |
| **sick_time_from** | **Time** |  | [optional] |
| **sick_time_paid** | **Boolean** |  |  |
| **sick_time_thru** | **Time** |  | [optional] |
| **state_withheld** | **Float** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **type_of_surgery** | **String** |  | [optional] |
| **update_date** | **Time** |  | [optional] |
| **update_user** | **String** |  | [optional] |
| **vacation_ex_code** | **String** |  | [optional] |
| **vacation_from** | **Time** |  | [optional] |
| **vacation_paid** | **Boolean** |  |  |
| **vacation_thru** | **Time** |  | [optional] |
| **waiting_period** | **Integer** |  | [optional] |
| **waiting_period_ex_code** | **String** |  | [optional] |
| **waive_waiting_period** | **Boolean** |  |  |

## Example

```ruby
require 'vba'

instance = Vba::ClaimDisability.new(
  batch_number: null,
  admit_date: null,
  apply_extension: null,
  apply_extension_ex_code: null,
  attended_physician: null,
  birth_date: null,
  closure_effective_date: null,
  delivery_date: null,
  delivery_type: null,
  dep_ssdi_end_date: null,
  description: null,
  diagnostic_code1: null,
  diagnostic_code2: null,
  diagnostic_code_type: null,
  disability_pay_through_day: null,
  disability_type: null,
  disabled_by_physician: null,
  discharge_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  exceed_max: null,
  exhaust_date: null,
  expected_typical_duration: null,
  fic_a_percent: null,
  federal_withheld: null,
  followup_date: null,
  followup_ex_code: null,
  group_id: null,
  image_number_1: null,
  image_number_2: null,
  image_number_3: null,
  image_number_4: null,
  include_return_to_work: null,
  include_waiting_period: null,
  include_waiting_period_in_max: null,
  job_type: null,
  lt_d_effective_date: null,
  lt_d_packet_date: null,
  last_day_worked: null,
  last_physician_warrant_date: null,
  liability_injury: null,
  mail_to: null,
  max_disability_days: null,
  member_seq: null,
  overpayment_deduction: null,
  overpayment_ex_code: null,
  overpayment_total: null,
  partial_disability: null,
  pay_to: null,
  payment_days: null,
  payment_duration: null,
  physician_return_to_work: null,
  plan_id: null,
  plan_type: null,
  plan_type_ltd: null,
  received_date: null,
  return_to_work: null,
  rollup_waiting_period: null,
  scd: null,
  salary_cont_ex_code: null,
  salary_cont_from: null,
  salary_cont_paid: null,
  salary_cont_thru: null,
  sick_time_ex_code: null,
  sick_time_from: null,
  sick_time_paid: null,
  sick_time_thru: null,
  state_withheld: null,
  subscriber_id: null,
  type_of_surgery: null,
  update_date: null,
  update_user: null,
  vacation_ex_code: null,
  vacation_from: null,
  vacation_paid: null,
  vacation_thru: null,
  waiting_period: null,
  waiting_period_ex_code: null,
  waive_waiting_period: null
)
```

