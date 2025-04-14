# Vba::EnrollmentReenroll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user for which this request is executed on behalf of. |  |
| **subscriber_id** | **String** |  | [optional] |
| **member_seq** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **division_id** | **String** |  | [optional] |
| **reenroll_family** | **Integer** |  | [optional] |
| **subscriber** | **Boolean** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **reenroll_cobra** | **Boolean** |  | [optional] |
| **reset_auth** | **Boolean** |  | [optional] |
| **disenroll_date** | **Time** |  | [optional] |
| **cobra_division** | **String** |  | [optional] |
| **cobra_cov_start** | **Time** |  | [optional] |
| **cobra_start** | **Time** |  | [optional] |
| **cobra_end** | **Time** |  | [optional] |
| **cobra_reason** | **Integer** |  | [optional] |
| **generate_invoice** | **Boolean** |  | [optional] |
| **invoice_date** | **Time** |  | [optional] |
| **group_reenroll** | **Boolean** |  | [optional] |
| **reset_group_disenroll** | **Boolean** |  | [optional] |
| **reenroll_all** | **Boolean** |  | [optional] |
| **cobra_plan_criterias** | [**Array&lt;COBRAPlanCriteria&gt;**](COBRAPlanCriteria.md) |  | [optional] |
| **member_seq_criterias** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentReenroll.new(
  user_id: null,
  subscriber_id: null,
  member_seq: null,
  group_id: null,
  division_id: null,
  reenroll_family: null,
  subscriber: null,
  start_date: null,
  reenroll_cobra: null,
  reset_auth: null,
  disenroll_date: null,
  cobra_division: null,
  cobra_cov_start: null,
  cobra_start: null,
  cobra_end: null,
  cobra_reason: null,
  generate_invoice: null,
  invoice_date: null,
  group_reenroll: null,
  reset_group_disenroll: null,
  reenroll_all: null,
  cobra_plan_criterias: null,
  member_seq_criterias: null
)
```

