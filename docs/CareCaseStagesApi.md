# Vba::CareCaseStagesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_stage**](CareCaseStagesApi.md#create_care_case_stage) | **POST** /care-case-stages | Create CareCaseStage |
| [**delete_care_case_stage**](CareCaseStagesApi.md#delete_care_case_stage) | **DELETE** /care-case-stages/{careCaseStageKey} | Delete CareCaseStage |
| [**get_care_case_stage**](CareCaseStagesApi.md#get_care_case_stage) | **GET** /care-case-stages/{careCaseStageKey} | Get CareCaseStage |
| [**list_care_case_stage**](CareCaseStagesApi.md#list_care_case_stage) | **GET** /care-case-stages | List CareCaseStage |
| [**update_batch_care_case_stage**](CareCaseStagesApi.md#update_batch_care_case_stage) | **PUT** /care-case-stages-batch | Create or Update Batch CareCaseStage |
| [**update_care_case_stage**](CareCaseStagesApi.md#update_care_case_stage) | **PUT** /care-case-stages/{careCaseStageKey} | Update CareCaseStage |


## create_care_case_stage

> <CareCaseStageVBAResponse> create_care_case_stage(vbasoftware_database, care_case_stage)

Create CareCaseStage

Creates a new CareCaseStage

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_stage = Vba::CareCaseStage.new({care_case_stage_key: 37}) # CareCaseStage | 

begin
  # Create CareCaseStage
  result = api_instance.create_care_case_stage(vbasoftware_database, care_case_stage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->create_care_case_stage: #{e}"
end
```

#### Using the create_care_case_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseStageVBAResponse>, Integer, Hash)> create_care_case_stage_with_http_info(vbasoftware_database, care_case_stage)

```ruby
begin
  # Create CareCaseStage
  data, status_code, headers = api_instance.create_care_case_stage_with_http_info(vbasoftware_database, care_case_stage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseStageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->create_care_case_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_stage** | [**CareCaseStage**](CareCaseStage.md) |  |  |

### Return type

[**CareCaseStageVBAResponse**](CareCaseStageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_stage

> delete_care_case_stage(vbasoftware_database, care_case_stage_key)

Delete CareCaseStage

Deletes an CareCaseStage

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_stage_key = 56 # Integer | CareCaseStage Key

begin
  # Delete CareCaseStage
  api_instance.delete_care_case_stage(vbasoftware_database, care_case_stage_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->delete_care_case_stage: #{e}"
end
```

#### Using the delete_care_case_stage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key)

```ruby
begin
  # Delete CareCaseStage
  data, status_code, headers = api_instance.delete_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->delete_care_case_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_stage_key** | **Integer** | CareCaseStage Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_stage

> <CareCaseStageVBAResponse> get_care_case_stage(vbasoftware_database, care_case_stage_key)

Get CareCaseStage

Gets CareCaseStage

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_stage_key = 56 # Integer | CareCaseStage Key

begin
  # Get CareCaseStage
  result = api_instance.get_care_case_stage(vbasoftware_database, care_case_stage_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->get_care_case_stage: #{e}"
end
```

#### Using the get_care_case_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseStageVBAResponse>, Integer, Hash)> get_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key)

```ruby
begin
  # Get CareCaseStage
  data, status_code, headers = api_instance.get_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseStageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->get_care_case_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_stage_key** | **Integer** | CareCaseStage Key |  |

### Return type

[**CareCaseStageVBAResponse**](CareCaseStageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_stage

> <CareCaseStageListVBAResponse> list_care_case_stage(vbasoftware_database, opts)

List CareCaseStage

Lists all CareCaseStage

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseStage
  result = api_instance.list_care_case_stage(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->list_care_case_stage: #{e}"
end
```

#### Using the list_care_case_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseStageListVBAResponse>, Integer, Hash)> list_care_case_stage_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseStage
  data, status_code, headers = api_instance.list_care_case_stage_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseStageListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->list_care_case_stage_with_http_info: #{e}"
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

[**CareCaseStageListVBAResponse**](CareCaseStageListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_stage

> <MultiCodeResponseListVBAResponse> update_batch_care_case_stage(vbasoftware_database, care_case_stage)

Create or Update Batch CareCaseStage

Create or Update multiple CareCaseStage at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_stage = [Vba::CareCaseStage.new({care_case_stage_key: 37})] # Array<CareCaseStage> | 

begin
  # Create or Update Batch CareCaseStage
  result = api_instance.update_batch_care_case_stage(vbasoftware_database, care_case_stage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->update_batch_care_case_stage: #{e}"
end
```

#### Using the update_batch_care_case_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_stage_with_http_info(vbasoftware_database, care_case_stage)

```ruby
begin
  # Create or Update Batch CareCaseStage
  data, status_code, headers = api_instance.update_batch_care_case_stage_with_http_info(vbasoftware_database, care_case_stage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->update_batch_care_case_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_stage** | [**Array&lt;CareCaseStage&gt;**](CareCaseStage.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_stage

> <CareCaseStageVBAResponse> update_care_case_stage(vbasoftware_database, care_case_stage_key, care_case_stage)

Update CareCaseStage

Updates a specific CareCaseStage.

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

api_instance = Vba::CareCaseStagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_stage_key = 56 # Integer | CareCaseStage Key
care_case_stage = Vba::CareCaseStage.new({care_case_stage_key: 37}) # CareCaseStage | 

begin
  # Update CareCaseStage
  result = api_instance.update_care_case_stage(vbasoftware_database, care_case_stage_key, care_case_stage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->update_care_case_stage: #{e}"
end
```

#### Using the update_care_case_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseStageVBAResponse>, Integer, Hash)> update_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key, care_case_stage)

```ruby
begin
  # Update CareCaseStage
  data, status_code, headers = api_instance.update_care_case_stage_with_http_info(vbasoftware_database, care_case_stage_key, care_case_stage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseStageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseStagesApi->update_care_case_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_stage_key** | **Integer** | CareCaseStage Key |  |
| **care_case_stage** | [**CareCaseStage**](CareCaseStage.md) |  |  |

### Return type

[**CareCaseStageVBAResponse**](CareCaseStageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

