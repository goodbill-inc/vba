# Vba::State

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state_abbrev** | **String** | Two letter abbeviation for the state |  |
| **all_states** | **String** | Flag indicating the identifier refers to all states | [optional] |
| **apply_state_tax** | **Boolean** | Flag indicating if state tax should be applied to calculations Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach_business_days** | **Boolean** | Flag indicating if ACH/EDI prompt pay frequency is based on business days Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_ach_prompt_pay_freq** | **Integer** | Number of units used for ACH/EDI prompt pay frequency | [optional] |
| **calc_interest_ach_prompt_pay_type** | **String** | Units used for ACH/EDI prompt pay frequency, either days, months or years | [optional] |
| **calc_interest_business_days** | **Boolean** | Flag indicating if manual prompt pay frequency is based on business days Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_interest_prompt_pay_freq** | **Integer** | Number of units used for manual prompt pay frequency | [optional] |
| **calc_interest_prompt_pay_type** | **String** | Units used for manual prompt pay frequency, either days, months or years | [optional] |
| **default_percentage_election** | **Float** | Amount of the default percentage election that should be applied to calculations Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **state_name** | **String** | Full name of the state | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_percentage_election** | **Boolean** | Flag indicating if the default percentage election should be applied to calculations Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_state_interest_settings** | **Boolean** | Flag to control whether to use the State Interest entries for a specific state instead of State Details. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::State.new(
  state_abbrev: null,
  all_states: null,
  apply_state_tax: null,
  calc_interest_ach_business_days: null,
  calc_interest_ach_prompt_pay_freq: null,
  calc_interest_ach_prompt_pay_type: null,
  calc_interest_business_days: null,
  calc_interest_prompt_pay_freq: null,
  calc_interest_prompt_pay_type: null,
  default_percentage_election: null,
  entry_date: null,
  entry_user: null,
  state_name: null,
  update_date: null,
  update_user: null,
  use_percentage_election: null,
  use_state_interest_settings: null
)
```

