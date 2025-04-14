# Vba::PayorFiltersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor_filter**](PayorFiltersApi.md#create_payor_filter) | **POST** /payors/{payorID}/filters | Create PayorFilter |
| [**delete_payor_filter**](PayorFiltersApi.md#delete_payor_filter) | **DELETE** /payors/{payorID}/filters/{payorFilterKey} | Delete PayorFilter |
| [**get_payor_filter**](PayorFiltersApi.md#get_payor_filter) | **GET** /payors/{payorID}/filters/{payorFilterKey} | Get PayorFilter |
| [**list_payor_filter**](PayorFiltersApi.md#list_payor_filter) | **GET** /payors/{payorID}/filters | List PayorFilter |
| [**update_batch_payor_filter**](PayorFiltersApi.md#update_batch_payor_filter) | **PUT** /payors/{payorID}/filters-batch | Create or Update Batch PayorFilter |
| [**update_payor_filter**](PayorFiltersApi.md#update_payor_filter) | **PUT** /payors/{payorID}/filters/{payorFilterKey} | Update PayorFilter |


## create_payor_filter

> <PayorFilterVBAResponse> create_payor_filter(vbasoftware_database, payor_id, payor_filter)

Create PayorFilter

Creates a new PayorFilter

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_filter = Vba::PayorFilter.new({payor_filter_key: 37, filter_key: 37, payor_id: 'payor_id_example'}) # PayorFilter | 

begin
  # Create PayorFilter
  result = api_instance.create_payor_filter(vbasoftware_database, payor_id, payor_filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->create_payor_filter: #{e}"
end
```

#### Using the create_payor_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorFilterVBAResponse>, Integer, Hash)> create_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter)

```ruby
begin
  # Create PayorFilter
  data, status_code, headers = api_instance.create_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorFilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->create_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_filter** | [**PayorFilter**](PayorFilter.md) |  |  |

### Return type

[**PayorFilterVBAResponse**](PayorFilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor_filter

> delete_payor_filter(vbasoftware_database, payor_id, payor_filter_key)

Delete PayorFilter

Deletes an PayorFilter

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_filter_key = 56 # Integer | PayorFilter Key

begin
  # Delete PayorFilter
  api_instance.delete_payor_filter(vbasoftware_database, payor_id, payor_filter_key)
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->delete_payor_filter: #{e}"
end
```

#### Using the delete_payor_filter_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key)

```ruby
begin
  # Delete PayorFilter
  data, status_code, headers = api_instance.delete_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->delete_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_filter_key** | **Integer** | PayorFilter Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor_filter

> <PayorFilterVBAResponse> get_payor_filter(vbasoftware_database, payor_id, payor_filter_key)

Get PayorFilter

Gets PayorFilter

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_filter_key = 56 # Integer | PayorFilter Key

begin
  # Get PayorFilter
  result = api_instance.get_payor_filter(vbasoftware_database, payor_id, payor_filter_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->get_payor_filter: #{e}"
end
```

#### Using the get_payor_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorFilterVBAResponse>, Integer, Hash)> get_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key)

```ruby
begin
  # Get PayorFilter
  data, status_code, headers = api_instance.get_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorFilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->get_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_filter_key** | **Integer** | PayorFilter Key |  |

### Return type

[**PayorFilterVBAResponse**](PayorFilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_filter

> <PayorFilterListVBAResponse> list_payor_filter(vbasoftware_database, payor_id, opts)

List PayorFilter

Lists all PayorFilter for the given payorID

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayorFilter
  result = api_instance.list_payor_filter(vbasoftware_database, payor_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->list_payor_filter: #{e}"
end
```

#### Using the list_payor_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorFilterListVBAResponse>, Integer, Hash)> list_payor_filter_with_http_info(vbasoftware_database, payor_id, opts)

```ruby
begin
  # List PayorFilter
  data, status_code, headers = api_instance.list_payor_filter_with_http_info(vbasoftware_database, payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorFilterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->list_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PayorFilterListVBAResponse**](PayorFilterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor_filter

> <MultiCodeResponseListVBAResponse> update_batch_payor_filter(vbasoftware_database, payor_id, payor_filter)

Create or Update Batch PayorFilter

Create or Update multiple PayorFilter at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_filter = [Vba::PayorFilter.new({payor_filter_key: 37, filter_key: 37, payor_id: 'payor_id_example'})] # Array<PayorFilter> | 

begin
  # Create or Update Batch PayorFilter
  result = api_instance.update_batch_payor_filter(vbasoftware_database, payor_id, payor_filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->update_batch_payor_filter: #{e}"
end
```

#### Using the update_batch_payor_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter)

```ruby
begin
  # Create or Update Batch PayorFilter
  data, status_code, headers = api_instance.update_batch_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->update_batch_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_filter** | [**Array&lt;PayorFilter&gt;**](PayorFilter.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payor_filter

> <PayorFilterVBAResponse> update_payor_filter(vbasoftware_database, payor_id, payor_filter_key, payor_filter)

Update PayorFilter

Updates a specific PayorFilter.

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

api_instance = Vba::PayorFiltersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_filter_key = 56 # Integer | PayorFilter Key
payor_filter = Vba::PayorFilter.new({payor_filter_key: 37, filter_key: 37, payor_id: 'payor_id_example'}) # PayorFilter | 

begin
  # Update PayorFilter
  result = api_instance.update_payor_filter(vbasoftware_database, payor_id, payor_filter_key, payor_filter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->update_payor_filter: #{e}"
end
```

#### Using the update_payor_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorFilterVBAResponse>, Integer, Hash)> update_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key, payor_filter)

```ruby
begin
  # Update PayorFilter
  data, status_code, headers = api_instance.update_payor_filter_with_http_info(vbasoftware_database, payor_id, payor_filter_key, payor_filter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorFilterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorFiltersApi->update_payor_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_filter_key** | **Integer** | PayorFilter Key |  |
| **payor_filter** | [**PayorFilter**](PayorFilter.md) |  |  |

### Return type

[**PayorFilterVBAResponse**](PayorFilterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

