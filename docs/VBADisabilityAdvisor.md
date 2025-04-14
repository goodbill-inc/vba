# Vba::VBADisabilityAdvisor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Used to give a description for this episode of care. | [optional] |
| **sick_time** | **Boolean** | This flag identifies that there is sick time during this disability. | [optional] |
| **sick_time_from** | **Time** | This is the begin date of the sick time payment. | [optional] |
| **sick_time_thru** | **Time** | This is the end date of the sick time payment. | [optional] |
| **sick_time_ex_code** | **String** | This is the explanation code that will be applied to the sick time payments during this disability. | [optional] |
| **vacation** | **Boolean** | This flag identifies that there is vacation during this disability. | [optional] |
| **vacation_from** | **Time** | This is the begin date of the vacation payment. | [optional] |
| **vacation_thru** | **Time** | This is the end date of the vacation payment. | [optional] |
| **vacation_ex_code** | **String** | This is the explanation code that will be applied to the vacation payments during this disability. | [optional] |
| **salary_continuation** | **Boolean** | This flag identifies that salary continuation is part of the payment during this disability. | [optional] |
| **salary_continuation_from** | **Time** | This is the begin date of the salary continuation payment. | [optional] |
| **salary_continuation_thru** | **Time** | This is the end date of the salary continuation payment. | [optional] |
| **salary_continuation_ex_code** | **String** | This is the explanation code that will be applied to the salary continuation payments during this disability. | [optional] |
| **partial_disability** | **Boolean** | This will identify if this is a partial disability payment.  Partial Disability payments have additional tax and payment rules applied during adjudication. | [optional] |
| **partial_disability_hours** | **Boolean** | This flag will identify if there is partial disability hours involved during the claim. | [optional] |
| **image_number** | **String** |  | [optional] |
| **image_number2** | **String** |  | [optional] |
| **image_number3** | **String** |  | [optional] |
| **image_number4** | **String** |  | [optional] |
| **received_date** | **Time** |  | [optional] |
| **last_day_worked** | **Time** |  | [optional] |
| **diagnosis1** | **String** | This identifies the primary diagnosis for this disability. | [optional] |
| **diagnosis2** | **String** | This identifies additional diagnosis for this disability. | [optional] |
| **date_of_surgery** | **Time** | This identifies the date of surgery for disability due to surgery. | [optional] |
| **waiting_period** | **Integer** | This is the number of waiting period days that will be assigned to the waiting period payment on this disability. | [optional] |
| **rollup_waiting_period** | **Boolean** | This flag if set will create the Waiting Period in one claim. | [optional] |
| **admit_date** | **Time** | This identifies the date the member was admitted to the Hospital if hospitalized as part of this disability. | [optional] |
| **apply_extension** | **Boolean** | This will let the Disability Payment Creator know that the created payments need to have a reminder Ex Code applied to the final two payments. | [optional] |
| **apply_extension_ex_code** | **String** | This is the Ex Code that is applied to the final two payments created by the Disability Payment Creator if the Apply Extension option is selected. | [optional] |
| **closure_effective_date** | **Time** | This is an information only field that allows the tracking of the Closure Effective Date. | [optional] |
| **date_first_attended** | **Time** | This identifies the date the member first visited the Physician. This field, in combination with Disabled by Physician Date and Last Day Worked, create the Disability Date for the Member. | [optional] |
| **disabled_by_physician** | **Time** | This identifies the date the member was disabled by the Physician. This field, in combination with First Attended Physician Date and Last Day Worked, create the Disability Date for the Member. | [optional] |
| **dob** | **Time** | This is the Members Birth Date. | [optional] |
| **during_employment** | **Boolean** | Flag to identify if this disability happened while member was at work. | [optional] |
| **surgery** | **Integer** | Used to identify if surgery is involved in this disability. | [optional] |
| **type_of_surgery** | **String** | This is the procedure code of the surgery being performed for this disability. | [optional] |
| **disability_type** | **String** | This identifies the type of disability (Injury or Illness). | [optional] |
| **type_of_delivery** | **String** | This will identify the type of delivery that is performed as a result of pregnancy. | [optional] |
| **number_of_payments** | **Integer** | This will identify the number of payments that will be involved during this claim. | [optional] |
| **waive_waiting_period** | **Boolean** | This will identify whether the Waive Waiting Period option was selected. | [optional] |
| **state_tax** | **Float** | This will identify the state withhold amount for each payment. If tax calculation module is enabled, this option will be ignored. | [optional] |
| **federal_withheld** | **Float** | This will hold the amount for the Federal tax withheld from each payment. | [optional] |
| **fica** | **Float** | This will hold the FICA tax deduction for each payment. | [optional] |
| **subscriber_id** | **String** | This is the member’s unique system ID. | [optional] |
| **member_seq** | **String** | This is the member&#39;s sequence number. | [optional] |
| **first_name** | **String** | This is the Members First Name. | [optional] |
| **last_name** | **String** | This is the Members Last Name. | [optional] |
| **group_id** | **String** | This is the Members Last Name. | [optional] |
| **plan_id** | **String** | This will identify the plan under which this disability falls. | [optional] |
| **plan_type** | **String** | This is the Plan Type associated with the Plan ID. | [optional] |
| **plan_type_ltd** | **Boolean** | This is the Plan Type identifier for Long Term Disability. | [optional] |
| **exceed_return_to_work** | **Boolean** | This will be the Exceed Return To Work flag associated with the case. | [optional] |
| **exceed_max** | **Boolean** | This will indicate if max exceeded in disability payment creation. | [optional] |
| **followup_date** | **Time** | This will be the date the case is being followed up on. | [optional] |
| **followup_ex_code** | **String** | This will identify the follow-up ExCode to be used. | [optional] |
| **include_return_to_work** | **Boolean** | This will identify if the claim should include return to work. | [optional] |
| **scd** | **Boolean** | This is an SCD Payment identifier. | [optional] |
| **payment_interval** | **Integer** | This identifies the payment interval for the disability claim (e.g., 5-day, 7-day, Monthly). | [optional] |
| **surgery_ex_code** | **String** | This is the explanation code attached to the surgery payments during this disability claim. | [optional] |
| **job_type** | **String** | This will indicate the type of job associated with the disability (e.g., Sedentary, Light, Medium, Heavy). | [optional] |
| **waiting_period_ex_code** | **String** | This is the explanation code applied to the waiting period payment for this disability. | [optional] |
| **include_waiting_period** | **Boolean** | This will identify if the claim includes waiting period coverage. | [optional] |
| **max_disability** | **Integer** | This will identify the maximum amount of disability payments for this claim. | [optional] |
| **include_in_max** | **Boolean** | This flag indicates if the waiting period is included in the maximum disability calculation. | [optional] |
| **first_day_hospital** | **Boolean** | This flag identifies if the first day in the hospital is included in the disability coverage. | [optional] |
| **liability_injury** | **Boolean** | This flag identifies if the injury was due to liability. | [optional] |
| **pay_to** | **String** |  | [optional] |
| **mail_to** | **String** |  | [optional] |
| **ex_code** | **String** |  | [optional] |
| **hospitalized** | **Boolean** |  | [optional] |
| **pregnancy** | **Boolean** | This flag identifies if the disability is related to pregnancy. | [optional] |
| **discharge_date** | **Time** | This identifies the date of discharge from the hospital. | [optional] |
| **expected_typical_duration** | **Integer** | This identifies the expected typical duration of the disability. | [optional] |
| **date_of_delivery** | **Time** | This identifies the date of the delivery for pregnancy-related disability. | [optional] |
| **return_to_work** | **Time** | This identifies the date the employee returned to work after the disability. | [optional] |
| **ltd_effective_date** | **Time** | This identifies the date the long-term disability becomes effective. | [optional] |
| **ltd_packet_date** | **Time** | This identifies the date the long-term disability packet was sent. | [optional] |
| **dep_ssdi_end_date** | **Time** | This identifies the end date for dependent SSDI coverage. | [optional] |
| **last_physician_warrant_date** | **Time** | This identifies the last warrant date for the physician for this claim. | [optional] |
| **exhaust_date** | **Time** | This identifies the exhaustion date for the disability claim. | [optional] |
| **physician_return_to_work** | **Time** | This is the Return to Work date identified by the Physician at the start of disability.This may or may not be the actual date the member returns to work. | [optional] |
| **disability_pay_through_day** | **Integer** | This identifies the disability pay-through day for this claim. | [optional] |
| **overpayment_total** | **Float** | This will track the total overpayment amount for the disability claim. | [optional] |
| **overpayment_deduction** | **Float** | This will track the deduction amount for overpayments. | [optional] |
| **overpayment_ex_code** | **String** | This is the explanation code for the overpayment during the disability. | [optional] |
| **payment_duration** | **Integer** | This will identify the duration of payments for the disability (e.g., Weekly, Monthly). | [optional] |
| **process_by_disability_date** | **Boolean** | This will identify if the claim needs to be processed based on the disability date. | [optional] |
| **disability_date** | **Time** | This identifies the actual disability date for this claim. | [optional] |
| **diagnostic_code_type** | **String** | This identifies the diagnostic code type for this claim. | [optional] |
| **preview** | **Boolean** | This flag indicates if the options being sent will only product a list of payments in memory and not create them in the database.  Allows front-end to review their options before actually creating the payments. | [optional] |
| **deductions** | [**Array&lt;VBADisabilityAdvisorDeduction&gt;**](VBADisabilityAdvisorDeduction.md) | This is the list of any deductions that will be applied to each payment. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBADisabilityAdvisor.new(
  description: null,
  sick_time: null,
  sick_time_from: null,
  sick_time_thru: null,
  sick_time_ex_code: null,
  vacation: null,
  vacation_from: null,
  vacation_thru: null,
  vacation_ex_code: null,
  salary_continuation: null,
  salary_continuation_from: null,
  salary_continuation_thru: null,
  salary_continuation_ex_code: null,
  partial_disability: null,
  partial_disability_hours: null,
  image_number: null,
  image_number2: null,
  image_number3: null,
  image_number4: null,
  received_date: null,
  last_day_worked: null,
  diagnosis1: null,
  diagnosis2: null,
  date_of_surgery: null,
  waiting_period: null,
  rollup_waiting_period: null,
  admit_date: null,
  apply_extension: null,
  apply_extension_ex_code: null,
  closure_effective_date: null,
  date_first_attended: null,
  disabled_by_physician: null,
  dob: null,
  during_employment: null,
  surgery: null,
  type_of_surgery: null,
  disability_type: null,
  type_of_delivery: null,
  number_of_payments: null,
  waive_waiting_period: null,
  state_tax: null,
  federal_withheld: null,
  fica: null,
  subscriber_id: null,
  member_seq: null,
  first_name: null,
  last_name: null,
  group_id: null,
  plan_id: null,
  plan_type: null,
  plan_type_ltd: null,
  exceed_return_to_work: null,
  exceed_max: null,
  followup_date: null,
  followup_ex_code: null,
  include_return_to_work: null,
  scd: null,
  payment_interval: null,
  surgery_ex_code: null,
  job_type: null,
  waiting_period_ex_code: null,
  include_waiting_period: null,
  max_disability: null,
  include_in_max: null,
  first_day_hospital: null,
  liability_injury: null,
  pay_to: null,
  mail_to: null,
  ex_code: null,
  hospitalized: null,
  pregnancy: null,
  discharge_date: null,
  expected_typical_duration: null,
  date_of_delivery: null,
  return_to_work: null,
  ltd_effective_date: null,
  ltd_packet_date: null,
  dep_ssdi_end_date: null,
  last_physician_warrant_date: null,
  exhaust_date: null,
  physician_return_to_work: null,
  disability_pay_through_day: null,
  overpayment_total: null,
  overpayment_deduction: null,
  overpayment_ex_code: null,
  payment_duration: null,
  process_by_disability_date: null,
  disability_date: null,
  diagnostic_code_type: null,
  preview: null,
  deductions: null
)
```

