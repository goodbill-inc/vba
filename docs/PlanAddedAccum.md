# Vba::PlanAddedAccum

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the Plans.Plan_ID for this Added Accumulator. |  |
| **accum_name** | **String** | Unique identifier for this Added Accumulator. This value must also be unique of any Benefit_Code value in BenefitCodes.Benefit_Code. |  |
| **annual_max** | **Float** | Total annual amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **annual_max_member** | **Float** | Total annual amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **annual_max_net** | **Float** | Annual amount that the Plan will pay In Network. | [optional] |
| **annual_max_net_member** | **Float** | Annual amount that the Plan will pay In Network. | [optional] |
| **annual_max_oon** | **Float** | Annual amount that the Plan will pay Out of Network. | [optional] |
| **annual_max_oon_member** | **Float** | Annual amount that the Plan will pay Out of Network. | [optional] |
| **co_ins_max_mem** | **Float** | Total Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_net_mem** | **Float** | In Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_net_sub** | **Float** | In Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_oon_mem** | **Float** | Out of Network Co-Insurance amount for the Member. | [optional] |
| **co_ins_max_oon_sub** | **Float** | Out of Network Co-Insurance amount for the Family. | [optional] |
| **co_ins_max_sub** | **Float** | Total Co-Insurance amount for the Family. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **lifetime_max** | **Float** | Total lifetime amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **lifetime_max_member** | **Float** | Total lifetime amount that the Plan will pay both In Network and Out of Network. | [optional] |
| **lifetime_max_net** | **Float** | Lifetime amount that the Plan will pay In Network. | [optional] |
| **lifetime_max_net_member** | **Float** | Lifetime amount that the Plan will pay In Network. | [optional] |
| **lifetime_max_oon** | **Float** | Lifetime amount that the Plan will pay Out of Network. | [optional] |
| **lifetime_max_oon_member** | **Float** | Lifetime amount that the Plan will pay Out of Network. | [optional] |
| **member_ded_oon** | **Float** | Out of Network deductible amount for the Member. | [optional] |
| **member_ded_ppo** | **Float** | In Network deductible amount for the Member. | [optional] |
| **member_deductible** | **Float** | Total deductible amount for the Member. | [optional] |
| **oo_p_max_mem** | **Float** | Total Out of Pocket amount for the Member. | [optional] |
| **oo_p_max_net_mem** | **Float** | In Network Out of Pocket amount for the Member. | [optional] |
| **oo_p_max_net_sub** | **Float** | In Network Out of Pocket amount for the Family. | [optional] |
| **oo_p_max_oon_mem** | **Float** | Out of Network Out of Pocket amount for the Member. | [optional] |
| **oo_p_max_oon_sub** | **Float** | Out of Network Out of Pocket amount for the Family. | [optional] |
| **oo_p_max_sub** | **Float** | Total Out of Pocket amount for the Family. | [optional] |
| **subscriber_ded_oon** | **Float** | Out of Network deductible amount for the Family. | [optional] |
| **subscriber_ded_ppo** | **Float** | In Network deductible amount for the Family. | [optional] |
| **subscriber_deductible** | **Float** | Total deductible amount for the Family. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanAddedAccum.new(
  plan_id: null,
  accum_name: null,
  annual_max: null,
  annual_max_member: null,
  annual_max_net: null,
  annual_max_net_member: null,
  annual_max_oon: null,
  annual_max_oon_member: null,
  co_ins_max_mem: null,
  co_ins_max_net_mem: null,
  co_ins_max_net_sub: null,
  co_ins_max_oon_mem: null,
  co_ins_max_oon_sub: null,
  co_ins_max_sub: null,
  entry_date: null,
  entry_user: null,
  lifetime_max: null,
  lifetime_max_member: null,
  lifetime_max_net: null,
  lifetime_max_net_member: null,
  lifetime_max_oon: null,
  lifetime_max_oon_member: null,
  member_ded_oon: null,
  member_ded_ppo: null,
  member_deductible: null,
  oo_p_max_mem: null,
  oo_p_max_net_mem: null,
  oo_p_max_net_sub: null,
  oo_p_max_oon_mem: null,
  oo_p_max_oon_sub: null,
  oo_p_max_sub: null,
  subscriber_ded_oon: null,
  subscriber_ded_ppo: null,
  subscriber_deductible: null,
  update_date: null,
  update_user: null
)
```

