# Vba::PremiumRatePaceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#create_prem_rate_pace_type) | **POST** /premium-rate-pace-types | Create PremRatePaceType |
| [**delete_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#delete_prem_rate_pace_type) | **DELETE** /premium-rate-pace-types/{ratePaceType} | Delete PremRatePaceType |
| [**get_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#get_prem_rate_pace_type) | **GET** /premium-rate-pace-types/{ratePaceType} | Get PremRatePaceType |
| [**list_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#list_prem_rate_pace_type) | **GET** /premium-rate-pace-types | List PremRatePaceType |
| [**update_batch_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#update_batch_prem_rate_pace_type) | **PUT** /premium-rate-pace-types-batch | Create or Update Batch PremRatePaceType |
| [**update_prem_rate_pace_type**](PremiumRatePaceTypesApi.md#update_prem_rate_pace_type) | **PUT** /premium-rate-pace-types/{ratePaceType} | Update PremRatePaceType |


## create_prem_rate_pace_type

> <PremRatePaceTypeVBAResponse> create_prem_rate_pace_type(vbasoftware_database, prem_rate_pace_type)

Create PremRatePaceType

Creates a new PremRatePaceType

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_pace_type = Vba::PremRatePaceType.new({rate_pace_type: 'rate_pace_type_example'}) # PremRatePaceType | 

begin
  # Create PremRatePaceType
  result = api_instance.create_prem_rate_pace_type(vbasoftware_database, prem_rate_pace_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->create_prem_rate_pace_type: #{e}"
end
```

#### Using the create_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceTypeVBAResponse>, Integer, Hash)> create_prem_rate_pace_type_with_http_info(vbasoftware_database, prem_rate_pace_type)

```ruby
begin
  # Create PremRatePaceType
  data, status_code, headers = api_instance.create_prem_rate_pace_type_with_http_info(vbasoftware_database, prem_rate_pace_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->create_prem_rate_pace_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_pace_type** | [**PremRatePaceType**](PremRatePaceType.md) |  |  |

### Return type

[**PremRatePaceTypeVBAResponse**](PremRatePaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_pace_type

> delete_prem_rate_pace_type(vbasoftware_database, rate_pace_type)

Delete PremRatePaceType

Deletes an PremRatePaceType

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace_type = 'rate_pace_type_example' # String | Rate Pace Type

begin
  # Delete PremRatePaceType
  api_instance.delete_prem_rate_pace_type(vbasoftware_database, rate_pace_type)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->delete_prem_rate_pace_type: #{e}"
end
```

#### Using the delete_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type)

```ruby
begin
  # Delete PremRatePaceType
  data, status_code, headers = api_instance.delete_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->delete_prem_rate_pace_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace_type** | **String** | Rate Pace Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_pace_type

> <PremRatePaceTypeVBAResponse> get_prem_rate_pace_type(vbasoftware_database, rate_pace_type)

Get PremRatePaceType

Gets PremRatePaceType

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace_type = 'rate_pace_type_example' # String | Rate Pace Type

begin
  # Get PremRatePaceType
  result = api_instance.get_prem_rate_pace_type(vbasoftware_database, rate_pace_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->get_prem_rate_pace_type: #{e}"
end
```

#### Using the get_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceTypeVBAResponse>, Integer, Hash)> get_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type)

```ruby
begin
  # Get PremRatePaceType
  data, status_code, headers = api_instance.get_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->get_prem_rate_pace_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace_type** | **String** | Rate Pace Type |  |

### Return type

[**PremRatePaceTypeVBAResponse**](PremRatePaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_pace_type

> <PremRatePaceTypeListVBAResponse> list_prem_rate_pace_type(vbasoftware_database, opts)

List PremRatePaceType

Lists all PremRatePaceType

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRatePaceType
  result = api_instance.list_prem_rate_pace_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->list_prem_rate_pace_type: #{e}"
end
```

#### Using the list_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceTypeListVBAResponse>, Integer, Hash)> list_prem_rate_pace_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRatePaceType
  data, status_code, headers = api_instance.list_prem_rate_pace_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->list_prem_rate_pace_type_with_http_info: #{e}"
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

[**PremRatePaceTypeListVBAResponse**](PremRatePaceTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_pace_type

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_pace_type(vbasoftware_database, prem_rate_pace_type)

Create or Update Batch PremRatePaceType

Create or Update multiple PremRatePaceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_pace_type = [Vba::PremRatePaceType.new({rate_pace_type: 'rate_pace_type_example'})] # Array<PremRatePaceType> | 

begin
  # Create or Update Batch PremRatePaceType
  result = api_instance.update_batch_prem_rate_pace_type(vbasoftware_database, prem_rate_pace_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->update_batch_prem_rate_pace_type: #{e}"
end
```

#### Using the update_batch_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_pace_type_with_http_info(vbasoftware_database, prem_rate_pace_type)

```ruby
begin
  # Create or Update Batch PremRatePaceType
  data, status_code, headers = api_instance.update_batch_prem_rate_pace_type_with_http_info(vbasoftware_database, prem_rate_pace_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->update_batch_prem_rate_pace_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_pace_type** | [**Array&lt;PremRatePaceType&gt;**](PremRatePaceType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_pace_type

> <PremRatePaceTypeVBAResponse> update_prem_rate_pace_type(vbasoftware_database, rate_pace_type, prem_rate_pace_type)

Update PremRatePaceType

Updates a specific PremRatePaceType.

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

api_instance = Vba::PremiumRatePaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace_type = 'rate_pace_type_example' # String | Rate Pace Type
prem_rate_pace_type = Vba::PremRatePaceType.new({rate_pace_type: 'rate_pace_type_example'}) # PremRatePaceType | 

begin
  # Update PremRatePaceType
  result = api_instance.update_prem_rate_pace_type(vbasoftware_database, rate_pace_type, prem_rate_pace_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->update_prem_rate_pace_type: #{e}"
end
```

#### Using the update_prem_rate_pace_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceTypeVBAResponse>, Integer, Hash)> update_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type, prem_rate_pace_type)

```ruby
begin
  # Update PremRatePaceType
  data, status_code, headers = api_instance.update_prem_rate_pace_type_with_http_info(vbasoftware_database, rate_pace_type, prem_rate_pace_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePaceTypesApi->update_prem_rate_pace_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace_type** | **String** | Rate Pace Type |  |
| **prem_rate_pace_type** | [**PremRatePaceType**](PremRatePaceType.md) |  |  |

### Return type

[**PremRatePaceTypeVBAResponse**](PremRatePaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

