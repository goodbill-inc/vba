# Vba::VBAGatewaySubscriptionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_gateway_subscription_detail_key** | **Integer** | ID of the VBAGateway subscribtion detail. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **restriction_id** | **String** | ID of the restriction. | [optional] |
| **restriction_type** | **String** | Type associated with the restriction. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vba_gateway_subscription_key** | **Integer** | ID of the VBAGateway subscription. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::VBAGatewaySubscriptionDetail.new(
  vba_gateway_subscription_detail_key: null,
  entry_date: null,
  entry_user: null,
  restriction_id: null,
  restriction_type: null,
  update_date: null,
  update_user: null,
  vba_gateway_subscription_key: null
)
```

