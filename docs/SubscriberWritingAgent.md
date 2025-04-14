# Vba::SubscriberWritingAgent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_writing_agent_key** | **Integer** | Unique identifier for the Subscriber Writing Agent entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date account is effective for the Rep Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **plan_id** | **String** | ID of the plan that the commission is associated with. |  |
| **split** | **Float** | The percentage the Rep receives for this Commission. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **subscriber_id** | **String** | Unique identifier assigned to the Subscriber by the system. |  |
| **term_date** | **Time** | Date account is no longer effective for the Rep Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **writing_commission_agency_rep_key** | **Integer** | Unique identifier for the CommissionAgencyRep table Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **primary_agent** | **Boolean** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberWritingAgent.new(
  subscriber_writing_agent_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  plan_id: null,
  split: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  writing_commission_agency_rep_key: null,
  primary_agent: null
)
```

