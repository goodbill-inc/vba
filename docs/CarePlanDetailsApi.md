# Vba::CarePlanDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_detail**](CarePlanDetailsApi.md#create_care_plan_detail) | **POST** /care-plans/{carePlanKey}/details | Create CarePlanDetail |
| [**delete_care_plan_detail**](CarePlanDetailsApi.md#delete_care_plan_detail) | **DELETE** /care-plans/{carePlanKey}/details/{carePlanDetailKey} | Delete CarePlanDetail |
| [**get_care_plan_detail**](CarePlanDetailsApi.md#get_care_plan_detail) | **GET** /care-plans/{carePlanKey}/details/{carePlanDetailKey} | Get CarePlanDetail |
| [**list_care_plan_detail**](CarePlanDetailsApi.md#list_care_plan_detail) | **GET** /care-plans/{carePlanKey}/details | List CarePlanDetail |
| [**update_batch_care_plan_detail**](CarePlanDetailsApi.md#update_batch_care_plan_detail) | **PUT** /care-plans/{carePlanKey}/details-batch | Create or Update Batch CarePlanDetail |
| [**update_care_plan_detail**](CarePlanDetailsApi.md#update_care_plan_detail) | **PUT** /care-plans/{carePlanKey}/details/{carePlanDetailKey} | Update CarePlanDetail |


## create_care_plan_detail

> <CarePlanDetailVBAResponse> create_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail)

Create CarePlanDetail

Creates a new CarePlanDetail

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_detail = Vba::CarePlanDetail.new({care_plan_key: 37, care_plan_detail_key: 37, care_plan_detail_parent: 37, care_plan_detail_seq: 37}) # CarePlanDetail | 

begin
  # Create CarePlanDetail
  result = api_instance.create_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->create_care_plan_detail: #{e}"
end
```

#### Using the create_care_plan_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanDetailVBAResponse>, Integer, Hash)> create_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail)

```ruby
begin
  # Create CarePlanDetail
  data, status_code, headers = api_instance.create_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->create_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_detail** | [**CarePlanDetail**](CarePlanDetail.md) |  |  |

### Return type

[**CarePlanDetailVBAResponse**](CarePlanDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_detail

> delete_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key)

Delete CarePlanDetail

Deletes an CarePlanDetail

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_detail_key = 56 # Integer | CarePlanDetail Key

begin
  # Delete CarePlanDetail
  api_instance.delete_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->delete_care_plan_detail: #{e}"
end
```

#### Using the delete_care_plan_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key)

```ruby
begin
  # Delete CarePlanDetail
  data, status_code, headers = api_instance.delete_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->delete_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_detail_key** | **Integer** | CarePlanDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_detail

> <CarePlanDetailVBAResponse> get_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key)

Get CarePlanDetail

Gets CarePlanDetail

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_detail_key = 56 # Integer | CarePlanDetail Key

begin
  # Get CarePlanDetail
  result = api_instance.get_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->get_care_plan_detail: #{e}"
end
```

#### Using the get_care_plan_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanDetailVBAResponse>, Integer, Hash)> get_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key)

```ruby
begin
  # Get CarePlanDetail
  data, status_code, headers = api_instance.get_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->get_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_detail_key** | **Integer** | CarePlanDetail Key |  |

### Return type

[**CarePlanDetailVBAResponse**](CarePlanDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_detail

> <CarePlanDetailListVBAResponse> list_care_plan_detail(vbasoftware_database, care_plan_key, opts)

List CarePlanDetail

Lists all CarePlanDetail for the given carePlanKey

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanDetail
  result = api_instance.list_care_plan_detail(vbasoftware_database, care_plan_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->list_care_plan_detail: #{e}"
end
```

#### Using the list_care_plan_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanDetailListVBAResponse>, Integer, Hash)> list_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, opts)

```ruby
begin
  # List CarePlanDetail
  data, status_code, headers = api_instance.list_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->list_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanDetailListVBAResponse**](CarePlanDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_detail

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail)

Create or Update Batch CarePlanDetail

Create or Update multiple CarePlanDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_detail = [Vba::CarePlanDetail.new({care_plan_key: 37, care_plan_detail_key: 37, care_plan_detail_parent: 37, care_plan_detail_seq: 37})] # Array<CarePlanDetail> | 

begin
  # Create or Update Batch CarePlanDetail
  result = api_instance.update_batch_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->update_batch_care_plan_detail: #{e}"
end
```

#### Using the update_batch_care_plan_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail)

```ruby
begin
  # Create or Update Batch CarePlanDetail
  data, status_code, headers = api_instance.update_batch_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->update_batch_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_detail** | [**Array&lt;CarePlanDetail&gt;**](CarePlanDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_detail

> <CarePlanDetailVBAResponse> update_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key, care_plan_detail)

Update CarePlanDetail

Updates a specific CarePlanDetail.

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

api_instance = Vba::CarePlanDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_detail_key = 56 # Integer | CarePlanDetail Key
care_plan_detail = Vba::CarePlanDetail.new({care_plan_key: 37, care_plan_detail_key: 37, care_plan_detail_parent: 37, care_plan_detail_seq: 37}) # CarePlanDetail | 

begin
  # Update CarePlanDetail
  result = api_instance.update_care_plan_detail(vbasoftware_database, care_plan_key, care_plan_detail_key, care_plan_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->update_care_plan_detail: #{e}"
end
```

#### Using the update_care_plan_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanDetailVBAResponse>, Integer, Hash)> update_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key, care_plan_detail)

```ruby
begin
  # Update CarePlanDetail
  data, status_code, headers = api_instance.update_care_plan_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_detail_key, care_plan_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanDetailsApi->update_care_plan_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_detail_key** | **Integer** | CarePlanDetail Key |  |
| **care_plan_detail** | [**CarePlanDetail**](CarePlanDetail.md) |  |  |

### Return type

[**CarePlanDetailVBAResponse**](CarePlanDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

