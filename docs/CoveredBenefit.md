# Vba::CoveredBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefit_code** | **String** |  | [optional] |
| **hipa_a_code** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **benefit_category** | **String** |  | [optional] |
| **use_plan_co_ins** | **Boolean** | Indicates that the Plan Benefit Co-Insurance amounts will abide by the Plan level amounts. | [optional] |
| **co_ins_max_sub** | **Float** | Total Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_mem** | **Float** | In Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_net_sub** | **Float** | Out of Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_net_mem** | **Float** | Total Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_oon_sub** | **Float** | In Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_oon_mem** | **Float** | Out of Network Co-Insurance amount for the Member. | [optional] |
| **use_plan_ded** | **Boolean** | Indicates that the Plan Benefit Deductible amounts will abide by the Plan level amounts. | [optional] |
| **ded_max_sub** | **Float** | Total deductible amount for the Family both In Network and Out of Network. | [optional] |
| **ded_max_mem** | **Float** | Total deductible amount for the Member both In Network and Out of Network. | [optional] |
| **ded_max_net_sub** | **Float** | Deductible amount for the Family In Network. | [optional] |
| **ded_max_net_mem** | **Float** | Deductible amount for the Member In Network. | [optional] |
| **ded_max_oon_sub** | **Float** | Deductible amount for the Family Out of Network. | [optional] |
| **ded_max_oon_mem** | **Float** | Deductible amount for the Member Out of Network. | [optional] |
| **use_plan_oop** | **Boolean** | Indicates that the Plan Benefit Out of Pocket amounts will abide by the Plan level amounts. | [optional] |
| **oo_p_max_sub** | **Float** | Total In-Network and Out of Network Out of Pocket maximum for the Family. | [optional] |
| **oo_p_max_mem** | **Float** | Total In-Network and Out of Network Out of Pocket maximum for the Member. | [optional] |
| **oo_p_max_net_sub** | **Float** | In-Network Out of Pocket maximum for the Family. | [optional] |
| **oo_p_max_net_mem** | **Float** | In-Network Out of Pocket maximum for the Member. | [optional] |
| **oo_p_max_oon_sub** | **Float** | Out of Network Out of Pocket for the Family. | [optional] |
| **oo_p_max_oon_mem** | **Float** | Out of Network Out of Pocket for the Member. | [optional] |
| **oo_p_calc_option** | **String** | Formula used to calculate Out of Pocket amounts. | [optional] |
| **covered** | **Boolean** | Identifies whether the Benefit Code is covered for this Plan. This can be populated from the &#39;Plan&#39; screen. | [optional] |
| **pc_p_only** | **Boolean** | Indicates that the selected Benefit applies to Primary Care Physician only. If a claim is processed against this Benefit Code without a PCP, the claim will apply the “PCP Only“ Ex Code defined on the VBA Control Panel. | [optional] |
| **covered_in_net_only** | **Boolean** | Checking this option indicates that the Benefit is covered only when services are rendered by an In-Network provider. If a claim is processed against this Benefit Code as Out of Network, the claim will apply the “Covered In-Network Only“ Ex Code defined on the VBA Control Panel. | [optional] |
| **deductible_before_co_pay** | **Boolean** | This flag determines if adjudication calculates the Deductible before the CoPay is calculated. | [optional] |
| **excluded** | **Boolean** | Identifies whether the Benefit Code is excluded for this Plan.  This allows the benefit to be on a claim preventing an error for no matching benefit and then applying a not covered ex code. | [optional] |
| **apply_ex_code** | **Boolean** | Indicates that an Ex Code should be applied to any service line with this Benefit Code. | [optional] |
| **ex_code** | **String** | If the Apply_Ex_Code flag is set, this field will contain the Ex Code to be applied. | [optional] |
| **plan_ben_levels** | [**Array&lt;PlanBenefitLevel&gt;**](PlanBenefitLevel.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CoveredBenefit.new(
  benefit_code: null,
  hipa_a_code: null,
  description: null,
  benefit_category: null,
  use_plan_co_ins: null,
  co_ins_max_sub: null,
  co_ins_max_mem: null,
  co_ins_max_net_sub: null,
  co_ins_max_net_mem: null,
  co_ins_max_oon_sub: null,
  co_ins_max_oon_mem: null,
  use_plan_ded: null,
  ded_max_sub: null,
  ded_max_mem: null,
  ded_max_net_sub: null,
  ded_max_net_mem: null,
  ded_max_oon_sub: null,
  ded_max_oon_mem: null,
  use_plan_oop: null,
  oo_p_max_sub: null,
  oo_p_max_mem: null,
  oo_p_max_net_sub: null,
  oo_p_max_net_mem: null,
  oo_p_max_oon_sub: null,
  oo_p_max_oon_mem: null,
  oo_p_calc_option: null,
  covered: null,
  pc_p_only: null,
  covered_in_net_only: null,
  deductible_before_co_pay: null,
  excluded: null,
  apply_ex_code: null,
  ex_code: null,
  plan_ben_levels: null
)
```

