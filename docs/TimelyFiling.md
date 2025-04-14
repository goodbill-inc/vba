# Vba::TimelyFiling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timely_filing_key** | **Integer** | Kev value identifying a specific timely filing record Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_type** | **String** | Specifies which claim type the timely filing conditions apply to | [optional] |
| **date_type** | **String** | Specifies which claim dates are used for timely filing | [optional] |
| **description** | **String** | Description of the timely filing conditions | [optional] |
| **division_id** | **String** | ID of the division that the timely filing conditions apply to | [optional] |
| **effective_date** | **Time** | Date the timely filing conditions become effective | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | Ex code that is applied when timely filing conditions are met | [optional] |
| **federal_id** | **String** | Federal ID of the provider that the timely filing conditions apply to | [optional] |
| **group_id** | **String** | ID of the group that the timely filing conditions apply to | [optional] |
| **inpatient** | **Boolean** | Flag specifying if the timely filing applies to inpatient claims Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **network_id** | **String** | ID of the network that the timely filing conditions apply to | [optional] |
| **plan_id** | **String** | ID of the plan that the timely filing conditions apply to | [optional] |
| **provider_id** | **String** | ID of the provider that the timely filing conditions apply to | [optional] |
| **schedule_custom** | **String** | Field specifying how the custom schedule type is defined | [optional] |
| **schedule_frequency** | **Integer** | Number of days, months or years specified by the frequency | [optional] |
| **schedule_type** | **String** | Type of the schedule frequency, specifically day, month, year or custom | [optional] |
| **term_date** | **Time** | Date the timely filing conditions terminate | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::TimelyFiling.new(
  timely_filing_key: null,
  claim_type: null,
  date_type: null,
  description: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  federal_id: null,
  group_id: null,
  inpatient: null,
  network_id: null,
  plan_id: null,
  provider_id: null,
  schedule_custom: null,
  schedule_frequency: null,
  schedule_type: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

