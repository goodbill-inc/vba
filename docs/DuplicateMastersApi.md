# Vba::DuplicateMastersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_duplicate_master**](DuplicateMastersApi.md#create_duplicate_master) | **POST** /duplicate-masters | Create DuplicateMaster |
| [**delete_duplicate_master**](DuplicateMastersApi.md#delete_duplicate_master) | **DELETE** /duplicate-masters/{duplicateMasterKey} | Delete DuplicateMaster |
| [**get_duplicate_master**](DuplicateMastersApi.md#get_duplicate_master) | **GET** /duplicate-masters/{duplicateMasterKey} | Get DuplicateMaster |
| [**list_duplicate_master**](DuplicateMastersApi.md#list_duplicate_master) | **GET** /duplicate-masters | List DuplicateMaster |
| [**update_batch_duplicate_master**](DuplicateMastersApi.md#update_batch_duplicate_master) | **PUT** /duplicate-masters-batch | Create or Update Batch DuplicateMaster |
| [**update_duplicate_master**](DuplicateMastersApi.md#update_duplicate_master) | **PUT** /duplicate-masters/{duplicateMasterKey} | Update DuplicateMaster |


## create_duplicate_master

> <DuplicateMasterVBAResponse> create_duplicate_master(vbasoftware_database, duplicate_master)

Create DuplicateMaster

Creates a new DuplicateMaster

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master = Vba::DuplicateMaster.new({duplicate_master_key: 37}) # DuplicateMaster | 

begin
  # Create DuplicateMaster
  result = api_instance.create_duplicate_master(vbasoftware_database, duplicate_master)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->create_duplicate_master: #{e}"
end
```

#### Using the create_duplicate_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterVBAResponse>, Integer, Hash)> create_duplicate_master_with_http_info(vbasoftware_database, duplicate_master)

```ruby
begin
  # Create DuplicateMaster
  data, status_code, headers = api_instance.create_duplicate_master_with_http_info(vbasoftware_database, duplicate_master)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->create_duplicate_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master** | [**DuplicateMaster**](DuplicateMaster.md) |  |  |

### Return type

[**DuplicateMasterVBAResponse**](DuplicateMasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_duplicate_master

> delete_duplicate_master(vbasoftware_database, duplicate_master_key)

Delete DuplicateMaster

Deletes an DuplicateMaster

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key

begin
  # Delete DuplicateMaster
  api_instance.delete_duplicate_master(vbasoftware_database, duplicate_master_key)
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->delete_duplicate_master: #{e}"
end
```

#### Using the delete_duplicate_master_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key)

```ruby
begin
  # Delete DuplicateMaster
  data, status_code, headers = api_instance.delete_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->delete_duplicate_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_duplicate_master

> <DuplicateMasterVBAResponse> get_duplicate_master(vbasoftware_database, duplicate_master_key)

Get DuplicateMaster

Gets DuplicateMaster

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key

begin
  # Get DuplicateMaster
  result = api_instance.get_duplicate_master(vbasoftware_database, duplicate_master_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->get_duplicate_master: #{e}"
end
```

#### Using the get_duplicate_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterVBAResponse>, Integer, Hash)> get_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key)

```ruby
begin
  # Get DuplicateMaster
  data, status_code, headers = api_instance.get_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->get_duplicate_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |

### Return type

[**DuplicateMasterVBAResponse**](DuplicateMasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_duplicate_master

> <DuplicateMasterListVBAResponse> list_duplicate_master(vbasoftware_database, opts)

List DuplicateMaster

Lists all DuplicateMaster

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DuplicateMaster
  result = api_instance.list_duplicate_master(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->list_duplicate_master: #{e}"
end
```

#### Using the list_duplicate_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterListVBAResponse>, Integer, Hash)> list_duplicate_master_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DuplicateMaster
  data, status_code, headers = api_instance.list_duplicate_master_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->list_duplicate_master_with_http_info: #{e}"
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

[**DuplicateMasterListVBAResponse**](DuplicateMasterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_duplicate_master

> <MultiCodeResponseListVBAResponse> update_batch_duplicate_master(vbasoftware_database, duplicate_master)

Create or Update Batch DuplicateMaster

Create or Update multiple DuplicateMaster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master = [Vba::DuplicateMaster.new({duplicate_master_key: 37})] # Array<DuplicateMaster> | 

begin
  # Create or Update Batch DuplicateMaster
  result = api_instance.update_batch_duplicate_master(vbasoftware_database, duplicate_master)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->update_batch_duplicate_master: #{e}"
end
```

#### Using the update_batch_duplicate_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_duplicate_master_with_http_info(vbasoftware_database, duplicate_master)

```ruby
begin
  # Create or Update Batch DuplicateMaster
  data, status_code, headers = api_instance.update_batch_duplicate_master_with_http_info(vbasoftware_database, duplicate_master)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->update_batch_duplicate_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master** | [**Array&lt;DuplicateMaster&gt;**](DuplicateMaster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_duplicate_master

> <DuplicateMasterVBAResponse> update_duplicate_master(vbasoftware_database, duplicate_master_key, duplicate_master)

Update DuplicateMaster

Updates a specific DuplicateMaster.

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

api_instance = Vba::DuplicateMastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_master = Vba::DuplicateMaster.new({duplicate_master_key: 37}) # DuplicateMaster | 

begin
  # Update DuplicateMaster
  result = api_instance.update_duplicate_master(vbasoftware_database, duplicate_master_key, duplicate_master)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->update_duplicate_master: #{e}"
end
```

#### Using the update_duplicate_master_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterVBAResponse>, Integer, Hash)> update_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master)

```ruby
begin
  # Update DuplicateMaster
  data, status_code, headers = api_instance.update_duplicate_master_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMastersApi->update_duplicate_master_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_master** | [**DuplicateMaster**](DuplicateMaster.md) |  |  |

### Return type

[**DuplicateMasterVBAResponse**](DuplicateMasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

