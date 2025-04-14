# Vba::PlanBenefits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | Unique identifier assigned to the Plan. |  |
| **benefit_code** | **String** | Unique identifier assigned to the Benefit. |  |
| **accident_only** | **String** | Checking this option indicates that the benefit is covered only when services are rendered as the result of an accident. On the Claim Entry screen, there are options to that specify that a claim is the result of an accident. If a claim is processed against this Benefit Code without one of the accident options picked on the claim, the claim will automatically &#39;Deny&#39; or &#39;Pend&#39; based on the Ex Code defined on the VBA Control Panel. | [optional] |
| **always_pay_in_network** | **Boolean** | When checked, if the PlanBenefit_Override_Network_ID is filled out on companydata and the claim is currently out of network, change the Network ID to the PlanBenefit Override Network ID  value. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **annual_max** | **Float** | Total annual amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **annual_max_member** | **Float** | Total annual amount that the Member pays both In Network and Out of Network. | [optional] |
| **annual_max_net** | **Float** | Annual amount that the Plan will pay In Network. | [optional] |
| **annual_max_net_member** | **Float** | Annual amount that the Member pays In Network. | [optional] |
| **annual_max_oon** | **Float** | Annual amount that the Plan will pay Out of Network. | [optional] |
| **annual_max_oon_member** | **Float** | Annual amount that the Member pays Out of Network. | [optional] |
| **co_ins_in_to_out** | **Boolean** | Applies the In-Network Co-Insurance amount toward the satisfaction of the Out-of-Network Co-Insurance maximum. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_max_mem** | **Float** | In Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_net_mem** | **Float** | Total Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_net_sub** | **Float** | Out of Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_oon_mem** | **Float** | Out of Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_oon_sub** | **Float** | In Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_sub** | **Float** | Maximum CoInsurance amount for the Family per plan year. | [optional] |
| **co_ins_out_to_in** | **Boolean** | Applies the Out-of-Network Co-Insurance amount toward the satisfaction of the In-Network Co-Insurance maximum. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of co-insurance that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins_out_to_in_limit_max** | **Float** | The max with which the co-insurance is limited by when CoIns_Out To In Limit is selected. | [optional] |
| **coverage_24_hour** | **Boolean** | This option is informational only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **covered** | **String** | Identifies whether the Benefit Code is covered for this Plan. This can be populated from the &#39;Plan&#39; screen. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **covered_in_net_only** | **String** | Checking this option indicates that the Benefit is covered only when services are rendered by an In-Network provider. If a claim is processed against this Benefit Code as Out of Network, the claim will apply the “Covered In-Network Only“ Ex Code defined on the VBA Control Panel. | [optional] |
| **ded_in_to_out** | **Boolean** | Applies the In-Network deductible amount toward the satisfaction of the Out-of-Network deductible. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in** | **Boolean** | Applies the Out-of-Network deductible amount toward the satisfaction of the In-Network deductible. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of deductible that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ded_out_to_in_limit_max** | **Float** | The max with which the deducible is limited by when Ded_Out To In Limit is selected. | [optional] |
| **deductible_before_co_pay** | **Boolean** | This flag determines if adjudication calculates the Deductible before the CoPay is calculated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the Benefit becomes effective on this plan. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **excluded** | **String** | Identifies whether the Benefit Code is excluded for this Plan. This can be populated from the &#39;Plan&#39; screen. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **hospital_1st_day** | **Boolean** | This option is informational only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **include_amt_in_plan** | **String** | Indicates that the Plan Benefit amount is included in the Plan level Maximum calculations. If this option is not specified, the Benefit is treated as a carve-out and will calculate to its own total. | [optional] |
| **include_co_ins_in_plan** | **String** | Indicates that the Plan Benefit amount is included in the Plan level Co-Insurance calculations. If this option is not specified, the Benefit is treated as a carve-out and will calculate to its own total. | [optional] |
| **include_ded_in_plan** | **String** | Indicates that the Plan Benefit amount is included in the Plan level Deductible calculations. If this option is not specified, the Benefit is treated as a carve-out and will calculate to its own total. | [optional] |
| **include_oop_in_plan** | **String** | Indicates that the Plan Benefit amount is included in the Plan level Out of Pocket calculations. If this option is not specified, the Benefit is treated as a carve-out and will calculate to its own total. | [optional] |
| **lt_c_applies_to_elimination_period** | **Boolean** | Indicates if this benefits applies to the Elimination Period for claims processed under this plan.  This value would only apply if the Plan itself is configured with an Elimination Period.  This indicator will be ON by default so that the user has to specifically exclude. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_applies_to_wp** | **Boolean** | Indicates if this benefit applies to the waiting period. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_apply_inflation** | **Boolean** | Indicates it Inflation calculation should be applied Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_base_benefit** | **Boolean** | Not sure about this, but I think what I want is to have one benefit defined on any plan that has a LTC Plan_Type.  You can only have one and must have one.  This is like the STD or LTD benefit on disability.  Its the benefit we use to do all the base benefit payment stuff. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_daily_benefit** | **Float** | This is the daily benefit amount | [optional] |
| **lt_c_daily_benefit_range_from** | **Float** | The start of the selection range for members taking this plan and choosing their daily benefit. | [optional] |
| **lt_c_daily_benefit_range_increment** | **Float** | The increment of each option in the range between the from and thru.  If empty, the member can manually select a value between the from / thru range. | [optional] |
| **lt_c_daily_benefit_range_thru** | **Float** | The end of the selection range for members taking this plan and choosing their daily benefit. | [optional] |
| **lt_c_daily_benefit_type** | **String** | This is the type of daily benefit defined for this plan.  The values are:  A - a flat daily benefit enforced by the plan.  B - member selected value utilizing the daily benefit range/increment settings. | [optional] |
| **lt_c_inflation_benefit** | **Boolean** | identify that this is an inflation benefit.  Would still use Covered/Rider to determine if the inflation offering is optional or not. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_inflation_compound** | **Boolean** | Indicates if the inflation interest is simple (0) or compunded (1). Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_inflation_frequency** | **Integer** | this is the value for the Inflation_Frequency_Type (i.e. 1 Year, 30 Days, 6 Months, etc.) | [optional] |
| **lt_c_inflation_frequency_start** | **String** | indicates when the Inflation_Frequency is calculated from:  GROUP - Group Anniversary Enroll  DIV - Division Anniversary Enroll  MEMBER - Member Anniversary Enroll  PLAN - Initial Plan Enroll | [optional] |
| **lt_c_inflation_frequency_type** | **String** | Indicates the frequency of inflation increases.  The values are:  D - Days  M - Months  Y - Years | [optional] |
| **lt_c_inflation_limit** | **Float** | This value is based on Inflation_Limit_Type.  For A, this is the flat cap on inflation.  For B, this is the multiple of Limit defined as a cap (i.e. 2 for 2x limit or 2.5 for 2.5x limit) | [optional] |
| **lt_c_inflation_limit_type** | **String** | the type of limit cap.  This filed only shows if Inflation_Type &#x3D; B.  The 2 options are:  A - Flat Cap  B - Multipl of Limit | [optional] |
| **lt_c_inflation_pct** | **Float** | This is the inflation value (i.e. 5% or 6%) | [optional] |
| **lt_c_inflation_type** | **String** | drop down list of inflation types that change options that can be filled in.  The choices would be:  A - Simple Inflation  B - Inflation With Cap  C - Inflation No Cap | [optional] |
| **lt_c_lifetime_max_days_from** | **Integer** | The selectable range of days the member can pick for calculations based on days. | [optional] |
| **lt_c_lifetime_max_days_thru** | **Integer** | The selectable range of days the member can pick for calculations based on days. | [optional] |
| **lt_c_lifetime_max_from** | **Float** | The low end range for member lifetime max selection. | [optional] |
| **lt_c_lifetime_max_increment** | **Float** | the increment of options the user can select within the max range.  Empty value here means it is a free from entry of max between the range. | [optional] |
| **lt_c_lifetime_max_thru** | **Float** | the high end range for member lifetime max selection. | [optional] |
| **lt_c_lifetime_max_type** | **String** | Lifetime Max calculation type and will dicatate the max rules applied.  Valid values are:  STANDARD - DBM x 365 days x Lifetime Max Years selected  LMDAYS - DBM x Lifetime Max Days selected  FLAT - Lifetime Max Amount selected and not based on calculation  LMMONTHS - MBA x 12 Months x Lifetime Max Years selected | [optional] |
| **lt_c_lifetime_max_years_from** | **Integer** | the selectable range of years the member can pick for calculations based on years. | [optional] |
| **lt_c_lifetime_max_years_thru** | **Integer** | the selectable range of years the member can pick for calculations based on years. | [optional] |
| **lt_c_monthly_benefit** | **Float** | This is the monthly benefit amount | [optional] |
| **lt_c_monthly_benefit_range_from** | **Float** | The start of the selection range for members taking this plan and choosing their monthly benefit. | [optional] |
| **lt_c_monthly_benefit_range_increment** | **Float** | The increment of each option in the range between the from and thru.  If empty, the member can manually select a value between the from / thru range. | [optional] |
| **lt_c_monthly_benefit_range_thru** | **Float** | The end of the selection range for members taking this plan and choosing their monthly benefit. | [optional] |
| **lt_c_monthly_benefit_type** | **String** | This is the type of monthly benefit defined for this plan.  The values are:  A - a flat monthly benefit enforced by the plan.  B - member selected value utilizing the monthly benefit range/increment settings. | [optional] |
| **lt_c_pct_of_benefit** | **Float** | the pct the be calculated against the pct_of_benefit_code. | [optional] |
| **lt_c_pct_of_benefit_code** | **String** | This is the benefit code that this benefit will be a Pct of. | [optional] |
| **lt_c_shared_benefit** | **Boolean** | Indicates if this Benefit Code is shared across multiple members of the family AND can be used in Lifetime Max calculations to determine if the same benefit across multiple plans (same plan type) could apply together. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_use_benefit_dba** | **Boolean** | Indicates if we should use this benefit DBA configuration rather than the Plan DBA. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_use_benefit_lifetime_max** | **Boolean** | This indicates if the PlanBenefit level LBM logic should be used rather thant he parent Plan LBM settings. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_use_benefit_mba** | **Boolean** | Indicates if we should use this benefit MBA configuration rather than the Plan MBA. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lt_c_use_benefit_type** | **String** | This is an indicator for whether this PlanBenefit will utilize the Daily Benefit Amount or the Monthly Benefit Amount. | [optional] |
| **lt_c_use_pct_of_benefit** | **Boolean** | identifies that this benefit amount is calculated as a percent of another benefit Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **lifetime_max** | **Float** | Total lifetime amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **lifetime_max_member** | **Float** | Total lifetime amount that the Member pays both In Network and Out of Network. | [optional] |
| **lifetime_max_net** | **Float** | Lifetime amount that the Plan will pay In Network. | [optional] |
| **lifetime_max_net_member** | **Float** | Lifetime amount that the Member pays In Network. | [optional] |
| **lifetime_max_oon** | **Float** | Lifetime amount that the Plan will pay Out of Network. | [optional] |
| **lifetime_max_oon_member** | **Float** | Lifetime amount that the Member pays Out of Network. | [optional] |
| **maternity** | **Boolean** | This option is informational only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **member_ded_oon** | **Float** | Deductible amount for the Member Out of Network. | [optional] |
| **member_ded_ppo** | **Float** | Deductible amount for the Member In Network. | [optional] |
| **member_deductible** | **Float** | Total deductible amount for the Member both In Network and Out of Network. | [optional] |
| **oo_p_calc_option** | **String** | Formula used to calculate the Out-of-Pocket amounts. | [optional] |
| **oo_p_in_to_out** | **Boolean** | Applies the In-Network Out-of-Pocket amount toward the satisfaction of the Out-of-Network Out-of-Pocket maximum. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_max_mem** | **Float** | Total Out-of-Pocket amount for the Member. | [optional] |
| **oo_p_max_net_mem** | **Float** | Total Out-of-Pocket amount for the Member In Network. | [optional] |
| **oo_p_max_net_sub** | **Float** | Total Out-of-Pocket amount for the Family In Network. | [optional] |
| **oo_p_max_oon_mem** | **Float** | Out-of-Pocket amount for the Member Out of Network. | [optional] |
| **oo_p_max_oon_sub** | **Float** | Out-of-Pocket amount for the Family Out of Network. | [optional] |
| **oo_p_max_sub** | **Float** | Total Out-of-Pocket amount for the Family. | [optional] |
| **oo_p_out_to_in** | **Boolean** | Applies the Out-of-Network Out-of-Pocket amount toward the satisfaction of the In-Network Out-of-Pocket maximum. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_out_to_in_limit** | **Boolean** | When active, this will let the system know to limit the amount of out of pocket that applies to IN from OON by the Max. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oo_p_out_to_in_limit_max** | **Float** | The max with which the out of pocket is limited by when OOP_Out To In Limit is selected. | [optional] |
| **occupational** | **Boolean** | This option is informational only. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pc_p_only** | **Boolean** | Indicates that the selected Benefit applies to Primary Care Physician only. If a claim is processed against this Benefit Code without a PCP, the claim will apply the “PCP Only“ Ex Code defined on the VBA Control Panel. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **parent_benefit** | **Boolean** | Identifies if this Benefit is a parent benefit for purposes of cascading benefits. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pend_ex_code** | **String** | Assigns an Ex Code that can be applied to adjudicated Subscriber claims. | [optional] |
| **pend_flag** | **String** | While active, the assigned Ex Code will be applied to any adjudicated Subscriber claims. | [optional] |
| **rider** | **String** | Identifies whether the Benefit Code is a rider for this Plan. This can be populated from the &#39;Plan&#39; screen. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **subscriber_ded_oon** | **Float** | Deductible amount for the Family Out of Network. | [optional] |
| **subscriber_ded_ppo** | **Float** | Deductible amount for the Family In Network. | [optional] |
| **subscriber_deductible** | **Float** | Total deductible amount for the Family both In Network and Out of Network. | [optional] |
| **term_date** | **Time** | Date when the Benefit expires for this plan. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **use_plan_co_ins** | **String** | Indicates that the Plan Benefit Co-Insurance amounts will abide by the Plan level amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_plan_ded** | **String** | Indicates that the Plan Benefit Deductible amounts will abide by the Plan level amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_plan_max** | **String** | Indicates that the Plan Benefit Maximums will abide by the Plan level amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **use_plan_oop** | **String** | Indicates that the Plan Benefit Out of Pocket amounts will abide by the Plan level amounts. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefits.new(
  plan_id: null,
  benefit_code: null,
  accident_only: null,
  always_pay_in_network: null,
  annual_max: null,
  annual_max_member: null,
  annual_max_net: null,
  annual_max_net_member: null,
  annual_max_oon: null,
  annual_max_oon_member: null,
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
  coverage_24_hour: null,
  covered: null,
  covered_in_net_only: null,
  ded_in_to_out: null,
  ded_out_to_in: null,
  ded_out_to_in_limit: null,
  ded_out_to_in_limit_max: null,
  deductible_before_co_pay: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  excluded: null,
  hospital_1st_day: null,
  include_amt_in_plan: null,
  include_co_ins_in_plan: null,
  include_ded_in_plan: null,
  include_oop_in_plan: null,
  lt_c_applies_to_elimination_period: null,
  lt_c_applies_to_wp: null,
  lt_c_apply_inflation: null,
  lt_c_base_benefit: null,
  lt_c_daily_benefit: null,
  lt_c_daily_benefit_range_from: null,
  lt_c_daily_benefit_range_increment: null,
  lt_c_daily_benefit_range_thru: null,
  lt_c_daily_benefit_type: null,
  lt_c_inflation_benefit: null,
  lt_c_inflation_compound: null,
  lt_c_inflation_frequency: null,
  lt_c_inflation_frequency_start: null,
  lt_c_inflation_frequency_type: null,
  lt_c_inflation_limit: null,
  lt_c_inflation_limit_type: null,
  lt_c_inflation_pct: null,
  lt_c_inflation_type: null,
  lt_c_lifetime_max_days_from: null,
  lt_c_lifetime_max_days_thru: null,
  lt_c_lifetime_max_from: null,
  lt_c_lifetime_max_increment: null,
  lt_c_lifetime_max_thru: null,
  lt_c_lifetime_max_type: null,
  lt_c_lifetime_max_years_from: null,
  lt_c_lifetime_max_years_thru: null,
  lt_c_monthly_benefit: null,
  lt_c_monthly_benefit_range_from: null,
  lt_c_monthly_benefit_range_increment: null,
  lt_c_monthly_benefit_range_thru: null,
  lt_c_monthly_benefit_type: null,
  lt_c_pct_of_benefit: null,
  lt_c_pct_of_benefit_code: null,
  lt_c_shared_benefit: null,
  lt_c_use_benefit_dba: null,
  lt_c_use_benefit_lifetime_max: null,
  lt_c_use_benefit_mba: null,
  lt_c_use_benefit_type: null,
  lt_c_use_pct_of_benefit: null,
  lifetime_max: null,
  lifetime_max_member: null,
  lifetime_max_net: null,
  lifetime_max_net_member: null,
  lifetime_max_oon: null,
  lifetime_max_oon_member: null,
  maternity: null,
  member_ded_oon: null,
  member_ded_ppo: null,
  member_deductible: null,
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
  occupational: null,
  pc_p_only: null,
  parent_benefit: null,
  pend_ex_code: null,
  pend_flag: null,
  rider: null,
  subscriber_ded_oon: null,
  subscriber_ded_ppo: null,
  subscriber_deductible: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_plan_co_ins: null,
  use_plan_ded: null,
  use_plan_max: null,
  use_plan_oop: null
)
```

