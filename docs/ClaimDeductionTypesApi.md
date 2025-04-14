# Vba::ClaimDeductionTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_deduction_type**](ClaimDeductionTypesApi.md#create_claim_deduction_type) | **POST** /claim-deduction-types | Create ClaimDeductionType |
| [**delete_claim_deduction_type**](ClaimDeductionTypesApi.md#delete_claim_deduction_type) | **DELETE** /claim-deduction-types/{deductionType} | Delete ClaimDeductionType |
| [**get_claim_deduction_type**](ClaimDeductionTypesApi.md#get_claim_deduction_type) | **GET** /claim-deduction-types/{deductionType} | Get ClaimDeductionType |
| [**list_claim_deduction_type**](ClaimDeductionTypesApi.md#list_claim_deduction_type) | **GET** /claim-deduction-types | List ClaimDeductionType |
| [**update_batch_claim_deduction_type**](ClaimDeductionTypesApi.md#update_batch_claim_deduction_type) | **PUT** /claim-deduction-types-batch | Create or Update Batch ClaimDeductionType |
| [**update_claim_deduction_type**](ClaimDeductionTypesApi.md#update_claim_deduction_type) | **PUT** /claim-deduction-types/{deductionType} | Update ClaimDeductionType |


## create_claim_deduction_type

> <ClaimDeductionTypeVBAResponse> create_claim_deduction_type(vbasoftware_database, claim_deduction_type)

Create ClaimDeductionType

Creates a new ClaimDeductionType

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_deduction_type = Vba::ClaimDeductionType.new({deduction_type: 'deduction_type_example', pre_gross: false, pre_tax: false}) # ClaimDeductionType | 

begin
  # Create ClaimDeductionType
  result = api_instance.create_claim_deduction_type(vbasoftware_database, claim_deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->create_claim_deduction_type: #{e}"
end
```

#### Using the create_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDeductionTypeVBAResponse>, Integer, Hash)> create_claim_deduction_type_with_http_info(vbasoftware_database, claim_deduction_type)

```ruby
begin
  # Create ClaimDeductionType
  data, status_code, headers = api_instance.create_claim_deduction_type_with_http_info(vbasoftware_database, claim_deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDeductionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->create_claim_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_deduction_type** | [**ClaimDeductionType**](ClaimDeductionType.md) |  |  |

### Return type

[**ClaimDeductionTypeVBAResponse**](ClaimDeductionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_deduction_type

> delete_claim_deduction_type(vbasoftware_database, deduction_type)

Delete ClaimDeductionType

Deletes an ClaimDeductionType

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deduction_type = 'deduction_type_example' # String | Deduction Type

begin
  # Delete ClaimDeductionType
  api_instance.delete_claim_deduction_type(vbasoftware_database, deduction_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->delete_claim_deduction_type: #{e}"
end
```

#### Using the delete_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type)

```ruby
begin
  # Delete ClaimDeductionType
  data, status_code, headers = api_instance.delete_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->delete_claim_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deduction_type** | **String** | Deduction Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_deduction_type

> <ClaimDeductionTypeVBAResponse> get_claim_deduction_type(vbasoftware_database, deduction_type)

Get ClaimDeductionType

Gets ClaimDeductionType

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deduction_type = 'deduction_type_example' # String | Deduction Type

begin
  # Get ClaimDeductionType
  result = api_instance.get_claim_deduction_type(vbasoftware_database, deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->get_claim_deduction_type: #{e}"
end
```

#### Using the get_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDeductionTypeVBAResponse>, Integer, Hash)> get_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type)

```ruby
begin
  # Get ClaimDeductionType
  data, status_code, headers = api_instance.get_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDeductionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->get_claim_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deduction_type** | **String** | Deduction Type |  |

### Return type

[**ClaimDeductionTypeVBAResponse**](ClaimDeductionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_deduction_type

> <ClaimDeductionTypeListVBAResponse> list_claim_deduction_type(vbasoftware_database, opts)

List ClaimDeductionType

Lists all ClaimDeductionType

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimDeductionType
  result = api_instance.list_claim_deduction_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->list_claim_deduction_type: #{e}"
end
```

#### Using the list_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDeductionTypeListVBAResponse>, Integer, Hash)> list_claim_deduction_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimDeductionType
  data, status_code, headers = api_instance.list_claim_deduction_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDeductionTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->list_claim_deduction_type_with_http_info: #{e}"
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

[**ClaimDeductionTypeListVBAResponse**](ClaimDeductionTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_deduction_type

> <MultiCodeResponseListVBAResponse> update_batch_claim_deduction_type(vbasoftware_database, claim_deduction_type)

Create or Update Batch ClaimDeductionType

Create or Update multiple ClaimDeductionType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_deduction_type = [Vba::ClaimDeductionType.new({deduction_type: 'deduction_type_example', pre_gross: false, pre_tax: false})] # Array<ClaimDeductionType> | 

begin
  # Create or Update Batch ClaimDeductionType
  result = api_instance.update_batch_claim_deduction_type(vbasoftware_database, claim_deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->update_batch_claim_deduction_type: #{e}"
end
```

#### Using the update_batch_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_deduction_type_with_http_info(vbasoftware_database, claim_deduction_type)

```ruby
begin
  # Create or Update Batch ClaimDeductionType
  data, status_code, headers = api_instance.update_batch_claim_deduction_type_with_http_info(vbasoftware_database, claim_deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->update_batch_claim_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_deduction_type** | [**Array&lt;ClaimDeductionType&gt;**](ClaimDeductionType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_deduction_type

> <ClaimDeductionTypeVBAResponse> update_claim_deduction_type(vbasoftware_database, deduction_type, claim_deduction_type)

Update ClaimDeductionType

Updates a specific ClaimDeductionType.

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

api_instance = Vba::ClaimDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deduction_type = 'deduction_type_example' # String | Deduction Type
claim_deduction_type = Vba::ClaimDeductionType.new({deduction_type: 'deduction_type_example', pre_gross: false, pre_tax: false}) # ClaimDeductionType | 

begin
  # Update ClaimDeductionType
  result = api_instance.update_claim_deduction_type(vbasoftware_database, deduction_type, claim_deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->update_claim_deduction_type: #{e}"
end
```

#### Using the update_claim_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDeductionTypeVBAResponse>, Integer, Hash)> update_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type, claim_deduction_type)

```ruby
begin
  # Update ClaimDeductionType
  data, status_code, headers = api_instance.update_claim_deduction_type_with_http_info(vbasoftware_database, deduction_type, claim_deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDeductionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDeductionTypesApi->update_claim_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deduction_type** | **String** | Deduction Type |  |
| **claim_deduction_type** | [**ClaimDeductionType**](ClaimDeductionType.md) |  |  |

### Return type

[**ClaimDeductionTypeVBAResponse**](ClaimDeductionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

