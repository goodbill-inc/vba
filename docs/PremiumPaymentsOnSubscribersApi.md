# Vba::PremiumPaymentsOnSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#create_prem_payment_subscriber) | **POST** /premium-payments/{premPaymentKey}/subscriber-payments | Create PremPaymentSubscriber |
| [**delete_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#delete_prem_payment_subscriber) | **DELETE** /premium-payments/{premPaymentKey}/subscriber-payments/{subscriberID} | Delete PremPaymentSubscriber |
| [**get_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#get_prem_payment_subscriber) | **GET** /premium-payments/{premPaymentKey}/subscriber-payments/{subscriberID} | Get PremPaymentSubscriber |
| [**list_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#list_prem_payment_subscriber) | **GET** /premium-payments/{premPaymentKey}/subscriber-payments | List PremPaymentSubscriber |
| [**update_batch_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#update_batch_prem_payment_subscriber) | **PUT** /premium-payments/{premPaymentKey}/subscriber-payments-batch | Create or Update Batch PremPaymentSubscriber |
| [**update_prem_payment_subscriber**](PremiumPaymentsOnSubscribersApi.md#update_prem_payment_subscriber) | **PUT** /premium-payments/{premPaymentKey}/subscriber-payments/{subscriberID} | Update PremPaymentSubscriber |


## create_prem_payment_subscriber

> <PremPaymentSubscriberVBAResponse> create_prem_payment_subscriber(vbasoftware_database, prem_payment_key, prem_payment_subscriber)

Create PremPaymentSubscriber

Creates a new PremPaymentSubscriber

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_subscriber = Vba::PremPaymentSubscriber.new({prem_payment_key: 37, subscriber_id: 'subscriber_id_example'}) # PremPaymentSubscriber | 

begin
  # Create PremPaymentSubscriber
  result = api_instance.create_prem_payment_subscriber(vbasoftware_database, prem_payment_key, prem_payment_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->create_prem_payment_subscriber: #{e}"
end
```

#### Using the create_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentSubscriberVBAResponse>, Integer, Hash)> create_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_subscriber)

```ruby
begin
  # Create PremPaymentSubscriber
  data, status_code, headers = api_instance.create_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->create_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_subscriber** | [**PremPaymentSubscriber**](PremPaymentSubscriber.md) |  |  |

### Return type

[**PremPaymentSubscriberVBAResponse**](PremPaymentSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_payment_subscriber

> delete_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id)

Delete PremPaymentSubscriber

Deletes an PremPaymentSubscriber

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Delete PremPaymentSubscriber
  api_instance.delete_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->delete_prem_payment_subscriber: #{e}"
end
```

#### Using the delete_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id)

```ruby
begin
  # Delete PremPaymentSubscriber
  data, status_code, headers = api_instance.delete_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->delete_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_payment_subscriber

> <PremPaymentSubscriberVBAResponse> get_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id)

Get PremPaymentSubscriber

Gets PremPaymentSubscriber

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Get PremPaymentSubscriber
  result = api_instance.get_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->get_prem_payment_subscriber: #{e}"
end
```

#### Using the get_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentSubscriberVBAResponse>, Integer, Hash)> get_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id)

```ruby
begin
  # Get PremPaymentSubscriber
  data, status_code, headers = api_instance.get_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->get_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**PremPaymentSubscriberVBAResponse**](PremPaymentSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_payment_subscriber

> <PremPaymentSubscriberListVBAResponse> list_prem_payment_subscriber(vbasoftware_database, prem_payment_key, opts)

List PremPaymentSubscriber

Lists all PremPaymentSubscriber for the given premPaymentKey

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPaymentSubscriber
  result = api_instance.list_prem_payment_subscriber(vbasoftware_database, prem_payment_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->list_prem_payment_subscriber: #{e}"
end
```

#### Using the list_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentSubscriberListVBAResponse>, Integer, Hash)> list_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, opts)

```ruby
begin
  # List PremPaymentSubscriber
  data, status_code, headers = api_instance.list_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->list_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremPaymentSubscriberListVBAResponse**](PremPaymentSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_payment_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_prem_payment_subscriber(vbasoftware_database, prem_payment_key, prem_payment_subscriber)

Create or Update Batch PremPaymentSubscriber

Create or Update multiple PremPaymentSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_subscriber = [Vba::PremPaymentSubscriber.new({prem_payment_key: 37, subscriber_id: 'subscriber_id_example'})] # Array<PremPaymentSubscriber> | 

begin
  # Create or Update Batch PremPaymentSubscriber
  result = api_instance.update_batch_prem_payment_subscriber(vbasoftware_database, prem_payment_key, prem_payment_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->update_batch_prem_payment_subscriber: #{e}"
end
```

#### Using the update_batch_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_subscriber)

```ruby
begin
  # Create or Update Batch PremPaymentSubscriber
  data, status_code, headers = api_instance.update_batch_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->update_batch_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_subscriber** | [**Array&lt;PremPaymentSubscriber&gt;**](PremPaymentSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_payment_subscriber

> <PremPaymentSubscriberVBAResponse> update_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id, prem_payment_subscriber)

Update PremPaymentSubscriber

Updates a specific PremPaymentSubscriber.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::PremiumPaymentsOnSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_payment_subscriber = Vba::PremPaymentSubscriber.new({prem_payment_key: 37, subscriber_id: 'subscriber_id_example'}) # PremPaymentSubscriber | 

begin
  # Update PremPaymentSubscriber
  result = api_instance.update_prem_payment_subscriber(vbasoftware_database, prem_payment_key, subscriber_id, prem_payment_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->update_prem_payment_subscriber: #{e}"
end
```

#### Using the update_prem_payment_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentSubscriberVBAResponse>, Integer, Hash)> update_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id, prem_payment_subscriber)

```ruby
begin
  # Update PremPaymentSubscriber
  data, status_code, headers = api_instance.update_prem_payment_subscriber_with_http_info(vbasoftware_database, prem_payment_key, subscriber_id, prem_payment_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnSubscribersApi->update_prem_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **prem_payment_subscriber** | [**PremPaymentSubscriber**](PremPaymentSubscriber.md) |  |  |

### Return type

[**PremPaymentSubscriberVBAResponse**](PremPaymentSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

