# Vba::VBABenefitInquiry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber** | [**SubscriberDetail**](SubscriberDetail.md) |  | [optional] |
| **member** | [**MemberDetail**](MemberDetail.md) |  | [optional] |
| **elig_details** | [**Array&lt;EligDetail&gt;**](EligDetail.md) |  | [optional] |
| **member_insurances** | [**Array&lt;MemberInsurance&gt;**](MemberInsurance.md) |  | [optional] |
| **member_providers** | [**Array&lt;MemberProvider&gt;**](MemberProvider.md) |  | [optional] |
| **member_eligibility_statuses** | [**Array&lt;MemberEligibilityStatus&gt;**](MemberEligibilityStatus.md) |  | [optional] |
| **code_values** | [**Array&lt;IDCodeValueResultBySource&gt;**](IDCodeValueResultBySource.md) |  | [optional] |
| **plans** | [**Plans**](Plans.md) |  | [optional] |
| **covered_benefits** | [**Array&lt;CoveredBenefit&gt;**](CoveredBenefit.md) |  | [optional] |
| **plan_ben_auths** | [**Array&lt;PlanBenefitsPlaceAuth&gt;**](PlanBenefitsPlaceAuth.md) |  | [optional] |
| **plan_ben_co_pays** | [**Array&lt;PlanBenefitsPlaceCoPay&gt;**](PlanBenefitsPlaceCoPay.md) |  | [optional] |
| **plan_ben_co_insurances** | [**Array&lt;PlanBenefitsPlaceCoIns&gt;**](PlanBenefitsPlaceCoIns.md) |  | [optional] |
| **accumulator_detail** | [**Array&lt;AccumulatorDetailResult&gt;**](AccumulatorDetailResult.md) |  | [optional] |
| **plan_max_summary_results** | [**Array&lt;GetPlanMaxSummaryResult&gt;**](GetPlanMaxSummaryResult.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBABenefitInquiry.new(
  subscriber: null,
  member: null,
  elig_details: null,
  member_insurances: null,
  member_providers: null,
  member_eligibility_statuses: null,
  code_values: null,
  plans: null,
  covered_benefits: null,
  plan_ben_auths: null,
  plan_ben_co_pays: null,
  plan_ben_co_insurances: null,
  accumulator_detail: null,
  plan_max_summary_results: null
)
```

