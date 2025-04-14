# Vba::FundingTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_type**](FundingTypesApi.md#create_funding_type) | **POST** /funding-types | Create FundingType |
| [**delete_funding_type**](FundingTypesApi.md#delete_funding_type) | **DELETE** /funding-types/{fundingType} | Delete FundingType |
| [**get_funding_type**](FundingTypesApi.md#get_funding_type) | **GET** /funding-types/{fundingType} | Get FundingType |
| [**list_funding_type**](FundingTypesApi.md#list_funding_type) | **GET** /funding-types | List FundingType |
| [**update_batch_funding_type**](FundingTypesApi.md#update_batch_funding_type) | **PUT** /funding-types-batch | Create or Update Batch FundingType |
| [**update_funding_type**](FundingTypesApi.md#update_funding_type) | **PUT** /funding-types/{fundingType} | Update FundingType |


## create_funding_type

> <FundingTypeVBAResponse> create_funding_type(vbasoftware_database, funding_type)

Create FundingType

Creates a new FundingType

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_type = Vba::FundingType.new({funding_type: 'funding_type_example'}) # FundingType | 

begin
  # Create FundingType
  result = api_instance.create_funding_type(vbasoftware_database, funding_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->create_funding_type: #{e}"
end
```

#### Using the create_funding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingTypeVBAResponse>, Integer, Hash)> create_funding_type_with_http_info(vbasoftware_database, funding_type)

```ruby
begin
  # Create FundingType
  data, status_code, headers = api_instance.create_funding_type_with_http_info(vbasoftware_database, funding_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->create_funding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_type** | [**FundingType**](FundingType.md) |  |  |

### Return type

[**FundingTypeVBAResponse**](FundingTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_type

> delete_funding_type(vbasoftware_database, funding_type)

Delete FundingType

Deletes an FundingType

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_type = 'funding_type_example' # String | Funding Type

begin
  # Delete FundingType
  api_instance.delete_funding_type(vbasoftware_database, funding_type)
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->delete_funding_type: #{e}"
end
```

#### Using the delete_funding_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_type_with_http_info(vbasoftware_database, funding_type)

```ruby
begin
  # Delete FundingType
  data, status_code, headers = api_instance.delete_funding_type_with_http_info(vbasoftware_database, funding_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->delete_funding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_type** | **String** | Funding Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_type

> <FundingTypeVBAResponse> get_funding_type(vbasoftware_database, funding_type)

Get FundingType

Gets FundingType

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_type = 'funding_type_example' # String | Funding Type

begin
  # Get FundingType
  result = api_instance.get_funding_type(vbasoftware_database, funding_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->get_funding_type: #{e}"
end
```

#### Using the get_funding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingTypeVBAResponse>, Integer, Hash)> get_funding_type_with_http_info(vbasoftware_database, funding_type)

```ruby
begin
  # Get FundingType
  data, status_code, headers = api_instance.get_funding_type_with_http_info(vbasoftware_database, funding_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->get_funding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_type** | **String** | Funding Type |  |

### Return type

[**FundingTypeVBAResponse**](FundingTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_type

> <FundingTypeListVBAResponse> list_funding_type(vbasoftware_database, opts)

List FundingType

Lists all FundingType

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingType
  result = api_instance.list_funding_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->list_funding_type: #{e}"
end
```

#### Using the list_funding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingTypeListVBAResponse>, Integer, Hash)> list_funding_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingType
  data, status_code, headers = api_instance.list_funding_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->list_funding_type_with_http_info: #{e}"
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

[**FundingTypeListVBAResponse**](FundingTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_type

> <MultiCodeResponseListVBAResponse> update_batch_funding_type(vbasoftware_database, funding_type)

Create or Update Batch FundingType

Create or Update multiple FundingType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_type = [Vba::FundingType.new({funding_type: 'funding_type_example'})] # Array<FundingType> | 

begin
  # Create or Update Batch FundingType
  result = api_instance.update_batch_funding_type(vbasoftware_database, funding_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->update_batch_funding_type: #{e}"
end
```

#### Using the update_batch_funding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_type_with_http_info(vbasoftware_database, funding_type)

```ruby
begin
  # Create or Update Batch FundingType
  data, status_code, headers = api_instance.update_batch_funding_type_with_http_info(vbasoftware_database, funding_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->update_batch_funding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_type** | [**Array&lt;FundingType&gt;**](FundingType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_type

> <FundingTypeVBAResponse> update_funding_type(vbasoftware_database, funding_type, funding_type2)

Update FundingType

Updates a specific FundingType.

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

api_instance = Vba::FundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_type = 'funding_type_example' # String | Funding Type
funding_type2 = Vba::FundingType.new({funding_type: 'funding_type_example'}) # FundingType | 

begin
  # Update FundingType
  result = api_instance.update_funding_type(vbasoftware_database, funding_type, funding_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->update_funding_type: #{e}"
end
```

#### Using the update_funding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingTypeVBAResponse>, Integer, Hash)> update_funding_type_with_http_info(vbasoftware_database, funding_type, funding_type2)

```ruby
begin
  # Update FundingType
  data, status_code, headers = api_instance.update_funding_type_with_http_info(vbasoftware_database, funding_type, funding_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingTypesApi->update_funding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_type** | **String** | Funding Type |  |
| **funding_type2** | [**FundingType**](FundingType.md) |  |  |

### Return type

[**FundingTypeVBAResponse**](FundingTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

