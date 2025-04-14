# Vba::CommissionRepSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_subscriber**](CommissionRepSubscribersApi.md#create_commission_rep_subscriber) | **POST** /commission-reps/{commRepKey}/commission-rep-subscribers | Create CommissionRepSubscriber |
| [**delete_commission_rep_subscriber**](CommissionRepSubscribersApi.md#delete_commission_rep_subscriber) | **DELETE** /commission-reps/{commRepKey}/commission-rep-subscribers/{commRepSubscriberKey} | Delete CommissionRepSubscriber |
| [**get_commission_rep_subscriber**](CommissionRepSubscribersApi.md#get_commission_rep_subscriber) | **GET** /commission-reps/{commRepKey}/commission-rep-subscribers/{commRepSubscriberKey} | Get CommissionRepSubscriber |
| [**list_commission_rep_subscriber**](CommissionRepSubscribersApi.md#list_commission_rep_subscriber) | **GET** /commission-reps/{commRepKey}/commission-rep-subscribers | List CommissionRepSubscriber |
| [**update_batch_commission_rep_subscriber**](CommissionRepSubscribersApi.md#update_batch_commission_rep_subscriber) | **PUT** /commission-reps/{commRepKey}/commission-rep-subscribers-batch | Create or Update Batch CommissionRepSubscriber |
| [**update_commission_rep_subscriber**](CommissionRepSubscribersApi.md#update_commission_rep_subscriber) | **PUT** /commission-reps/{commRepKey}/commission-rep-subscribers/{commRepSubscriberKey} | Update CommissionRepSubscriber |


## create_commission_rep_subscriber

> <CommissionRepSubscriberVBAResponse> create_commission_rep_subscriber(vbasoftware_database, comm_rep_key, commission_rep_subscriber)

Create CommissionRepSubscriber

Creates a new CommissionRepSubscriber

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_subscriber = Vba::CommissionRepSubscriber.new({commission_rep_subscriber_key: 37, commission_rep_key: 37, subscriber_id: 'subscriber_id_example'}) # CommissionRepSubscriber | 

begin
  # Create CommissionRepSubscriber
  result = api_instance.create_commission_rep_subscriber(vbasoftware_database, comm_rep_key, commission_rep_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->create_commission_rep_subscriber: #{e}"
end
```

#### Using the create_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepSubscriberVBAResponse>, Integer, Hash)> create_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_subscriber)

```ruby
begin
  # Create CommissionRepSubscriber
  data, status_code, headers = api_instance.create_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->create_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_subscriber** | [**CommissionRepSubscriber**](CommissionRepSubscriber.md) |  |  |

### Return type

[**CommissionRepSubscriberVBAResponse**](CommissionRepSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_subscriber

> delete_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)

Delete CommissionRepSubscriber

Deletes an CommissionRepSubscriber

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_subscriber_key = 56 # Integer | CommissionRepSubscriber Key

begin
  # Delete CommissionRepSubscriber
  api_instance.delete_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->delete_commission_rep_subscriber: #{e}"
end
```

#### Using the delete_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)

```ruby
begin
  # Delete CommissionRepSubscriber
  data, status_code, headers = api_instance.delete_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->delete_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_subscriber_key** | **Integer** | CommissionRepSubscriber Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_subscriber

> <CommissionRepSubscriberVBAResponse> get_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)

Get CommissionRepSubscriber

Gets CommissionRepSubscriber

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_subscriber_key = 56 # Integer | CommissionRepSubscriber Key

begin
  # Get CommissionRepSubscriber
  result = api_instance.get_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->get_commission_rep_subscriber: #{e}"
end
```

#### Using the get_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepSubscriberVBAResponse>, Integer, Hash)> get_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)

```ruby
begin
  # Get CommissionRepSubscriber
  data, status_code, headers = api_instance.get_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->get_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_subscriber_key** | **Integer** | CommissionRepSubscriber Key |  |

### Return type

[**CommissionRepSubscriberVBAResponse**](CommissionRepSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_subscriber

> <CommissionRepSubscriberListVBAResponse> list_commission_rep_subscriber(vbasoftware_database, comm_rep_key, opts)

List CommissionRepSubscriber

Lists all CommissionRepSubscriber for the given commRepKey

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepSubscriber
  result = api_instance.list_commission_rep_subscriber(vbasoftware_database, comm_rep_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->list_commission_rep_subscriber: #{e}"
end
```

#### Using the list_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepSubscriberListVBAResponse>, Integer, Hash)> list_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, opts)

```ruby
begin
  # List CommissionRepSubscriber
  data, status_code, headers = api_instance.list_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->list_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRepSubscriberListVBAResponse**](CommissionRepSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_subscriber(vbasoftware_database, comm_rep_key, commission_rep_subscriber)

Create or Update Batch CommissionRepSubscriber

Create or Update multiple CommissionRepSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_subscriber = [Vba::CommissionRepSubscriber.new({commission_rep_subscriber_key: 37, commission_rep_key: 37, subscriber_id: 'subscriber_id_example'})] # Array<CommissionRepSubscriber> | 

begin
  # Create or Update Batch CommissionRepSubscriber
  result = api_instance.update_batch_commission_rep_subscriber(vbasoftware_database, comm_rep_key, commission_rep_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->update_batch_commission_rep_subscriber: #{e}"
end
```

#### Using the update_batch_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_subscriber)

```ruby
begin
  # Create or Update Batch CommissionRepSubscriber
  data, status_code, headers = api_instance.update_batch_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->update_batch_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_subscriber** | [**Array&lt;CommissionRepSubscriber&gt;**](CommissionRepSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_subscriber

> <CommissionRepSubscriberVBAResponse> update_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key, commission_rep_subscriber)

Update CommissionRepSubscriber

Updates a specific CommissionRepSubscriber.

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

api_instance = Vba::CommissionRepSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_subscriber_key = 56 # Integer | CommissionRepSubscriber Key
commission_rep_subscriber = Vba::CommissionRepSubscriber.new({commission_rep_subscriber_key: 37, commission_rep_key: 37, subscriber_id: 'subscriber_id_example'}) # CommissionRepSubscriber | 

begin
  # Update CommissionRepSubscriber
  result = api_instance.update_commission_rep_subscriber(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key, commission_rep_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->update_commission_rep_subscriber: #{e}"
end
```

#### Using the update_commission_rep_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepSubscriberVBAResponse>, Integer, Hash)> update_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key, commission_rep_subscriber)

```ruby
begin
  # Update CommissionRepSubscriber
  data, status_code, headers = api_instance.update_commission_rep_subscriber_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_subscriber_key, commission_rep_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepSubscribersApi->update_commission_rep_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_subscriber_key** | **Integer** | CommissionRepSubscriber Key |  |
| **commission_rep_subscriber** | [**CommissionRepSubscriber**](CommissionRepSubscriber.md) |  |  |

### Return type

[**CommissionRepSubscriberVBAResponse**](CommissionRepSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

