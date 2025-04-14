# Vba::ReinsContract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reins_contract_key** | **Integer** | Unique identifier for each Reinsurance Contract. This is system generated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **adjudicate_threshold** | **Float** | Notes the threshold for when a member will have an ex code applied to their claim as they incur more claims against this contract. | [optional] |
| **adjudicate_threshold_ex_code** | **String** | The ex code that is applied to claims for members who exceed the adjudication threshold. | [optional] |
| **adjudicate_threshold_pct** | **Boolean** | Notes if the \&quot;Adjudicate Threshold\&quot; is a percentage or flat value. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **aggregate_max** | **Float** | The aggregating Spec. Max for all members on this Reinsurance Contract. | [optional] |
| **aggregate_specific_deductible** | **Float** | The aggregating Spec. Deductible for all members on this Reinsurance Contract. | [optional] |
| **attachment_minimum** | **Float** | The attachment point for reinsurance reporting. | [optional] |
| **attachment_minimum_term** | **String** | Notes if the attachment minimu is a monthly or annual value. | [optional] |
| **carrier_key** | **Integer** | References the Carrier.Carrier_Key value on referenced table. | [optional] |
| **contract_cycle** | **String** | User defined contract period from the ReinsContractCycle table. | [optional] |
| **contract_id** | **String** | The contract ID assigned by the client to this Reinsurance Contract. | [optional] |
| **contract_level** | **String** | Contract Level notes what level the members and claims on this contract are included. The level can be Group, Division or Subscriber. | [optional] |
| **contract_status** | **String** | The status of the contract, Open or Closed. | [optional] |
| **contract_type** | **String** | The type of contractly, typically a 12/12 or 12/24 contract. | [optional] |
| **description** | **String** | The description of this Reinsurance Contract. | [optional] |
| **disenrolled_by_day** | **Integer** | Impacts how eligiblity is calculated when determining if a member applies to this contract. | [optional] |
| **division_id** | **String** | When contract Level is Division, this is the Division (in combination with Group) that is applicable to this Reinsurance Contract. | [optional] |
| **domestic_claim_criteria_key** | **Integer** |  | [optional] |
| **effective_date** | **Time** | The effective date of this Reinsurance Contract. Used in reporting and transaction processing. | [optional] |
| **enroll_disenroll_by_on_agg_report** | **Boolean** | Used in custom reporting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **enrolled_by_day** | **Integer** | Impacts how eligiblity is calculated when determining if a member applies to this contract. | [optional] |
| **enrollment_baseline** | **Integer** | Used in custom reporting. | [optional] |
| **enrollment_change_threshold** | **Float** | Used in custom reporting. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **group_id** | **String** | When contract Level is Group, this is the Group that is applicable to this Reinsurance Contract. | [optional] |
| **policy_number** | **String** | The policy number associated with this Reinsurance Contract. | [optional] |
| **reimburse_method** | **String** | Notes if this is \&quot;Spec. Advance Fund\&quot; where all claims are included or \&quot;Pay and Reimburse\&quot; where only paid claims are included in the calculation. | [optional] |
| **spec_threshold_notify** | **Boolean** | Indicates if an Event should be generated and user or group notified when the threshold has been exceeded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **specific_deductible** | **Float** | The individual member Spec. Deductible for this Reinsurance Contract. | [optional] |
| **specific_deductible_family** | **Boolean** | The family Spec. Deductible for this Reinsurance Contract. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **specific_max** | **Float** | The Spec. Limit for this Reinsurance Contract. | [optional] |
| **specific_reporting_threshold** | **Float** | Notes the threshold for when a member will be considered part of the Member Loss report. | [optional] |
| **specific_reporting_threshold_pct** | **Boolean** | Notes if the Specific_Reporting_Threshold value is a percentage or set value. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_minimum** | **Float** | The individual state attachment minimum for reporting based on the state of the member. | [optional] |
| **subscriber_id** | **String** | When contract Level is Subscriber, this is the Subscriber (in combination with Group and Division) that is applicable to this Reinsurance Contract. | [optional] |
| **template_contract** | **Boolean** | Allows the user to create a template contract that can then be \&quot;copied\&quot; whenever new contracts are created. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | The term date of this Reinsurance Contract. Used in reporting and transaction processing. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_reins_level** | **Boolean** | Indicates if this contract uses \&quot;Reinsurance Levels\&quot; for Reinsurance Calculations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ReinsContract.new(
  reins_contract_key: null,
  adjudicate_threshold: null,
  adjudicate_threshold_ex_code: null,
  adjudicate_threshold_pct: null,
  aggregate_max: null,
  aggregate_specific_deductible: null,
  attachment_minimum: null,
  attachment_minimum_term: null,
  carrier_key: null,
  contract_cycle: null,
  contract_id: null,
  contract_level: null,
  contract_status: null,
  contract_type: null,
  description: null,
  disenrolled_by_day: null,
  division_id: null,
  domestic_claim_criteria_key: null,
  effective_date: null,
  enroll_disenroll_by_on_agg_report: null,
  enrolled_by_day: null,
  enrollment_baseline: null,
  enrollment_change_threshold: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  policy_number: null,
  reimburse_method: null,
  spec_threshold_notify: null,
  specific_deductible: null,
  specific_deductible_family: null,
  specific_max: null,
  specific_reporting_threshold: null,
  specific_reporting_threshold_pct: null,
  state_minimum: null,
  subscriber_id: null,
  template_contract: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_reins_level: null
)
```

