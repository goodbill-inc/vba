# Vba::AccumulatorAddedAccumDetailResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  | [optional] |
| **benefit_code** | **String** |  | [optional] |
| **oo_p_calc_option** | **String** |  | [optional] |
| **member_deductible** | **Float** |  | [optional] |
| **member_ded_ppo** | **Float** |  | [optional] |
| **member_ded_oon** | **Float** |  | [optional] |
| **mem_ded_credit** | **Float** |  | [optional] |
| **mem_ded_credit_ppo** | **Float** |  | [optional] |
| **mem_ded_credit_oon** | **Float** |  | [optional] |
| **deductible_used** | **Float** |  | [optional] |
| **ded_ppo_used** | **Float** |  | [optional] |
| **deductible_used_oon** | **Float** |  | [optional] |
| **ded_credit_used** | **Float** |  | [optional] |
| **ded_credit_ppo_used** | **Float** |  | [optional] |
| **ded_credit_oon_used** | **Float** |  | [optional] |
| **subscriber_deductible** | **Float** |  | [optional] |
| **subscriber_ded_ppo** | **Float** |  | [optional] |
| **subscriber_ded_oon** | **Float** |  | [optional] |
| **sub_ded_credit** | **Float** |  | [optional] |
| **sub_ded_credit_ppo** | **Float** |  | [optional] |
| **sub_ded_credit_oon** | **Float** |  | [optional] |
| **fam_deductible_used** | **Float** |  | [optional] |
| **fam_ded_ppo_used** | **Float** |  | [optional] |
| **fam_deductible_used_oon** | **Float** |  | [optional] |
| **fam_ded_credit_used** | **Float** |  | [optional] |
| **fam_ded_credit_ppo_used** | **Float** |  | [optional] |
| **fam_ded_credit_oon_used** | **Float** |  | [optional] |
| **co_ins_max_mem** | **Float** |  | [optional] |
| **co_ins_max_net_mem** | **Float** |  | [optional] |
| **co_ins_max_oon_mem** | **Float** |  | [optional] |
| **co_ins_amt** | **Float** |  | [optional] |
| **co_ins_amt_net** | **Float** |  | [optional] |
| **co_ins_amt_oon** | **Float** |  | [optional] |
| **co_ins_max_sub** | **Float** |  | [optional] |
| **co_ins_max_net_sub** | **Float** |  | [optional] |
| **co_ins_max_oon_sub** | **Float** |  | [optional] |
| **fam_co_ins_amt** | **Float** |  | [optional] |
| **fam_co_ins_amt_net** | **Float** |  | [optional] |
| **fam_co_ins_amt_oon** | **Float** |  | [optional] |
| **oo_p_max_mem** | **Float** |  | [optional] |
| **oo_p_max_net_mem** | **Float** |  | [optional] |
| **oo_p_max_oon_mem** | **Float** |  | [optional] |
| **out_of_pocket** | **Float** |  | [optional] |
| **out_of_pocket_net** | **Float** |  | [optional] |
| **out_of_pocket_oon** | **Float** |  | [optional] |
| **oo_p_max_sub** | **Float** |  | [optional] |
| **oo_p_max_net_sub** | **Float** |  | [optional] |
| **oo_p_max_oon_sub** | **Float** |  | [optional] |
| **fam_out_of_pocket** | **Float** |  | [optional] |
| **fam_out_of_pocket_net** | **Float** |  | [optional] |
| **fam_out_of_pocket_oon** | **Float** |  | [optional] |
| **plan_year_paid** | **Float** |  | [optional] |
| **plan_year_max** | **Float** |  | [optional] |
| **lifetime_paid** | **Integer** |  | [optional] |
| **lifetime_max** | **Integer** |  | [optional] |
| **fam_plan_year_paid** | **Float** |  | [optional] |
| **plan_year_max_sub** | **Float** |  | [optional] |
| **fam_lifetime_paid** | **Integer** |  | [optional] |
| **lifetime_max_sub** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AccumulatorAddedAccumDetailResult.new(
  plan_id: null,
  benefit_code: null,
  oo_p_calc_option: null,
  member_deductible: null,
  member_ded_ppo: null,
  member_ded_oon: null,
  mem_ded_credit: null,
  mem_ded_credit_ppo: null,
  mem_ded_credit_oon: null,
  deductible_used: null,
  ded_ppo_used: null,
  deductible_used_oon: null,
  ded_credit_used: null,
  ded_credit_ppo_used: null,
  ded_credit_oon_used: null,
  subscriber_deductible: null,
  subscriber_ded_ppo: null,
  subscriber_ded_oon: null,
  sub_ded_credit: null,
  sub_ded_credit_ppo: null,
  sub_ded_credit_oon: null,
  fam_deductible_used: null,
  fam_ded_ppo_used: null,
  fam_deductible_used_oon: null,
  fam_ded_credit_used: null,
  fam_ded_credit_ppo_used: null,
  fam_ded_credit_oon_used: null,
  co_ins_max_mem: null,
  co_ins_max_net_mem: null,
  co_ins_max_oon_mem: null,
  co_ins_amt: null,
  co_ins_amt_net: null,
  co_ins_amt_oon: null,
  co_ins_max_sub: null,
  co_ins_max_net_sub: null,
  co_ins_max_oon_sub: null,
  fam_co_ins_amt: null,
  fam_co_ins_amt_net: null,
  fam_co_ins_amt_oon: null,
  oo_p_max_mem: null,
  oo_p_max_net_mem: null,
  oo_p_max_oon_mem: null,
  out_of_pocket: null,
  out_of_pocket_net: null,
  out_of_pocket_oon: null,
  oo_p_max_sub: null,
  oo_p_max_net_sub: null,
  oo_p_max_oon_sub: null,
  fam_out_of_pocket: null,
  fam_out_of_pocket_net: null,
  fam_out_of_pocket_oon: null,
  plan_year_paid: null,
  plan_year_max: null,
  lifetime_paid: null,
  lifetime_max: null,
  fam_plan_year_paid: null,
  plan_year_max_sub: null,
  fam_lifetime_paid: null,
  lifetime_max_sub: null
)
```

