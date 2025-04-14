# Vba::MemberMedicareResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_medicare_resp_key** | **Integer** | Unique identifier for each Medicare Reponsibility record on this Member. Note: The database will apply a default value of &#39;0&#39; for this field if a value is not provided. This field is also marked as NOT NULL in the database and therefore required by the API. If you do not have a value for this field, supply the database default value of &#39;0&#39; to meet the API requirements and ensure that the functionality occurs as expected. | [optional] |
| **cob_c_assigned_dcn** | **String** | Indicates the coordination of benefits contractor&#39;s document control number. | [optional] |
| **compliance_flag1** | **String** | Compliance Code 1. | [optional] |
| **compliance_flag10** | **String** | Compliance Code 10. | [optional] |
| **compliance_flag2** | **String** | Compliance Code 2. | [optional] |
| **compliance_flag3** | **String** | Compliance Code 3. | [optional] |
| **compliance_flag4** | **String** | Compliance Code 4. | [optional] |
| **compliance_flag5** | **String** | Compliance Code 5. | [optional] |
| **compliance_flag6** | **String** | Compliance Code 6. | [optional] |
| **compliance_flag7** | **String** | Compliance Code 7. | [optional] |
| **compliance_flag8** | **String** | Compliance Code 8. | [optional] |
| **compliance_flag9** | **String** | Compliance Code 9. | [optional] |
| **disposition_code** | **String** | Disposition code that indicates the results of processing. | [optional] |
| **disposition_code_date** | **Time** | Date associated with the disposition code. |  |
| **ers_d_coord_period_end_date** | **Time** | End date of the coordination period for the Member&#39;s End State Renal Disease. |  |
| **ers_d_coord_period_start_date** | **Time** | Start date of the coordination period for the Member&#39;s End Stage Renal Disease. |  |
| **esr_d_self_training_date** | **Time** | Date when the Member started self-training. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **error_code1** | **String** | Error Code 1. | [optional] |
| **error_code2** | **String** | Error Code 2. | [optional] |
| **error_code3** | **String** | Error Code 3. | [optional] |
| **error_code4** | **String** | Error Code 4. | [optional] |
| **first_dialysis_date** | **Time** | Date when the Member first underwent dialysis. |  |
| **hicn** | **String** | Indicates the Medicare health insurance claim number. | [optional] |
| **late_submission_ind** | **String** | Indicates that the Medicare Sec. 111 submission was late. | [optional] |
| **ms_p_birth_date** | **Time** | Date of birth of the Medicare Secondary Payor. |  |
| **ms_p_eff_date** | **Time** | Date when the Medicare Secondary Payor becomes/became effective. |  |
| **ms_p_gender** | **String** | Gender of the Medicare Secondary Payor. | [optional] |
| **ms_p_last_name** | **String** | Medicare Secondary Payor&#39;s last name. | [optional] |
| **ms_p_term_date** | **Time** | Date when the Medicare Secondary Payor expires/expired. |  |
| **medicare_part_a_eff_date** | **Time** | Date when this Medicare part becomes/became effective. |  |
| **medicare_part_a_term_date** | **Time** | Date when this Medicare part expires/expired. |  |
| **medicare_part_a_update_date** | **Time** | Date when this Medicare part was last updated. |  |
| **medicare_part_b_eff_date** | **Time** | Date when this Medicare part becomes/became effective. |  |
| **medicare_part_b_term_date** | **Time** | Date when this Medicare part expires/expired. |  |
| **medicare_part_b_update_date** | **Time** | Date when this Medicare part was last updated. |  |
| **medicare_part_c_control_num** | **String** | Indicates the control number for the associated Medicare part. | [optional] |
| **medicare_part_c_eff_date** | **Time** | Date when this Medicare part becomes/became effective. |  |
| **medicare_part_c_term_date** | **Time** | Date when this Medicare part expires/expired. |  |
| **medicare_part_c_update_date** | **Time** | Date when this Medicare part was last updated. |  |
| **medicare_part_d_control_num** | **String** | Indicates the control number for the associated Medicare part. | [optional] |
| **medicare_part_d_eff_date** | **Time** | Date when this Medicare part becomes/became effective. |  |
| **medicare_part_d_term_date** | **Time** | Date when this Medicare part expires/expired. |  |
| **medicare_part_d_update_date** | **Time** | Date when this Medicare part was last updated. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. | [optional] |
| **rr_e_assigned_dcn** | **String** | Indicates the responsiible reporting entity&#39;s assigned document control number. | [optional] |
| **submission_status** | **String** | Status of the Medicare Sec. 111 reporting. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. | [optional] |
| **transplant_date_most_recent** | **Time** | Date of the Member&#39;s most recent transplant. |  |
| **transplant_failure_date_most_recent** | **Time** | Date of the Member&#39;s most recent transplant failure. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberMedicareResp.new(
  member_medicare_resp_key: null,
  cob_c_assigned_dcn: null,
  compliance_flag1: null,
  compliance_flag10: null,
  compliance_flag2: null,
  compliance_flag3: null,
  compliance_flag4: null,
  compliance_flag5: null,
  compliance_flag6: null,
  compliance_flag7: null,
  compliance_flag8: null,
  compliance_flag9: null,
  disposition_code: null,
  disposition_code_date: null,
  ers_d_coord_period_end_date: null,
  ers_d_coord_period_start_date: null,
  esr_d_self_training_date: null,
  entry_date: null,
  entry_user: null,
  error_code1: null,
  error_code2: null,
  error_code3: null,
  error_code4: null,
  first_dialysis_date: null,
  hicn: null,
  late_submission_ind: null,
  ms_p_birth_date: null,
  ms_p_eff_date: null,
  ms_p_gender: null,
  ms_p_last_name: null,
  ms_p_term_date: null,
  medicare_part_a_eff_date: null,
  medicare_part_a_term_date: null,
  medicare_part_a_update_date: null,
  medicare_part_b_eff_date: null,
  medicare_part_b_term_date: null,
  medicare_part_b_update_date: null,
  medicare_part_c_control_num: null,
  medicare_part_c_eff_date: null,
  medicare_part_c_term_date: null,
  medicare_part_c_update_date: null,
  medicare_part_d_control_num: null,
  medicare_part_d_eff_date: null,
  medicare_part_d_term_date: null,
  medicare_part_d_update_date: null,
  member_seq: null,
  rr_e_assigned_dcn: null,
  submission_status: null,
  subscriber_id: null,
  transplant_date_most_recent: null,
  transplant_failure_date_most_recent: null,
  update_date: null,
  update_user: null
)
```

