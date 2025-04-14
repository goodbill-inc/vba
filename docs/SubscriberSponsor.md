# Vba::SubscriberSponsor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_sponsor_key** | **Integer** | Unique identifier for the Subscriber Sponsor entry. This is the primary key of the table. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Beginning date for this sponsor record to apply. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **sponsor_id** | **String** | Identifier for the sponsor of this subscriber, matches Subscribers.Subscriber_ID. |  |
| **sponsor_relate_code** | **String** | Relation of the sponsor to the subscriber, matches Relationships.Relate_Code. | [optional] |
| **subscriber_id** | **String** | Unique ID assigned to the Subscriber |  |
| **term_date** | **Time** | Ending date for this sponsor record to apply. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberSponsor.new(
  subscriber_sponsor_key: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  sponsor_id: null,
  sponsor_relate_code: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

