# Vba::CapitationTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_type**](CapitationTypesApi.md#create_capitation_type) | **POST** /capitation-types | Create CapitationType |
| [**delete_capitation_type**](CapitationTypesApi.md#delete_capitation_type) | **DELETE** /capitation-types/{capitationType} | Delete CapitationType |
| [**get_capitation_type**](CapitationTypesApi.md#get_capitation_type) | **GET** /capitation-types/{capitationType} | Get CapitationType |
| [**list_capitation_type**](CapitationTypesApi.md#list_capitation_type) | **GET** /capitation-types | List CapitationType |
| [**update_batch_capitation_type**](CapitationTypesApi.md#update_batch_capitation_type) | **PUT** /capitation-types-batch | Create or Update Batch CapitationType |
| [**update_capitation_type**](CapitationTypesApi.md#update_capitation_type) | **PUT** /capitation-types/{capitationType} | Update CapitationType |


## create_capitation_type

> <CapitationTypeVBAResponse> create_capitation_type(vbasoftware_database, capitation_type)

Create CapitationType

Creates a new CapitationType

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_type = Vba::CapitationType.new({capitation_type: 'capitation_type_example'}) # CapitationType | 

begin
  # Create CapitationType
  result = api_instance.create_capitation_type(vbasoftware_database, capitation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->create_capitation_type: #{e}"
end
```

#### Using the create_capitation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTypeVBAResponse>, Integer, Hash)> create_capitation_type_with_http_info(vbasoftware_database, capitation_type)

```ruby
begin
  # Create CapitationType
  data, status_code, headers = api_instance.create_capitation_type_with_http_info(vbasoftware_database, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->create_capitation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_type** | [**CapitationType**](CapitationType.md) |  |  |

### Return type

[**CapitationTypeVBAResponse**](CapitationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_type

> delete_capitation_type(vbasoftware_database, capitation_type)

Delete CapitationType

Deletes an CapitationType

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_type = 'capitation_type_example' # String | Capitation Type

begin
  # Delete CapitationType
  api_instance.delete_capitation_type(vbasoftware_database, capitation_type)
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->delete_capitation_type: #{e}"
end
```

#### Using the delete_capitation_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_type_with_http_info(vbasoftware_database, capitation_type)

```ruby
begin
  # Delete CapitationType
  data, status_code, headers = api_instance.delete_capitation_type_with_http_info(vbasoftware_database, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->delete_capitation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_type** | **String** | Capitation Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_type

> <CapitationTypeVBAResponse> get_capitation_type(vbasoftware_database, capitation_type)

Get CapitationType

Gets CapitationType

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_type = 'capitation_type_example' # String | Capitation Type

begin
  # Get CapitationType
  result = api_instance.get_capitation_type(vbasoftware_database, capitation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->get_capitation_type: #{e}"
end
```

#### Using the get_capitation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTypeVBAResponse>, Integer, Hash)> get_capitation_type_with_http_info(vbasoftware_database, capitation_type)

```ruby
begin
  # Get CapitationType
  data, status_code, headers = api_instance.get_capitation_type_with_http_info(vbasoftware_database, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->get_capitation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_type** | **String** | Capitation Type |  |

### Return type

[**CapitationTypeVBAResponse**](CapitationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_type

> <CapitationTypeListVBAResponse> list_capitation_type(vbasoftware_database, opts)

List CapitationType

Lists all CapitationType

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationType
  result = api_instance.list_capitation_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->list_capitation_type: #{e}"
end
```

#### Using the list_capitation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTypeListVBAResponse>, Integer, Hash)> list_capitation_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationType
  data, status_code, headers = api_instance.list_capitation_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->list_capitation_type_with_http_info: #{e}"
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

[**CapitationTypeListVBAResponse**](CapitationTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_type

> <MultiCodeResponseListVBAResponse> update_batch_capitation_type(vbasoftware_database, capitation_type)

Create or Update Batch CapitationType

Create or Update multiple CapitationType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_type = [Vba::CapitationType.new({capitation_type: 'capitation_type_example'})] # Array<CapitationType> | 

begin
  # Create or Update Batch CapitationType
  result = api_instance.update_batch_capitation_type(vbasoftware_database, capitation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->update_batch_capitation_type: #{e}"
end
```

#### Using the update_batch_capitation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_type_with_http_info(vbasoftware_database, capitation_type)

```ruby
begin
  # Create or Update Batch CapitationType
  data, status_code, headers = api_instance.update_batch_capitation_type_with_http_info(vbasoftware_database, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->update_batch_capitation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_type** | [**Array&lt;CapitationType&gt;**](CapitationType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_type

> <CapitationTypeVBAResponse> update_capitation_type(vbasoftware_database, capitation_type, capitation_type2)

Update CapitationType

Updates a specific CapitationType.

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

api_instance = Vba::CapitationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_type = 'capitation_type_example' # String | Capitation Type
capitation_type2 = Vba::CapitationType.new({capitation_type: 'capitation_type_example'}) # CapitationType | 

begin
  # Update CapitationType
  result = api_instance.update_capitation_type(vbasoftware_database, capitation_type, capitation_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->update_capitation_type: #{e}"
end
```

#### Using the update_capitation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTypeVBAResponse>, Integer, Hash)> update_capitation_type_with_http_info(vbasoftware_database, capitation_type, capitation_type2)

```ruby
begin
  # Update CapitationType
  data, status_code, headers = api_instance.update_capitation_type_with_http_info(vbasoftware_database, capitation_type, capitation_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTypesApi->update_capitation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_type** | **String** | Capitation Type |  |
| **capitation_type2** | [**CapitationType**](CapitationType.md) |  |  |

### Return type

[**CapitationTypeVBAResponse**](CapitationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

