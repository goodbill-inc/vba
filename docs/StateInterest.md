# Vba::StateInterest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state_interest_key** | **Integer** | Kev value identifying a specific state interest rate Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ac_h_interest_pct** | **Float** | Value for interest to five decimal places, used in EDI/ACH interest calculations. | [optional] |
| **ac_h_no_interest_within** | **String** | User selection to control a window for interest to be avoided in EDI/ACH calculations. | [optional] |
| **calc_interest_ach_business_days** | **Boolean** | Flag to control force only business days on the calendar to be used in EDI/ACH interest calculations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach_prompt_pay_freq** | **Integer** | Value for the (lower bound on StateInterest entries only) for Prompt Pay range in EDI/ACH calculations. | [optional] |
| **calc_interest_ach_prompt_pay_freq_thru** | **Integer** | Value for the upper bound (StateInterest entries only) for Prompt Pay range in EDI/ACH calculations. | [optional] |
| **calc_interest_ach_prompt_pay_type** | **String** | Defines the unit for the prompt pay range in EDI/ACH calculations. D &#x3D; Days, M &#x3D; Months, Y &#x3D; Years. | [optional] |
| **calc_interest_business_days** | **Boolean** | Flag to control force only business days on the calendar to be used in Manual/Default interest calculations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_prompt_pay_freq** | **Integer** | Value for the (lower bound on StateInterest entries only) for Prompt Pay range in Manual/Default calculations. | [optional] |
| **calc_interest_prompt_pay_freq_thru** | **Integer** | Value for the upper bound (StateInterest entries only) for Prompt Pay range in Manual/Default calculations. | [optional] |
| **calc_interest_prompt_pay_type** | **String** | Defines the unit for the prompt pay range in Manual/Default calculations. D &#x3D; Days, M &#x3D; Months, Y &#x3D; Years. | [optional] |
| **compound_ach_interest** | **Boolean** | Flag to control if/how interest is compounded in EDI/ACH interest calculations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **compound_interest** | **Boolean** | Flag to control if/how interest is compounded in Manual/Default interest calculations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date the interest rate becomes effective | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **interest_pct** | **Float** | Interest rate that applies in the specified state | [optional] |
| **no_interest_within** | **String** | Option to indicate no interest should be applied within the selected timeframe | [optional] |
| **state** | **String** | Two letter abbeviation for the state |  |
| **term_date** | **Time** | Date the interest rate terminates | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::StateInterest.new(
  state_interest_key: null,
  ac_h_interest_pct: null,
  ac_h_no_interest_within: null,
  calc_interest_ach_business_days: null,
  calc_interest_ach_prompt_pay_freq: null,
  calc_interest_ach_prompt_pay_freq_thru: null,
  calc_interest_ach_prompt_pay_type: null,
  calc_interest_business_days: null,
  calc_interest_prompt_pay_freq: null,
  calc_interest_prompt_pay_freq_thru: null,
  calc_interest_prompt_pay_type: null,
  compound_ach_interest: null,
  compound_interest: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  interest_pct: null,
  no_interest_within: null,
  state: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

