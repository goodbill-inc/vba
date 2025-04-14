# Vba::ClaimCustomExCodeRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_custom_ex_code_rule_key** | **Integer** | Unique identifier for each custom Ex Code rule. This takes the combination of fields on this table and, if a claim fits in the configuration, assigns an ex code. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | Benefit code associated with the selected custom ExCode rule. | [optional] |
| **claim_type** | **String** | The Claim Type for this Custom Ex Code rule. | [optional] |
| **date_type** | **String** | The Date Type (service date, received date, etc.) to use in combination with effective dates to deterine if this rule applies. | [optional] |
| **detail_amount** | **Float** | The amount you want this edit to compare against.  For example, if you wanted to apply a custom ex code for any claim with a Co Insurance greater than $50, you would set Detail_Amount_Field &#x3D; \&quot;co_ins_amt\&quot;, set the Detail_Amount_Field_Operator to \&quot;&gt;\&quot;, then set the Detail_Amount field to 50.00. | [optional] |
| **detail_amount_field** | **String** | The detail amount field drives the logic for what the Field Operator and Amount are compared against on the Service line:            payable_amount: The amount payable based on rules applied (Allowed - (copay, coins, deductible, not covered, etc.).            billed_price: The amount billed, represented by the Billed_Price field.            plan_price: The price associated with the plan, represented by the Plan_Price field.            deductible_amt: The deductible amount, represented by the Deductible_Amt field.            co_pay_amt: The co-payment amount, represented by the Co_Pay_Amt field.            co_ins_amt: The co-insurance amount, represented by the Co_Ins_Amt field.            cob_amt: The coordination of benefits amount, represented by the COB_Amt field.            cob_hold: The coordination of benefits hold amount, represented by the COB_Hold field.            cob_mem_resp: The coordination of benefits member responsibility, represented by the COB_Mem_Resp field.            mem_resp: The total member responsibility, calculated as the sum of Co_Ins_Amt, Co_Pay_Amt, and Deductible_Amt. | [optional] |
| **detail_amount_field_operator** | **String** | Simple operator (Greater than, less than, or equal).  This compares the value identified in Detail_Amount_Field against the value in the Detail_Amount field based on this opeator. | [optional] |
| **division_id** | **String** | The Division ID for this Custom Ex Code rule. | [optional] |
| **effective_date** | **Time** | Effective Date for this Custom Ex Code rule. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | The Ex Code that is applied if the identified criteria matched a claim during adjudication. | [optional] |
| **federal_id** | **String** | The Tax ID for this Custom Ex Code rule. | [optional] |
| **from_diag_code** | **String** | The Diagnosis Range for this Custom Ex Code rule. | [optional] |
| **from_procedure** | **String** | The Procedure Range for this Custom Ex Code rule. | [optional] |
| **group_id** | **String** | The Group ID for this Custom Ex Code rule. | [optional] |
| **member_seq** | **String** | The Member Sequence for this Custom Ex Code rule. | [optional] |
| **network_option** | **String** | Option that allows custom claim rules to be applied in network, out of network or in all cases | [optional] |
| **plan_id** | **String** | The Plan ID for this Custom Ex Code rule. | [optional] |
| **provider_id** | **String** | The Provider ID for this Custom Ex Code rule. | [optional] |
| **subscriber_id** | **String** | The Subscriber ID for this Custom Ex Code rule. | [optional] |
| **term_date** | **Time** | Term Date for this Custom Ex Code rule. | [optional] |
| **thru_diag_code** | **String** | The Diagnosis Range for this Custom Ex Code rule. | [optional] |
| **thru_procedure** | **String** | The Procedure Range for this Custom Ex Code rule. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_detail_ex_code** | **Boolean** | Indicates that this Custom Ex Code rule is going to apply the resulting Ex Code to the Service Line rather than the header.  This assumes the use of Benefit_Code and the Detail_Amount fields. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::ClaimCustomExCodeRule.new(
  claim_custom_ex_code_rule_key: null,
  benefit_code: null,
  claim_type: null,
  date_type: null,
  detail_amount: null,
  detail_amount_field: null,
  detail_amount_field_operator: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  federal_id: null,
  from_diag_code: null,
  from_procedure: null,
  group_id: null,
  member_seq: null,
  network_option: null,
  plan_id: null,
  provider_id: null,
  subscriber_id: null,
  term_date: null,
  thru_diag_code: null,
  thru_procedure: null,
  update_date: null,
  update_user: null,
  use_detail_ex_code: null
)
```

