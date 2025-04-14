# Vba::FiltersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_filter**](FiltersApi.md#create_filter) | **POST** /filters | Create Filter |
| [**delete_filter**](FiltersApi.md#delete_filter) | **DELETE** /filters/{filterKey} | Delete Filter |
| [**get_filter**](FiltersApi.md#get_filter) | **GET** /filters/{filterKey} | Get Filter |
| [**list_filter**](FiltersApi.md#list_filter) | **GET** /filters | List Filter |
| [**update_batch_filter**](FiltersApi.md#update_batch_filter) | **PUT** /filters-batch | Create or Update Batch Filter |
| [**update_filter**](FiltersApi.md#update_filter) | **PUT** /filters/{filterKey} | Update Filter |


## create_filter

> <FilterVBAResponse> create_filter(vbasoftware_database, filter)

Create Filter

Creates a new Filter

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter = Vba::Filter.new({filter_key: 37}) # Filter | 

begin
  # Create Filter
  result = api_instance.create_filter(vbasoftware_database, filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->create_filter: #{e}"
end
```

#### Using the create_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterVBAResponse>, Integer, Hash)> create_filter_with_http_info(vbasoftware_database, filter)

```ruby
begin
  # Create Filter
  data, status_code, headers = api_instance.create_filter_with_http_info(vbasoftware_database, filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->create_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter** | [**Filter**](Filter.md) |  |  |

### Return type

[**FilterVBAResponse**](FilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_filter

> delete_filter(vbasoftware_database, filter_key)

Delete Filter

Deletes an Filter

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_key = 56 # Integer | Filter Key

begin
  # Delete Filter
  api_instance.delete_filter(vbasoftware_database, filter_key)
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->delete_filter: #{e}"
end
```

#### Using the delete_filter_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_filter_with_http_info(vbasoftware_database, filter_key)

```ruby
begin
  # Delete Filter
  data, status_code, headers = api_instance.delete_filter_with_http_info(vbasoftware_database, filter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->delete_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_key** | **Integer** | Filter Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_filter

> <FilterVBAResponse> get_filter(vbasoftware_database, filter_key)

Get Filter

Gets Filter

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_key = 56 # Integer | Filter Key

begin
  # Get Filter
  result = api_instance.get_filter(vbasoftware_database, filter_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->get_filter: #{e}"
end
```

#### Using the get_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterVBAResponse>, Integer, Hash)> get_filter_with_http_info(vbasoftware_database, filter_key)

```ruby
begin
  # Get Filter
  data, status_code, headers = api_instance.get_filter_with_http_info(vbasoftware_database, filter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->get_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_key** | **Integer** | Filter Key |  |

### Return type

[**FilterVBAResponse**](FilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_filter

> <FilterListVBAResponse> list_filter(vbasoftware_database, opts)

List Filter

Lists all Filter

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Filter
  result = api_instance.list_filter(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->list_filter: #{e}"
end
```

#### Using the list_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterListVBAResponse>, Integer, Hash)> list_filter_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Filter
  data, status_code, headers = api_instance.list_filter_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->list_filter_with_http_info: #{e}"
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

[**FilterListVBAResponse**](FilterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_filter

> <MultiCodeResponseListVBAResponse> update_batch_filter(vbasoftware_database, filter)

Create or Update Batch Filter

Create or Update multiple Filter at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter = [Vba::Filter.new({filter_key: 37})] # Array<Filter> | 

begin
  # Create or Update Batch Filter
  result = api_instance.update_batch_filter(vbasoftware_database, filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->update_batch_filter: #{e}"
end
```

#### Using the update_batch_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_filter_with_http_info(vbasoftware_database, filter)

```ruby
begin
  # Create or Update Batch Filter
  data, status_code, headers = api_instance.update_batch_filter_with_http_info(vbasoftware_database, filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->update_batch_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter** | [**Array&lt;Filter&gt;**](Filter.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_filter

> <FilterVBAResponse> update_filter(vbasoftware_database, filter_key, filter)

Update Filter

Updates a specific Filter.

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

api_instance = Vba::FiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_key = 56 # Integer | Filter Key
filter = Vba::Filter.new({filter_key: 37}) # Filter | 

begin
  # Update Filter
  result = api_instance.update_filter(vbasoftware_database, filter_key, filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->update_filter: #{e}"
end
```

#### Using the update_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterVBAResponse>, Integer, Hash)> update_filter_with_http_info(vbasoftware_database, filter_key, filter)

```ruby
begin
  # Update Filter
  data, status_code, headers = api_instance.update_filter_with_http_info(vbasoftware_database, filter_key, filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FiltersApi->update_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_key** | **Integer** | Filter Key |  |
| **filter** | [**Filter**](Filter.md) |  |  |

### Return type

[**FilterVBAResponse**](FilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

