# Vba::CommissionRateSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rate_subscriber**](CommissionRateSubscribersApi.md#create_commission_rate_subscriber) | **POST** /commission-rates/{commRateKey}/commission-rate-subscribers/{subscriberId} | Create CommissionRateSubscriber |
| [**delete_commission_rate_subscriber**](CommissionRateSubscribersApi.md#delete_commission_rate_subscriber) | **DELETE** /commission-rates/{commRateKey}/commission-rate-subscribers/{subscriberId} | Delete CommissionRateSubscriber |
| [**get_commission_rate_subscriber**](CommissionRateSubscribersApi.md#get_commission_rate_subscriber) | **GET** /commission-rates/{commRateKey}/commission-rate-subscribers/{subscriberId} | Get CommissionRateSubscriber |
| [**list_commission_rate_subscriber**](CommissionRateSubscribersApi.md#list_commission_rate_subscriber) | **GET** /commission-rates/{commRateKey}/commission-rate-subscribers | List CommissionRateSubscriber |
| [**list_vba_commission_rate_subscriber**](CommissionRateSubscribersApi.md#list_vba_commission_rate_subscriber) | **GET** /commission-rates/{commRateKey}/commission-rate-subscribers-match | List VBA_CommissionRateSubscriber that match provided filters |
| [**update_batch_commission_rate_subscriber**](CommissionRateSubscribersApi.md#update_batch_commission_rate_subscriber) | **PUT** /commission-rates/{commRateKey}/commission-rate-subscribers-batch | Create or Update Batch CommissionRateSubscriber |
| [**update_commission_rate_subscriber**](CommissionRateSubscribersApi.md#update_commission_rate_subscriber) | **PUT** /commission-rates/{commRateKey}/commission-rate-subscribers/{subscriberId} | Update CommissionRateSubscriber |


## create_commission_rate_subscriber

> <CommissionRateSubscriberVBAResponse> create_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)

Create CommissionRateSubscriber

Creates a new CommissionRateSubscriber

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
commission_rate_subscriber = Vba::CommissionRateSubscriber.new({commission_rate_key: 37, subscriber_id: 'subscriber_id_example'}) # CommissionRateSubscriber | 

begin
  # Create CommissionRateSubscriber
  result = api_instance.create_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->create_commission_rate_subscriber: #{e}"
end
```

#### Using the create_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateSubscriberVBAResponse>, Integer, Hash)> create_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)

```ruby
begin
  # Create CommissionRateSubscriber
  data, status_code, headers = api_instance.create_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->create_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **commission_rate_subscriber** | [**CommissionRateSubscriber**](CommissionRateSubscriber.md) |  |  |

### Return type

[**CommissionRateSubscriberVBAResponse**](CommissionRateSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rate_subscriber

> delete_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id)

Delete CommissionRateSubscriber

Deletes an CommissionRateSubscriber

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Delete CommissionRateSubscriber
  api_instance.delete_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->delete_commission_rate_subscriber: #{e}"
end
```

#### Using the delete_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id)

```ruby
begin
  # Delete CommissionRateSubscriber
  data, status_code, headers = api_instance.delete_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->delete_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rate_subscriber

> <CommissionRateSubscriberVBAResponse> get_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id)

Get CommissionRateSubscriber

Gets CommissionRateSubscriber

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Get CommissionRateSubscriber
  result = api_instance.get_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->get_commission_rate_subscriber: #{e}"
end
```

#### Using the get_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateSubscriberVBAResponse>, Integer, Hash)> get_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id)

```ruby
begin
  # Get CommissionRateSubscriber
  data, status_code, headers = api_instance.get_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->get_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**CommissionRateSubscriberVBAResponse**](CommissionRateSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate_subscriber

> <CommissionRateSubscriberListVBAResponse> list_commission_rate_subscriber(vbasoftware_database, comm_rate_key, opts)

List CommissionRateSubscriber

Lists all CommissionRateSubscriber for the given commRateKey

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRateSubscriber
  result = api_instance.list_commission_rate_subscriber(vbasoftware_database, comm_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->list_commission_rate_subscriber: #{e}"
end
```

#### Using the list_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateSubscriberListVBAResponse>, Integer, Hash)> list_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, opts)

```ruby
begin
  # List CommissionRateSubscriber
  data, status_code, headers = api_instance.list_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->list_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRateSubscriberListVBAResponse**](CommissionRateSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_commission_rate_subscriber

> <VBACommissionRateSubscriberListVBAResponse> list_vba_commission_rate_subscriber(vbasoftware_database, comm_rate_key, group_id, opts)

List VBA_CommissionRateSubscriber that match provided filters

Retrieves a list of VBA_CommissionRateSubscriber that match provided filters. The endpoint requires a CommissionRate Key, Group ID query parameter and an optional Division ID query parameter. By default, all records, including unassigned, are included. However, the Include Unassigned query parameter can be set to false to exclude unassigned records.

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
group_id = 'group_id_example' # String | Group ID
opts = {
  division_id: 'division_id_example', # String | Division ID
  include_unassigned: true # Boolean | Include Unassigned
}

begin
  # List VBA_CommissionRateSubscriber that match provided filters
  result = api_instance.list_vba_commission_rate_subscriber(vbasoftware_database, comm_rate_key, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->list_vba_commission_rate_subscriber: #{e}"
end
```

#### Using the list_vba_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACommissionRateSubscriberListVBAResponse>, Integer, Hash)> list_vba_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, group_id, opts)

```ruby
begin
  # List VBA_CommissionRateSubscriber that match provided filters
  data, status_code, headers = api_instance.list_vba_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACommissionRateSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->list_vba_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID | [optional] |
| **include_unassigned** | **Boolean** | Include Unassigned | [optional][default to true] |

### Return type

[**VBACommissionRateSubscriberListVBAResponse**](VBACommissionRateSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rate_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_commission_rate_subscriber(vbasoftware_database, comm_rate_key, commission_rate_subscriber)

Create or Update Batch CommissionRateSubscriber

Create or Update multiple CommissionRateSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
commission_rate_subscriber = [Vba::CommissionRateSubscriber.new({commission_rate_key: 37, subscriber_id: 'subscriber_id_example'})] # Array<CommissionRateSubscriber> | 

begin
  # Create or Update Batch CommissionRateSubscriber
  result = api_instance.update_batch_commission_rate_subscriber(vbasoftware_database, comm_rate_key, commission_rate_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->update_batch_commission_rate_subscriber: #{e}"
end
```

#### Using the update_batch_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, commission_rate_subscriber)

```ruby
begin
  # Create or Update Batch CommissionRateSubscriber
  data, status_code, headers = api_instance.update_batch_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, commission_rate_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->update_batch_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **commission_rate_subscriber** | [**Array&lt;CommissionRateSubscriber&gt;**](CommissionRateSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rate_subscriber

> <CommissionRateSubscriberVBAResponse> update_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)

Update CommissionRateSubscriber

Updates a specific CommissionRateSubscriber.

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

api_instance = Vba::CommissionRateSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
commission_rate_subscriber = Vba::CommissionRateSubscriber.new({commission_rate_key: 37, subscriber_id: 'subscriber_id_example'}) # CommissionRateSubscriber | 

begin
  # Update CommissionRateSubscriber
  result = api_instance.update_commission_rate_subscriber(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->update_commission_rate_subscriber: #{e}"
end
```

#### Using the update_commission_rate_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateSubscriberVBAResponse>, Integer, Hash)> update_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)

```ruby
begin
  # Update CommissionRateSubscriber
  data, status_code, headers = api_instance.update_commission_rate_subscriber_with_http_info(vbasoftware_database, comm_rate_key, subscriber_id, commission_rate_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateSubscribersApi->update_commission_rate_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **commission_rate_subscriber** | [**CommissionRateSubscriber**](CommissionRateSubscriber.md) |  |  |

### Return type

[**CommissionRateSubscriberVBAResponse**](CommissionRateSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

