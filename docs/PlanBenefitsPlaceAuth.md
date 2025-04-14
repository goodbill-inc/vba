# Vba::PlanBenefitsPlaceAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | References the PlanBenefitsPlace.Plan_ID value in parent table. |  |
| **benefit_code** | **String** | References the PlanBenefitsPlace.Benefit_Code value in parent table. |  |
| **place_code** | **String** | References the PlanBenefitsPlace.Place_Code value in parent table. |  |
| **amount_before_auth** | **Float** | Specifies the amount of the associated amount type that is allowed before requiring an authorization. | [optional] |
| **amount_type** | **String** | Specifies the amount type (Billed, Allowed, or Payable) that the &#39;Amount Before Auth&#39; rule will be tied to. | [optional] |
| **auth_reqd** | **String** | Indicates whether an authorization is required for the selected place code. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **visits_before_auth** | **Integer** | Specifies the number of visits allowed before an authorization is required. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitsPlaceAuth.new(
  plan_id: null,
  benefit_code: null,
  place_code: null,
  amount_before_auth: null,
  amount_type: null,
  auth_reqd: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  visits_before_auth: null
)
```

