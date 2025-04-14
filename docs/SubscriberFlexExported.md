# Vba::SubscriberFlexExported

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_flex_exported_key** | **Integer** | Unique identifier for each exported record being tracked as part of Flex integrations. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **calendar_year** | **String** | References SubscriberFlex.Calendar_Year value on the parent record. |  |
| **effective_date** | **Time** | Date when the associated flex account becomes/became active. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **export_amount** | **Float** | The flex transaction amount sent for the associated integration. | [optional] |
| **export_date** | **Time** | Indicates the date that this record was exported for the identified type. | [optional] |
| **export_status** | **String** | Custom value assigned by developer for the associated integration. | [optional] |
| **export_type** | **String** | Custom value assigned by developer for the associated integration. | [optional] |
| **group_id** | **String** | References SubscriberFlex.Group_ID value on the parent record. |  |
| **plan_id** | **String** | References SubscriberFlex.Plan_ID value on the parent record. |  |
| **subscriber_id** | **String** | References SubscriberFlex.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberFlexExported.new(
  subscriber_flex_exported_key: null,
  calendar_year: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  export_amount: null,
  export_date: null,
  export_status: null,
  export_type: null,
  group_id: null,
  plan_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

