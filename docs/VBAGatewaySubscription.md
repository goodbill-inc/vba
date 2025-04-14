# Vba::VBAGatewaySubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_gateway_subscription_key** | **Integer** | ID of the VBAGateway subscription. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_process** | **Boolean** | Indicates that the requests associated with this subscription will be automatically processed. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **auto_process_custom_class** | **String** | Custom class associated with the auto-process request | [optional] |
| **auto_process_response_message** | **String** | Free text area where the message that will be sent as a response to auto-processed requests. | [optional] |
| **auto_process_status** | **String** | Indicates the status that will be assigned to auto-processed requests. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **id_card_request_type** | **String** | Request type used when the process involves ID Card requests | [optional] |
| **notify_me** | **Boolean** | Flag indicating the user would like to be notified regarding the request Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **request_from** | **Time** | Indicates the beginning date for the date range of requests that will be associated with subscription. | [optional] |
| **request_source** | **String** | Indicates which terminal the subscription&#39;s requests will generate from. | [optional] |
| **request_status** | **String** | Indicates which request status will be associated with the subscription. | [optional] |
| **request_thru** | **Time** | Indicates the ending date for the date range of requests that will be associated with subscription. | [optional] |
| **request_type** | **String** | Indicates which type of request will be associated with the subscription. | [optional] |
| **subscription_description** | **String** | Description of the VBAGateway subscription. | [optional] |
| **subscription_type** | **String** | Indicates the type of the VBAGateway subscription. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **user_id** | **String** | ID of the User associated with the VBAGateway subscription. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAGatewaySubscription.new(
  vba_gateway_subscription_key: null,
  auto_process: null,
  auto_process_custom_class: null,
  auto_process_response_message: null,
  auto_process_status: null,
  entry_date: null,
  entry_user: null,
  id_card_request_type: null,
  notify_me: null,
  request_from: null,
  request_source: null,
  request_status: null,
  request_thru: null,
  request_type: null,
  subscription_description: null,
  subscription_type: null,
  update_date: null,
  update_user: null,
  user_id: null
)
```

