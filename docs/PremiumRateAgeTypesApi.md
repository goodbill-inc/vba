# Vba::PremiumRateAgeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_age_type**](PremiumRateAgeTypesApi.md#create_prem_rate_age_type) | **POST** /premium-rate-age-types | Create PremRateAgeType |
| [**delete_prem_rate_age_type**](PremiumRateAgeTypesApi.md#delete_prem_rate_age_type) | **DELETE** /premium-rate-age-types/{ageType} | Delete PremRateAgeType |
| [**get_prem_rate_age_type**](PremiumRateAgeTypesApi.md#get_prem_rate_age_type) | **GET** /premium-rate-age-types/{ageType} | Get PremRateAgeType |
| [**list_prem_rate_age_type**](PremiumRateAgeTypesApi.md#list_prem_rate_age_type) | **GET** /premium-rate-age-types | List PremRateAgeType |
| [**update_batch_prem_rate_age_type**](PremiumRateAgeTypesApi.md#update_batch_prem_rate_age_type) | **PUT** /premium-rate-age-types-batch | Create or Update Batch PremRateAgeType |
| [**update_prem_rate_age_type**](PremiumRateAgeTypesApi.md#update_prem_rate_age_type) | **PUT** /premium-rate-age-types/{ageType} | Update PremRateAgeType |


## create_prem_rate_age_type

> <PremRateAgeTypeVBAResponse> create_prem_rate_age_type(vbasoftware_database, prem_rate_age_type)

Create PremRateAgeType

Creates a new PremRateAgeType

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_age_type = Vba::PremRateAgeType.new({age_type: 'age_type_example'}) # PremRateAgeType | 

begin
  # Create PremRateAgeType
  result = api_instance.create_prem_rate_age_type(vbasoftware_database, prem_rate_age_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->create_prem_rate_age_type: #{e}"
end
```

#### Using the create_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAgeTypeVBAResponse>, Integer, Hash)> create_prem_rate_age_type_with_http_info(vbasoftware_database, prem_rate_age_type)

```ruby
begin
  # Create PremRateAgeType
  data, status_code, headers = api_instance.create_prem_rate_age_type_with_http_info(vbasoftware_database, prem_rate_age_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAgeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->create_prem_rate_age_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_age_type** | [**PremRateAgeType**](PremRateAgeType.md) |  |  |

### Return type

[**PremRateAgeTypeVBAResponse**](PremRateAgeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_age_type

> delete_prem_rate_age_type(vbasoftware_database, age_type)

Delete PremRateAgeType

Deletes an PremRateAgeType

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
age_type = 'age_type_example' # String | Age Type

begin
  # Delete PremRateAgeType
  api_instance.delete_prem_rate_age_type(vbasoftware_database, age_type)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->delete_prem_rate_age_type: #{e}"
end
```

#### Using the delete_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_age_type_with_http_info(vbasoftware_database, age_type)

```ruby
begin
  # Delete PremRateAgeType
  data, status_code, headers = api_instance.delete_prem_rate_age_type_with_http_info(vbasoftware_database, age_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->delete_prem_rate_age_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **age_type** | **String** | Age Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_age_type

> <PremRateAgeTypeVBAResponse> get_prem_rate_age_type(vbasoftware_database, age_type)

Get PremRateAgeType

Gets PremRateAgeType

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
age_type = 'age_type_example' # String | Age Type

begin
  # Get PremRateAgeType
  result = api_instance.get_prem_rate_age_type(vbasoftware_database, age_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->get_prem_rate_age_type: #{e}"
end
```

#### Using the get_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAgeTypeVBAResponse>, Integer, Hash)> get_prem_rate_age_type_with_http_info(vbasoftware_database, age_type)

```ruby
begin
  # Get PremRateAgeType
  data, status_code, headers = api_instance.get_prem_rate_age_type_with_http_info(vbasoftware_database, age_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAgeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->get_prem_rate_age_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **age_type** | **String** | Age Type |  |

### Return type

[**PremRateAgeTypeVBAResponse**](PremRateAgeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_age_type

> <PremRateAgeTypeListVBAResponse> list_prem_rate_age_type(vbasoftware_database, opts)

List PremRateAgeType

Lists all PremRateAgeType

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateAgeType
  result = api_instance.list_prem_rate_age_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->list_prem_rate_age_type: #{e}"
end
```

#### Using the list_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAgeTypeListVBAResponse>, Integer, Hash)> list_prem_rate_age_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRateAgeType
  data, status_code, headers = api_instance.list_prem_rate_age_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAgeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->list_prem_rate_age_type_with_http_info: #{e}"
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

[**PremRateAgeTypeListVBAResponse**](PremRateAgeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_age_type

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_age_type(vbasoftware_database, prem_rate_age_type)

Create or Update Batch PremRateAgeType

Create or Update multiple PremRateAgeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_age_type = [Vba::PremRateAgeType.new({age_type: 'age_type_example'})] # Array<PremRateAgeType> | 

begin
  # Create or Update Batch PremRateAgeType
  result = api_instance.update_batch_prem_rate_age_type(vbasoftware_database, prem_rate_age_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->update_batch_prem_rate_age_type: #{e}"
end
```

#### Using the update_batch_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_age_type_with_http_info(vbasoftware_database, prem_rate_age_type)

```ruby
begin
  # Create or Update Batch PremRateAgeType
  data, status_code, headers = api_instance.update_batch_prem_rate_age_type_with_http_info(vbasoftware_database, prem_rate_age_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->update_batch_prem_rate_age_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_age_type** | [**Array&lt;PremRateAgeType&gt;**](PremRateAgeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_age_type

> <PremRateAgeTypeVBAResponse> update_prem_rate_age_type(vbasoftware_database, age_type, prem_rate_age_type)

Update PremRateAgeType

Updates a specific PremRateAgeType.

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

api_instance = Vba::PremiumRateAgeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
age_type = 'age_type_example' # String | Age Type
prem_rate_age_type = Vba::PremRateAgeType.new({age_type: 'age_type_example'}) # PremRateAgeType | 

begin
  # Update PremRateAgeType
  result = api_instance.update_prem_rate_age_type(vbasoftware_database, age_type, prem_rate_age_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->update_prem_rate_age_type: #{e}"
end
```

#### Using the update_prem_rate_age_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAgeTypeVBAResponse>, Integer, Hash)> update_prem_rate_age_type_with_http_info(vbasoftware_database, age_type, prem_rate_age_type)

```ruby
begin
  # Update PremRateAgeType
  data, status_code, headers = api_instance.update_prem_rate_age_type_with_http_info(vbasoftware_database, age_type, prem_rate_age_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAgeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAgeTypesApi->update_prem_rate_age_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **age_type** | **String** | Age Type |  |
| **prem_rate_age_type** | [**PremRateAgeType**](PremRateAgeType.md) |  |  |

### Return type

[**PremRateAgeTypeVBAResponse**](PremRateAgeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

