# Vba::BrokerageApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_brokerage**](BrokerageApi.md#create_brokerage) | **POST** /brokerages | Create Brokerage |
| [**delete_brokerage**](BrokerageApi.md#delete_brokerage) | **DELETE** /brokerages/{brokerage} | Delete Brokerage |
| [**get_brokerage**](BrokerageApi.md#get_brokerage) | **GET** /brokerages/{brokerage} | Get Brokerage |
| [**list_brokerage**](BrokerageApi.md#list_brokerage) | **GET** /brokerages | List Brokerage |
| [**update_batch_brokerage**](BrokerageApi.md#update_batch_brokerage) | **PUT** /brokerages-batch | Create or Update Batch Brokerage |
| [**update_brokerage**](BrokerageApi.md#update_brokerage) | **PUT** /brokerages/{brokerage} | Update Brokerage |


## create_brokerage

> <BrokerageVBAResponse> create_brokerage(vbasoftware_database, brokerage)

Create Brokerage

Creates a new Brokerage

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
brokerage = Vba::Brokerage.new({brokerage1: 'brokerage1_example'}) # Brokerage | 

begin
  # Create Brokerage
  result = api_instance.create_brokerage(vbasoftware_database, brokerage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->create_brokerage: #{e}"
end
```

#### Using the create_brokerage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrokerageVBAResponse>, Integer, Hash)> create_brokerage_with_http_info(vbasoftware_database, brokerage)

```ruby
begin
  # Create Brokerage
  data, status_code, headers = api_instance.create_brokerage_with_http_info(vbasoftware_database, brokerage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrokerageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->create_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **brokerage** | [**Brokerage**](Brokerage.md) |  |  |

### Return type

[**BrokerageVBAResponse**](BrokerageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_brokerage

> delete_brokerage(vbasoftware_database, brokerage)

Delete Brokerage

Deletes an Brokerage

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
brokerage = 'brokerage_example' # String | Brokerage1

begin
  # Delete Brokerage
  api_instance.delete_brokerage(vbasoftware_database, brokerage)
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->delete_brokerage: #{e}"
end
```

#### Using the delete_brokerage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_brokerage_with_http_info(vbasoftware_database, brokerage)

```ruby
begin
  # Delete Brokerage
  data, status_code, headers = api_instance.delete_brokerage_with_http_info(vbasoftware_database, brokerage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->delete_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **brokerage** | **String** | Brokerage1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_brokerage

> <BrokerageVBAResponse> get_brokerage(vbasoftware_database, brokerage)

Get Brokerage

Gets Brokerage

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
brokerage = 'brokerage_example' # String | Brokerage1

begin
  # Get Brokerage
  result = api_instance.get_brokerage(vbasoftware_database, brokerage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->get_brokerage: #{e}"
end
```

#### Using the get_brokerage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrokerageVBAResponse>, Integer, Hash)> get_brokerage_with_http_info(vbasoftware_database, brokerage)

```ruby
begin
  # Get Brokerage
  data, status_code, headers = api_instance.get_brokerage_with_http_info(vbasoftware_database, brokerage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrokerageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->get_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **brokerage** | **String** | Brokerage1 |  |

### Return type

[**BrokerageVBAResponse**](BrokerageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_brokerage

> <BrokerageListVBAResponse> list_brokerage(vbasoftware_database, opts)

List Brokerage

Lists all Brokerage

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Brokerage
  result = api_instance.list_brokerage(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->list_brokerage: #{e}"
end
```

#### Using the list_brokerage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrokerageListVBAResponse>, Integer, Hash)> list_brokerage_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Brokerage
  data, status_code, headers = api_instance.list_brokerage_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrokerageListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->list_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**BrokerageListVBAResponse**](BrokerageListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_brokerage

> <MultiCodeResponseListVBAResponse> update_batch_brokerage(vbasoftware_database, brokerage)

Create or Update Batch Brokerage

Create or Update multiple Brokerage at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
brokerage = [Vba::Brokerage.new({brokerage1: 'brokerage1_example'})] # Array<Brokerage> | 

begin
  # Create or Update Batch Brokerage
  result = api_instance.update_batch_brokerage(vbasoftware_database, brokerage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->update_batch_brokerage: #{e}"
end
```

#### Using the update_batch_brokerage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_brokerage_with_http_info(vbasoftware_database, brokerage)

```ruby
begin
  # Create or Update Batch Brokerage
  data, status_code, headers = api_instance.update_batch_brokerage_with_http_info(vbasoftware_database, brokerage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->update_batch_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **brokerage** | [**Array&lt;Brokerage&gt;**](Brokerage.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_brokerage

> <BrokerageVBAResponse> update_brokerage(vbasoftware_database, brokerage, brokerage2)

Update Brokerage

Updates a specific Brokerage.

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

api_instance = Vba::BrokerageApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
brokerage = 'brokerage_example' # String | Brokerage1
brokerage2 = Vba::Brokerage.new({brokerage1: 'brokerage1_example'}) # Brokerage | 

begin
  # Update Brokerage
  result = api_instance.update_brokerage(vbasoftware_database, brokerage, brokerage2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->update_brokerage: #{e}"
end
```

#### Using the update_brokerage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrokerageVBAResponse>, Integer, Hash)> update_brokerage_with_http_info(vbasoftware_database, brokerage, brokerage2)

```ruby
begin
  # Update Brokerage
  data, status_code, headers = api_instance.update_brokerage_with_http_info(vbasoftware_database, brokerage, brokerage2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrokerageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BrokerageApi->update_brokerage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **brokerage** | **String** | Brokerage1 |  |
| **brokerage2** | [**Brokerage**](Brokerage.md) |  |  |

### Return type

[**BrokerageVBAResponse**](BrokerageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

