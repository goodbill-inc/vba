# Vba::MemberTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_tax_key** | **Integer** | Unique identier for each Tax configuration on this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **annual_withholding_allowance** | **Float** | Member&#39;s state annual withholding allowance as listed on the Member&#39;s tax documents. | [optional] |
| **auxiliary** | **Float** | Member&#39;s auxilary amounts as listed on the Member&#39;s tax documents. | [optional] |
| **deductions_amt** | **Float** | Member&#39;s deductions amount as listed on the Member&#39;s tax documents. | [optional] |
| **dependant_withholding_amt** | **Float** | Member&#39;s dependant withholding amount as listed on the Member&#39;s tax documents. | [optional] |
| **effective_from** | **Time** | Date when the Member&#39;s tax record becomes/became effective. | [optional] |
| **effective_thru** | **Time** | Date when the Member&#39;s tax record expires/expired. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exemptions** | **Integer** | Member&#39;s exemptions as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **exemptions_state** | **Integer** | State of the Member&#39;s exemptions as listed on the Member&#39;s tax documents. | [optional] |
| **extra_withholding_amt** | **Float** | Member&#39;s extra withholding amount as listed on the Member&#39;s tax documents. | [optional] |
| **federal_tax_exempt** | **Boolean** | Member&#39;s federal exemption status as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **filing_status** | **Integer** | Member&#39;s filing status as listed on the Member&#39;s tax documents. | [optional] |
| **filing_status_state** | **Integer** | Member&#39;s filing status for state taxes as listed on the Member&#39;s tax documents. | [optional] |
| **flat_tax** | **Float** | Member&#39;s federal flat tax amount as listed on the Member&#39;s tax documents. | [optional] |
| **flat_tax_state** | **Float** | Member&#39;s state flat tax amount as listed on the Member&#39;s tax documents. | [optional] |
| **gross_salary** | **Float** | Member&#39;s gross salary as listed on the Member&#39;s tax documents. | [optional] |
| **hours_worked** | **Float** | Number of hours the Member worked at the specified frequency as listed on the Member&#39;s tax documents. | [optional] |
| **hours_worked_frequency** | **String** | Frequency at which the Member worked the specified number of hours as listed on the Member&#39;s tax documents. | [optional] |
| **local_tax_code** | **String** | Member&#39;s local tax code as listed on the Member&#39;s tax documents. | [optional] |
| **medicare_tax_exempt** | **Boolean** | Member&#39;s medicare exemption status as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. | [optional] |
| **miscellaneous** | **Float** | Member&#39;s miscellaneous amounts as listed on the Member&#39;s tax documents. | [optional] |
| **net_salary** | **Float** | Member&#39;s net salary as listed on the Member&#39;s tax documents. | [optional] |
| **other_income_amt** | **Float** | Member&#39;s other income amount as listed on the Member&#39;s tax documents. | [optional] |
| **percentage_election** | **Float** | Member&#39;s election percentage at the federal level as listed on the Member&#39;s tax documents. | [optional] |
| **soc_sec_tax_exempt** | **Boolean** | Member&#39;s social security exemption status as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_percentage_election** | **Boolean** | Member&#39;s election percentage at the state level as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_tax_exempt** | **Boolean** | Member&#39;s tax exemption status as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state_withholding** | **Float** | Holds a numeric value listed as withholding, used in conjunction with Tax Control. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. | [optional] |
| **tax_exempt** | **Boolean** | Member&#39;s exemption status as listed on the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **tips** | **Float** | Member&#39;s amount of tips as listed on the Member&#39;s tax documents. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **w4_2020** | **Boolean** | Specifies that the associated W4 is from 2020. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **w4_box_c** | **Boolean** | Specifies whether Box C was checked according to the Member&#39;s tax documents. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::MemberTax.new(
  member_tax_key: null,
  annual_withholding_allowance: null,
  auxiliary: null,
  deductions_amt: null,
  dependant_withholding_amt: null,
  effective_from: null,
  effective_thru: null,
  entry_date: null,
  entry_user: null,
  exemptions: null,
  exemptions_state: null,
  extra_withholding_amt: null,
  federal_tax_exempt: null,
  filing_status: null,
  filing_status_state: null,
  flat_tax: null,
  flat_tax_state: null,
  gross_salary: null,
  hours_worked: null,
  hours_worked_frequency: null,
  local_tax_code: null,
  medicare_tax_exempt: null,
  member_seq: null,
  miscellaneous: null,
  net_salary: null,
  other_income_amt: null,
  percentage_election: null,
  soc_sec_tax_exempt: null,
  state_percentage_election: null,
  state_tax_exempt: null,
  state_withholding: null,
  subscriber_id: null,
  tax_exempt: null,
  tips: null,
  update_date: null,
  update_user: null,
  w4_2020: null,
  w4_box_c: null
)
```

