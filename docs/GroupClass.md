# Vba::GroupClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_division_class_key** | **Integer** | Unique identifier for each Claim record within this Group/Division. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cobra** | **Boolean** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calc_cov_by** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **class_code** | **String** | The Class indicator assigned to this class record within the Group/Division setup. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. | [optional] |
| **effective_date** | **Time** | Effective (Start) date of this Class on this Group/Division. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **max_amount** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **max_guaranteed_issue** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **max_volume** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **min_amount** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **min_volume** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **multiplier_option** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **pay_freq** | **Integer** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **pay_freq_start** | **Time** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **pay_freq_type** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **plan_id** | **String** | If this class definition is Plan specific then add a reference here to Plans.Plan_ID. | [optional] |
| **smart_flex** | **Boolean** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **start_date_rule** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **term_date** | **Time** | Term (End) date of this Class on this Group/Division. | [optional] |
| **term_rule** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **volume_increment** | **Float** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **waiting_period** | **Integer** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |
| **waiting_period_type** | **String** | Informational used in custom reporting for Life &amp; Disability clients who have an additional \&quot;Class\&quot; structure under Division. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupClass.new(
  group_division_class_key: null,
  cobra: null,
  calc_cov_by: null,
  class_code: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  max_amount: null,
  max_guaranteed_issue: null,
  max_volume: null,
  min_amount: null,
  min_volume: null,
  multiplier_option: null,
  pay_freq: null,
  pay_freq_start: null,
  pay_freq_type: null,
  plan_id: null,
  smart_flex: null,
  start_date_rule: null,
  term_date: null,
  term_rule: null,
  update_date: null,
  update_user: null,
  volume_increment: null,
  waiting_period: null,
  waiting_period_type: null
)
```

