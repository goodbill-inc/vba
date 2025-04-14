# Vba::PlanBenefitsPlaceCoPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefitsPlace.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefitsPlace.Benefit_Code value in parent table. |  |
| **place_code** | **String** | References the PlanBenefitsPlace.Place_Code value in parent table. |  |
| **copay_amt** | **Float** | Out of Network Co-Pay amount. | [optional] |
| **copay_amt_net** | **Float** | In Network Co-Pay amount. | [optional] |
| **copay_amt_net_oop** | **Boolean** | Indicates that the In Network Co-Pay will continue to be taken after the Out of Pocket has been met. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_amt_oop** | **Boolean** | Indicates that the Out of Network Co-Pay will continue to be taken after the Out of Pocket has been met. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_pct** | **String** | Indicates whether the Out of Network Co-Pay amount is a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_pct_net** | **String** | Indicates whether the In Network Co-Pay amount is a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **copay_per** | **String** | Indicates the frequency that Co-Pay is taken: 1. Day - per service date. 2. Occurrence - per occurrence date on the claim header. 3. Service - per service line. 4. Unit - per unit on the service line. 5. Visit - per day per Provider. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsPlaceCoPay.new(
  plan_id: null,
  benefit_code: null,
  place_code: null,
  copay_amt: null,
  copay_amt_net: null,
  copay_amt_net_oop: null,
  copay_amt_oop: null,
  copay_pct: null,
  copay_pct_net: null,
  copay_per: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null
)
```

