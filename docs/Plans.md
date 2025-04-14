# Vba::Plans

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | Unique identifier assigned to the Plan. |  |
| **annual_max** | **Float** | Total In-Network and Out of Network annual maximum the plan will pay out for the Familiy. | [optional] |
| **annual_max_net** | **Float** | In-Network annual maximum that the plan will pay out for the Familiy. | [optional] |
| **annual_max_oon** | **Float** | Out of Network annual maximum that the plan will pay out for the Familiy. | [optional] |
| **auto_create_flex** | **Boolean** | Indicates if this plan allows auto-creation of Flex claims based on Group level configuration for flex auto-creation. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cobr_a_plan_type_desc** | **String** | Used for custom reporting and information. | [optional] |
| **co_b_savings_max** | **Float** | Indicates the maximum amount that can be held in COB savings. | [optional] |
| **co_b_type** | **String** | Indicates the type of COB to be used with the selected plan. | [optional] |
| **capitated** | **Boolean** | No longer in use. All captiation logic and processing now resides in the capitation tables. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cash_value_default** | **Integer** | Default cash value when Policy &amp; Forfeiture is used in enrollment. | [optional] |
| **co_ins_in_to_out** | **Boolean** | Indicates whether In-Network Coinsurance amounts apply toward the satisfaction of Out of Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_max_mem** | **Float** | In Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_net_mem** | **Float** | Total Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_net_sub** | **Float** | Out of Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_oon_mem** | **Float** | Out of Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_oon_sub** | **Float** | In Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_sub** | **Float** | Total Co-Insurance amount for the Family. | [optional] |
| **co_ins_out_to_in** | **Boolean** | Indicates whether Out of Network CoInsurance amounts apply toward the satisfaction of the In-Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of co-insurance that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_out_to_in_limit_max** | **Float** | The max with which the co-insurance is limited by when CoIns_Out To In Limit is selected. | [optional] |
| **context4_clm_ucr_pct** | **Integer** | Claim UCR percentage provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_clm_ucr_pct_oon** | **Integer** | Out of network claim UCR percentage provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_fee_selector** | **String** | Fee Selector provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_fee_selector_oon** | **String** | Out of network fee selector provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_medicare_pct** | **Integer** | Medicare percentage provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_medicare_pct_oon** | **Integer** | Out of network Medicare percentage provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_password** | **String** | Password provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_payor_type** | **String** | Payor type provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_payor_type_oon** | **String** | Out of network Payor type provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_pct_of_chg** | **Integer** | Percentage of change provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_pct_of_chg_oon** | **Integer** | Out of network percentage of change provided by context. Required for Context claim edits and repricing. | [optional] |
| **context4_plan_price_not_greater_billed_fg** | **Boolean** | When using Context4, the Plan Price is never allowed to exceed the Billed Price, it&#39;ll set it to the Billed Price. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **context4_user_id** | **String** | User ID provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_web_uri** | **String** | URL provided by Context. Required for Context claim edits and repricing. | [optional] |
| **context4_web_uri_delete** | **String** | URL delete provided by Context. Required for Context claim edits and repricing. | [optional] |
| **currency_id** | **String** | Indicates the currency being used. | [optional] |
| **ded_in_to_out** | **Boolean** | Indicates whether In-Network Deductible amounts apply toward the satisfaction of Out of Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in** | **Boolean** | Indicates whether Out of Network Deductible amounts apply toward the satisfaction of In-Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of deductible that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in_limit_max** | **Float** | The max with which the deducible is limited by when Ded_Out To In Limit is selected. | [optional] |
| **description** | **String** | A short description of the associated plan. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **extended_term_default** | **Integer** | Deault extended term value assigned in Policy &amp; Forfeiture when used in enrollment. | [optional] |
| **family_level_co_ins** | **Boolean** | Specifies that the number of Member level Coinsurance amounts should be used to satisfy the Family level Coinsurance amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **family_level_co_ins_member** | **Integer** | Number of Members that must satisfy the Member level deductible before the Family level amount is considered met. | [optional] |
| **family_level_ded** | **Boolean** | Specifies that the number of Member level deductible amounts should be used to satisfy the Family level deductible. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **family_level_ded_member** | **Integer** | Number of Members that must satisfy the Member level deductible before the Family level amount is considered met. | [optional] |
| **family_level_oop** | **Boolean** | Specifies that the number of Member level Out of Pocket amounts should be used to satisfy the Family level Out of Pocket amount. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **family_level_oop_member** | **Integer** | Number of Members that must satisfy the Member level Out of Pocket before the Family level Out of Pocket is considered met. | [optional] |
| **flex_advance_fund** | **Boolean** | Information field used in reporting to identify this plan as Flex Advance Fund. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **flex_type** | **String** | Indicates what type of Flex account to be associated with the plan. | [optional] |
| **forfeiture_status_default** | **String** | Default forfeiture status assigned when Policy &amp; Forteiture is used in enrollment. | [optional] |
| **illness_ex_code** | **String** | Ex Code associated with the illness waiting period. | [optional] |
| **illness_waiting_period** | **Integer** | Waiting Period after an illness for Disability plans to start coverage. | [optional] |
| **include_waiting_period** | **Boolean** | Indicates whether the Disability plan includes a waiting period. | [optional] |
| **injury_ex_code** | **String** | Ex Code associated with the injury waiting period. | [optional] |
| **injury_waiting_period** | **Integer** | Waiting Period after an injury for Disability plans to start coverage. | [optional] |
| **lt_c_apply_elimination_period** | **Boolean** | Indicates if this Plan has Elimination Period rules. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_apply_waiver_of_premium** | **Boolean** | Indicates if Waiver of Premium rules should apply for this plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_daily_benefit** | **Float** | This is the daily benefit amount | [optional] |
| **lt_c_daily_benefit_range_from** | **Float** | The start of the selection range for members taking this plan and choosing their daily benefit. | [optional] |
| **lt_c_daily_benefit_range_increment** | **Float** | The increment of each option in the range between the from and thru.  If empty, the member can manually select a value between the from / thru range. | [optional] |
| **lt_c_daily_benefit_range_thru** | **Float** | The end of the selection range for members taking this plan and choosing their daily benefit. | [optional] |
| **lt_c_daily_benefit_type** | **String** | This is the type of daily benefit defined for this plan.  The values are:  A - a flat daily benefit enforced by the plan.  B - member selected value utilizing the daily benefit range/increment settings. | [optional] |
| **lt_c_elimination_period** | **Integer** | This is the elimination period value based on Elimination_Period_Type. | [optional] |
| **lt_c_elimination_period_per_claim** | **Boolean** | Indicates if the elimination period is per claim.  By default the elimination period is per plan/policy. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_elimination_period_type** | **String** | This is the type of Elimination Period rule to apply for this Plan.  Values are:  A - Calendar Days  B - Service Days  C - Special Service Days (one day equals a week of elimination period) | [optional] |
| **lt_c_lifetime_max_days_from** | **Integer** | The selectable range of days the member can pick for calculations based on days. | [optional] |
| **lt_c_lifetime_max_days_thru** | **Integer** | The selectable range of days the member can pick for calculations based on days. | [optional] |
| **lt_c_lifetime_max_from** | **Float** | The low end range for member lifetime max selection. | [optional] |
| **lt_c_lifetime_max_increment** | **Float** | The increment of options the user can select within the max range.  Empty value here means it is a free from entry of max between the range. | [optional] |
| **lt_c_lifetime_max_joint_policy** | **Boolean** | Indicates if plans of the same plan type, and both flagged as joint policy, can share a \&quot;Total\&quot; lifetime max between both plans as long as both plans have selected a shared benefit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_lifetime_max_thru** | **Float** | The high end range for member lifetime max selection. | [optional] |
| **lt_c_lifetime_max_type** | **String** | Lifetime Max calculation type and will dicatate the max rules applied.  Valid values are:  STANDARD - DBM x 365 days x Lifetime Max Years selected  LMDAYS - DBM x Lifetime Max Days selected  FLAT - Lifetime Max Amount selected and not based on calculation  LMMONTHS - MBA x 12 Months x Lifetime Max Years selected | [optional] |
| **lt_c_lifetime_max_years_from** | **Integer** | the selectable range of years the member can pick for calculations based on years. | [optional] |
| **lt_c_lifetime_max_years_thru** | **Integer** | The selectable range of years the member can pick for calculations based on years. | [optional] |
| **lt_c_monthly_benefit** | **Float** | This is the monthly benefit amount | [optional] |
| **lt_c_monthly_benefit_range_from** | **Float** | The start of the selection range for members taking this plan and choosing their monthly benefit. | [optional] |
| **lt_c_monthly_benefit_range_increment** | **Float** | The increment of each option in the range between the from and thru.  If empty, the member can manually select a value between the from / thru range. | [optional] |
| **lt_c_monthly_benefit_range_thru** | **Float** | The end of the selection range for members taking this plan and choosing their monthly benefit. | [optional] |
| **lt_c_monthly_benefit_type** | **String** | This is the type of monthly benefit defined for this plan.  The values are:  A - a flat monthly benefit enforced by the plan.  B - member selected value utilizing the monthly benefit range/increment settings. | [optional] |
| **lt_c_waiver_of_premium_type** | **String** | This is the type/rules for LTC waiver of premium. Current Values are:  A - 1st day of following month  B - day of eligibility approval  C - joint waiver  D - survivorship waiver | [optional] |
| **lifetime_max** | **Float** | Total lifetime amount that the Plan will pay both In Network and Out of Network for the Familiy. | [optional] |
| **lifetime_max_net** | **Float** | Lifetime amount that the Plan will pay In Network for the Familiy. | [optional] |
| **lifetime_max_oon** | **Float** | Lifetime amount that the Plan will pay Out of Network for the Familiy. | [optional] |
| **maturity_age** | **Integer** | Specifies the required age for maturity of policy inside enrollment. | [optional] |
| **maturity_age_type** | **String** | Defines the age type for maturity based upon birth date or anniversary of enrollment. | [optional] |
| **max_disability_weeks** | **Integer** | Maximum number of weeks the specified Plan will pay Disability. | [optional] |
| **max_includes_waiting_period** | **Boolean** | Indicates whether the waiting period is included in the Max Disability Weeks. | [optional] |
| **mem_ded_credit** | **Float** | Total deductible amount to be credited back to each Member during adjudication. | [optional] |
| **mem_ded_credit_oon** | **Float** | Out of Network deductible amount to be credited back to each Member during adjudication. | [optional] |
| **mem_ded_credit_ppo** | **Float** | In-Network deductible amount to be credited back to each Member during adjudication. | [optional] |
| **member_annual_max** | **Float** | Total In-Network and Out of Network annual maximum the plan will pay out per Member. | [optional] |
| **member_annual_max_net** | **Float** | In-Network annual maximum that the plan will pay out per Member. | [optional] |
| **member_annual_max_oon** | **Float** | Out of Network annual maximum that the plan will pay out per Member. | [optional] |
| **member_ded_oon** | **Float** | Deductible amount for the Member Out of Network. | [optional] |
| **member_ded_ppo** | **Float** | Deductible amount for the Member In Network. | [optional] |
| **member_deductible** | **Float** | Total deductible amount for the Member both In Network and Out of Network. | [optional] |
| **member_lifetime_max** | **Float** | Total In-Network and Out of Network lifetime maximum that the plan will pay out per Member. | [optional] |
| **member_lifetime_max_net** | **Float** | In-Network lifetime maximum that the plan will pay out per Member. | [optional] |
| **member_lifetime_max_oon** | **Float** | Out of Network lifetime that the plan will pay out per Member. | [optional] |
| **oo_p_calc_option** | **String** | Formula used to calculate Out of Pocket amounts. | [optional] |
| **oo_p_in_to_out** | **Boolean** | Indicates whether In-Network Out of Pocket amounts apply toward the satisfaction of Out of Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_max_mem** | **Float** | Total In-Network and Out of Network Out of Pocket maximum for the Member. | [optional] |
| **oo_p_max_net_mem** | **Float** | In-Network Out of Pocket maximum for the Member. | [optional] |
| **oo_p_max_net_sub** | **Float** | In-Network Out of Pocket maximum for the Family. | [optional] |
| **oo_p_max_oon_mem** | **Float** | Out of Network Out of Pocket for the Member. | [optional] |
| **oo_p_max_oon_sub** | **Float** | Out of Network Out of Pocket for the Family. | [optional] |
| **oo_p_max_sub** | **Float** | Total In-Network and Out of Network Out of Pocket maximum for the Family. | [optional] |
| **oo_p_out_to_in** | **Boolean** | Indicates whether Out of Network Out of Pocket amounts apply toward the satisfaction of In-Network amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of out of pocket that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_out_to_in_limit_max** | **Float** | The max with which the out of pocket is limited by when OOP_Out To In Limit is selected. | [optional] |
| **payment_interval** | **Integer** | Payment Interval or frequency for Disability plans. | [optional] |
| **payor_id** | **String** | No longer in use. | [optional] |
| **pend_ex_code** | **String** | Identifies the Ex Code that will be applied based upon the Pend_Flag field. | [optional] |
| **pend_flag** | **String** | Specifies if an Ex Code will be assigned, which will apply to all claims adjudicated for this plan. The Ex Code can be an informational, denial, or pend code. All ExCodes impact adjudication. | [optional] |
| **plan_document_url** | **String** | Used for custom reporting and information. | [optional] |
| **plan_type** | **String** | Identifies the Type of Plan (medical, dental, etc.). Keep in mind that Accumulators are tied to &#39;Plan Type&#39; not the plan itself. | [optional] |
| **policy_forfeiture_grace_period** | **Integer** | Length of the grace period. | [optional] |
| **policy_forfeiture_grace_period_type** | **String** | Defines the type of grace period. Restricted to units of days. | [optional] |
| **policy_status_default** | **String** | Default policy status assigned when Policy &amp; Forteiture is used in enrollment. | [optional] |
| **pre_ex_ex_code** | **String** | Identifies the Ex Code that will be applied to disability claims falling within the provided range. | [optional] |
| **pre_ex_from** | **Integer** | No longer in use. Pre-Ex processing has been moved to a more detailed structure in PlanPrex tables. | [optional] |
| **pre_ex_range** | **Integer** | Defines a range of days that is determined by comparing the start date of the plan and the disability date. If a disability claim falls within this defined range, the specified Ex Code will be applied to that claim. | [optional] |
| **pre_ex_thru** | **Integer** | No longer in use. Pre-Ex processing has been moved to a more detailed structure in PlanPrex tables. | [optional] |
| **qp_a_method** | **String** | Determines the QPA Method to be used for claims under this Plan | [optional] |
| **reduced_paid_up_default** | **Integer** | Deault paid up value when Policy &amp; Forfeiture is used in enrollment. | [optional] |
| **remove_member_amount_edit** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **situs_state** | **String** | State where the Plan originates or applies | [optional] |
| **sub_ded_credit** | **Float** | Total deductible amount to be credited back to the Subscriber during adjudication. | [optional] |
| **sub_ded_credit_oon** | **Float** | Out of Network deductible amount to be credited back to the Subscriber during adjudication. | [optional] |
| **sub_ded_credit_ppo** | **Float** | In-Network deductible amount to be credited back to the Subscriber during adjudication. | [optional] |
| **subscriber_ded_oon** | **Float** | Deductible amount for the Family Out of Network. | [optional] |
| **subscriber_ded_ppo** | **Float** | Deductible amount for the Family In Network. | [optional] |
| **subscriber_deductible** | **Float** | Total deductible amount for the Family both In Network and Out of Network. | [optional] |
| **survivor_benefit** | **Integer** | Survivor Benefit associated with Disability plans. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_cob_savings** | **Boolean** | Indicates whether the COB should be used. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::Plans.new(
  plan_id: null,
  annual_max: null,
  annual_max_net: null,
  annual_max_oon: null,
  auto_create_flex: null,
  cobr_a_plan_type_desc: null,
  co_b_savings_max: null,
  co_b_type: null,
  capitated: null,
  cash_value_default: null,
  co_ins_in_to_out: null,
  co_ins_max_mem: null,
  co_ins_max_net_mem: null,
  co_ins_max_net_sub: null,
  co_ins_max_oon_mem: null,
  co_ins_max_oon_sub: null,
  co_ins_max_sub: null,
  co_ins_out_to_in: null,
  co_ins_out_to_in_limit: null,
  co_ins_out_to_in_limit_max: null,
  context4_clm_ucr_pct: null,
  context4_clm_ucr_pct_oon: null,
  context4_fee_selector: null,
  context4_fee_selector_oon: null,
  context4_medicare_pct: null,
  context4_medicare_pct_oon: null,
  context4_password: null,
  context4_payor_type: null,
  context4_payor_type_oon: null,
  context4_pct_of_chg: null,
  context4_pct_of_chg_oon: null,
  context4_plan_price_not_greater_billed_fg: null,
  context4_user_id: null,
  context4_web_uri: null,
  context4_web_uri_delete: null,
  currency_id: null,
  ded_in_to_out: null,
  ded_out_to_in: null,
  ded_out_to_in_limit: null,
  ded_out_to_in_limit_max: null,
  description: null,
  entry_date: null,
  entry_user: null,
  extended_term_default: null,
  family_level_co_ins: null,
  family_level_co_ins_member: null,
  family_level_ded: null,
  family_level_ded_member: null,
  family_level_oop: null,
  family_level_oop_member: null,
  flex_advance_fund: null,
  flex_type: null,
  forfeiture_status_default: null,
  illness_ex_code: null,
  illness_waiting_period: null,
  include_waiting_period: null,
  injury_ex_code: null,
  injury_waiting_period: null,
  lt_c_apply_elimination_period: null,
  lt_c_apply_waiver_of_premium: null,
  lt_c_daily_benefit: null,
  lt_c_daily_benefit_range_from: null,
  lt_c_daily_benefit_range_increment: null,
  lt_c_daily_benefit_range_thru: null,
  lt_c_daily_benefit_type: null,
  lt_c_elimination_period: null,
  lt_c_elimination_period_per_claim: null,
  lt_c_elimination_period_type: null,
  lt_c_lifetime_max_days_from: null,
  lt_c_lifetime_max_days_thru: null,
  lt_c_lifetime_max_from: null,
  lt_c_lifetime_max_increment: null,
  lt_c_lifetime_max_joint_policy: null,
  lt_c_lifetime_max_thru: null,
  lt_c_lifetime_max_type: null,
  lt_c_lifetime_max_years_from: null,
  lt_c_lifetime_max_years_thru: null,
  lt_c_monthly_benefit: null,
  lt_c_monthly_benefit_range_from: null,
  lt_c_monthly_benefit_range_increment: null,
  lt_c_monthly_benefit_range_thru: null,
  lt_c_monthly_benefit_type: null,
  lt_c_waiver_of_premium_type: null,
  lifetime_max: null,
  lifetime_max_net: null,
  lifetime_max_oon: null,
  maturity_age: null,
  maturity_age_type: null,
  max_disability_weeks: null,
  max_includes_waiting_period: null,
  mem_ded_credit: null,
  mem_ded_credit_oon: null,
  mem_ded_credit_ppo: null,
  member_annual_max: null,
  member_annual_max_net: null,
  member_annual_max_oon: null,
  member_ded_oon: null,
  member_ded_ppo: null,
  member_deductible: null,
  member_lifetime_max: null,
  member_lifetime_max_net: null,
  member_lifetime_max_oon: null,
  oo_p_calc_option: null,
  oo_p_in_to_out: null,
  oo_p_max_mem: null,
  oo_p_max_net_mem: null,
  oo_p_max_net_sub: null,
  oo_p_max_oon_mem: null,
  oo_p_max_oon_sub: null,
  oo_p_max_sub: null,
  oo_p_out_to_in: null,
  oo_p_out_to_in_limit: null,
  oo_p_out_to_in_limit_max: null,
  payment_interval: null,
  payor_id: null,
  pend_ex_code: null,
  pend_flag: null,
  plan_document_url: null,
  plan_type: null,
  policy_forfeiture_grace_period: null,
  policy_forfeiture_grace_period_type: null,
  policy_status_default: null,
  pre_ex_ex_code: null,
  pre_ex_from: null,
  pre_ex_range: null,
  pre_ex_thru: null,
  qp_a_method: null,
  reduced_paid_up_default: null,
  remove_member_amount_edit: null,
  situs_state: null,
  sub_ded_credit: null,
  sub_ded_credit_oon: null,
  sub_ded_credit_ppo: null,
  subscriber_ded_oon: null,
  subscriber_ded_ppo: null,
  subscriber_deductible: null,
  survivor_benefit: null,
  update_date: null,
  update_user: null,
  use_cob_savings: null
)
```

