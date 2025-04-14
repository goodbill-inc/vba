# Vba::CommissionRepTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_type**](CommissionRepTypesApi.md#create_commission_rep_type) | **POST** /commission-rep-types | Create CommissionRepType |
| [**delete_commission_rep_type**](CommissionRepTypesApi.md#delete_commission_rep_type) | **DELETE** /commission-rep-types/{repType} | Delete CommissionRepType |
| [**get_commission_rep_type**](CommissionRepTypesApi.md#get_commission_rep_type) | **GET** /commission-rep-types/{repType} | Get CommissionRepType |
| [**list_commission_rep_type**](CommissionRepTypesApi.md#list_commission_rep_type) | **GET** /commission-rep-types | List CommissionRepType |
| [**update_batch_commission_rep_type**](CommissionRepTypesApi.md#update_batch_commission_rep_type) | **PUT** /commission-rep-types-batch | Create or Update Batch CommissionRepType |
| [**update_commission_rep_type**](CommissionRepTypesApi.md#update_commission_rep_type) | **PUT** /commission-rep-types/{repType} | Update CommissionRepType |


## create_commission_rep_type

> <CommissionRepTypeVBAResponse> create_commission_rep_type(vbasoftware_database, commission_rep_type)

Create CommissionRepType

Creates a new CommissionRepType

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rep_type = Vba::CommissionRepType.new({rep_type: 'rep_type_example'}) # CommissionRepType | 

begin
  # Create CommissionRepType
  result = api_instance.create_commission_rep_type(vbasoftware_database, commission_rep_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->create_commission_rep_type: #{e}"
end
```

#### Using the create_commission_rep_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepTypeVBAResponse>, Integer, Hash)> create_commission_rep_type_with_http_info(vbasoftware_database, commission_rep_type)

```ruby
begin
  # Create CommissionRepType
  data, status_code, headers = api_instance.create_commission_rep_type_with_http_info(vbasoftware_database, commission_rep_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->create_commission_rep_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rep_type** | [**CommissionRepType**](CommissionRepType.md) |  |  |

### Return type

[**CommissionRepTypeVBAResponse**](CommissionRepTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_type

> delete_commission_rep_type(vbasoftware_database, rep_type)

Delete CommissionRepType

Deletes an CommissionRepType

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rep_type = 'rep_type_example' # String | Rep Type

begin
  # Delete CommissionRepType
  api_instance.delete_commission_rep_type(vbasoftware_database, rep_type)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->delete_commission_rep_type: #{e}"
end
```

#### Using the delete_commission_rep_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_type_with_http_info(vbasoftware_database, rep_type)

```ruby
begin
  # Delete CommissionRepType
  data, status_code, headers = api_instance.delete_commission_rep_type_with_http_info(vbasoftware_database, rep_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->delete_commission_rep_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rep_type** | **String** | Rep Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_type

> <CommissionRepTypeVBAResponse> get_commission_rep_type(vbasoftware_database, rep_type)

Get CommissionRepType

Gets CommissionRepType

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rep_type = 'rep_type_example' # String | Rep Type

begin
  # Get CommissionRepType
  result = api_instance.get_commission_rep_type(vbasoftware_database, rep_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->get_commission_rep_type: #{e}"
end
```

#### Using the get_commission_rep_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepTypeVBAResponse>, Integer, Hash)> get_commission_rep_type_with_http_info(vbasoftware_database, rep_type)

```ruby
begin
  # Get CommissionRepType
  data, status_code, headers = api_instance.get_commission_rep_type_with_http_info(vbasoftware_database, rep_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->get_commission_rep_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rep_type** | **String** | Rep Type |  |

### Return type

[**CommissionRepTypeVBAResponse**](CommissionRepTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_type

> <CommissionRepTypeListVBAResponse> list_commission_rep_type(vbasoftware_database, opts)

List CommissionRepType

Lists all CommissionRepType

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepType
  result = api_instance.list_commission_rep_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->list_commission_rep_type: #{e}"
end
```

#### Using the list_commission_rep_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepTypeListVBAResponse>, Integer, Hash)> list_commission_rep_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionRepType
  data, status_code, headers = api_instance.list_commission_rep_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->list_commission_rep_type_with_http_info: #{e}"
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

[**CommissionRepTypeListVBAResponse**](CommissionRepTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_type

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_type(vbasoftware_database, commission_rep_type)

Create or Update Batch CommissionRepType

Create or Update multiple CommissionRepType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rep_type = [Vba::CommissionRepType.new({rep_type: 'rep_type_example'})] # Array<CommissionRepType> | 

begin
  # Create or Update Batch CommissionRepType
  result = api_instance.update_batch_commission_rep_type(vbasoftware_database, commission_rep_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->update_batch_commission_rep_type: #{e}"
end
```

#### Using the update_batch_commission_rep_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_type_with_http_info(vbasoftware_database, commission_rep_type)

```ruby
begin
  # Create or Update Batch CommissionRepType
  data, status_code, headers = api_instance.update_batch_commission_rep_type_with_http_info(vbasoftware_database, commission_rep_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->update_batch_commission_rep_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rep_type** | [**Array&lt;CommissionRepType&gt;**](CommissionRepType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_type

> <CommissionRepTypeVBAResponse> update_commission_rep_type(vbasoftware_database, rep_type, commission_rep_type)

Update CommissionRepType

Updates a specific CommissionRepType.

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

api_instance = Vba::CommissionRepTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rep_type = 'rep_type_example' # String | Rep Type
commission_rep_type = Vba::CommissionRepType.new({rep_type: 'rep_type_example'}) # CommissionRepType | 

begin
  # Update CommissionRepType
  result = api_instance.update_commission_rep_type(vbasoftware_database, rep_type, commission_rep_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->update_commission_rep_type: #{e}"
end
```

#### Using the update_commission_rep_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepTypeVBAResponse>, Integer, Hash)> update_commission_rep_type_with_http_info(vbasoftware_database, rep_type, commission_rep_type)

```ruby
begin
  # Update CommissionRepType
  data, status_code, headers = api_instance.update_commission_rep_type_with_http_info(vbasoftware_database, rep_type, commission_rep_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepTypesApi->update_commission_rep_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rep_type** | **String** | Rep Type |  |
| **commission_rep_type** | [**CommissionRepType**](CommissionRepType.md) |  |  |

### Return type

[**CommissionRepTypeVBAResponse**](CommissionRepTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

