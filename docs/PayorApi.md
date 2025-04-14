# Vba::PayorApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor**](PayorApi.md#create_payor) | **POST** /payors | Create Payor |
| [**delete_payor**](PayorApi.md#delete_payor) | **DELETE** /payors/{payorId} | Delete Payor |
| [**get_payor**](PayorApi.md#get_payor) | **GET** /payors/{payorId} | Get Payor |
| [**list_payor**](PayorApi.md#list_payor) | **GET** /payors | List Payor |
| [**update_batch_payor**](PayorApi.md#update_batch_payor) | **PUT** /payors-batch | Create or Update Batch Payor |
| [**update_payor**](PayorApi.md#update_payor) | **PUT** /payors/{payorId} | Update Payor |


## create_payor

> <PayorVBAResponse> create_payor(vbasoftware_database, payor)

Create Payor

Creates a new Payor

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor = Vba::Payor.new({payor_id: 'payor_id_example', force_filter: false}) # Payor | 

begin
  # Create Payor
  result = api_instance.create_payor(vbasoftware_database, payor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->create_payor: #{e}"
end
```

#### Using the create_payor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorVBAResponse>, Integer, Hash)> create_payor_with_http_info(vbasoftware_database, payor)

```ruby
begin
  # Create Payor
  data, status_code, headers = api_instance.create_payor_with_http_info(vbasoftware_database, payor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->create_payor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor** | [**Payor**](Payor.md) |  |  |

### Return type

[**PayorVBAResponse**](PayorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor

> delete_payor(vbasoftware_database, payor_id)

Delete Payor

Deletes an Payor

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID

begin
  # Delete Payor
  api_instance.delete_payor(vbasoftware_database, payor_id)
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->delete_payor: #{e}"
end
```

#### Using the delete_payor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_with_http_info(vbasoftware_database, payor_id)

```ruby
begin
  # Delete Payor
  data, status_code, headers = api_instance.delete_payor_with_http_info(vbasoftware_database, payor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->delete_payor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor

> <PayorVBAResponse> get_payor(vbasoftware_database, payor_id)

Get Payor

Gets Payor

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID

begin
  # Get Payor
  result = api_instance.get_payor(vbasoftware_database, payor_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->get_payor: #{e}"
end
```

#### Using the get_payor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorVBAResponse>, Integer, Hash)> get_payor_with_http_info(vbasoftware_database, payor_id)

```ruby
begin
  # Get Payor
  data, status_code, headers = api_instance.get_payor_with_http_info(vbasoftware_database, payor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->get_payor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |

### Return type

[**PayorVBAResponse**](PayorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor

> <PayorListVBAResponse> list_payor(vbasoftware_database, opts)

List Payor

Lists all Payor

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Payor
  result = api_instance.list_payor(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->list_payor: #{e}"
end
```

#### Using the list_payor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorListVBAResponse>, Integer, Hash)> list_payor_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Payor
  data, status_code, headers = api_instance.list_payor_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->list_payor_with_http_info: #{e}"
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

[**PayorListVBAResponse**](PayorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor

> <MultiCodeResponseListVBAResponse> update_batch_payor(vbasoftware_database, payor)

Create or Update Batch Payor

Create or Update multiple Payor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor = [Vba::Payor.new({payor_id: 'payor_id_example', force_filter: false})] # Array<Payor> | 

begin
  # Create or Update Batch Payor
  result = api_instance.update_batch_payor(vbasoftware_database, payor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->update_batch_payor: #{e}"
end
```

#### Using the update_batch_payor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_with_http_info(vbasoftware_database, payor)

```ruby
begin
  # Create or Update Batch Payor
  data, status_code, headers = api_instance.update_batch_payor_with_http_info(vbasoftware_database, payor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->update_batch_payor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor** | [**Array&lt;Payor&gt;**](Payor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payor

> <PayorVBAResponse> update_payor(vbasoftware_database, payor_id, payor)

Update Payor

Updates a specific Payor.

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

api_instance = Vba::PayorApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor = Vba::Payor.new({payor_id: 'payor_id_example', force_filter: false}) # Payor | 

begin
  # Update Payor
  result = api_instance.update_payor(vbasoftware_database, payor_id, payor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->update_payor: #{e}"
end
```

#### Using the update_payor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorVBAResponse>, Integer, Hash)> update_payor_with_http_info(vbasoftware_database, payor_id, payor)

```ruby
begin
  # Update Payor
  data, status_code, headers = api_instance.update_payor_with_http_info(vbasoftware_database, payor_id, payor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorApi->update_payor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor** | [**Payor**](Payor.md) |  |  |

### Return type

[**PayorVBAResponse**](PayorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

