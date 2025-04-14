# Vba::EnrollmentPolicyForfeiture

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  | [optional] |
| **benefit_code** | **String** |  | [optional] |
| **subscriber_id** | **String** |  | [optional] |
| **policy_number** | **String** |  | [optional] |
| **cash_value** | **Float** |  | [optional] |
| **rpu** | **Float** |  | [optional] |
| **current_policy_status** | **String** |  | [optional] |
| **current_forfeiture_status** | **String** |  | [optional] |
| **current_status_end** | **Time** |  | [optional] |
| **suggested_policy_status** | **String** |  | [optional] |
| **suggested_policy_status_date** | **Time** |  | [optional] |
| **maturity_date** | **Time** |  | [optional] |
| **policy_duration** | **Integer** |  | [optional] |
| **subscriber_age** | **Integer** |  | [optional] |
| **invoice_key** | **Integer** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentPolicyForfeiture.new(
  plan_id: null,
  benefit_code: null,
  subscriber_id: null,
  policy_number: null,
  cash_value: null,
  rpu: null,
  current_policy_status: null,
  current_forfeiture_status: null,
  current_status_end: null,
  suggested_policy_status: null,
  suggested_policy_status_date: null,
  maturity_date: null,
  policy_duration: null,
  subscriber_age: null,
  invoice_key: null
)
```

