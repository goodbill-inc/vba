# Vba::CarePlanScoreDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_score_detail**](CarePlanScoreDetailsApi.md#create_care_plan_score_detail) | **POST** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details | Create CarePlanScoreDetail |
| [**delete_care_plan_score_detail**](CarePlanScoreDetailsApi.md#delete_care_plan_score_detail) | **DELETE** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details/{carePlanScoreDetailKey} | Delete CarePlanScoreDetail |
| [**get_care_plan_score_detail**](CarePlanScoreDetailsApi.md#get_care_plan_score_detail) | **GET** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details/{carePlanScoreDetailKey} | Get CarePlanScoreDetail |
| [**list_care_plan_score_detail**](CarePlanScoreDetailsApi.md#list_care_plan_score_detail) | **GET** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details | List CarePlanScoreDetail |
| [**update_batch_care_plan_score_detail**](CarePlanScoreDetailsApi.md#update_batch_care_plan_score_detail) | **PUT** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details-batch | Create or Update Batch CarePlanScoreDetail |
| [**update_care_plan_score_detail**](CarePlanScoreDetailsApi.md#update_care_plan_score_detail) | **PUT** /care-plans/{carePlanKey}/scores/{carePlanScoreKey}/details/{carePlanScoreDetailKey} | Update CarePlanScoreDetail |


## create_care_plan_score_detail

> <CarePlanScoreDetailVBAResponse> create_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)

Create CarePlanScoreDetail

Creates a new CarePlanScoreDetail

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
care_plan_score_detail = Vba::CarePlanScoreDetail.new({care_plan_score_detail_key: 37, care_plan_score_key: 37}) # CarePlanScoreDetail | 

begin
  # Create CarePlanScoreDetail
  result = api_instance.create_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->create_care_plan_score_detail: #{e}"
end
```

#### Using the create_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanScoreDetailVBAResponse>, Integer, Hash)> create_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)

```ruby
begin
  # Create CarePlanScoreDetail
  data, status_code, headers = api_instance.create_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanScoreDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->create_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **care_plan_score_detail** | [**CarePlanScoreDetail**](CarePlanScoreDetail.md) |  |  |

### Return type

[**CarePlanScoreDetailVBAResponse**](CarePlanScoreDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_score_detail

> delete_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)

Delete CarePlanScoreDetail

Deletes an CarePlanScoreDetail

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
care_plan_score_detail_key = 56 # Integer | CarePlanScoreDetail Key

begin
  # Delete CarePlanScoreDetail
  api_instance.delete_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->delete_care_plan_score_detail: #{e}"
end
```

#### Using the delete_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)

```ruby
begin
  # Delete CarePlanScoreDetail
  data, status_code, headers = api_instance.delete_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->delete_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **care_plan_score_detail_key** | **Integer** | CarePlanScoreDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_score_detail

> <CarePlanScoreDetailVBAResponse> get_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)

Get CarePlanScoreDetail

Gets CarePlanScoreDetail

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
care_plan_score_detail_key = 56 # Integer | CarePlanScoreDetail Key

begin
  # Get CarePlanScoreDetail
  result = api_instance.get_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->get_care_plan_score_detail: #{e}"
end
```

#### Using the get_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanScoreDetailVBAResponse>, Integer, Hash)> get_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)

```ruby
begin
  # Get CarePlanScoreDetail
  data, status_code, headers = api_instance.get_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanScoreDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->get_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **care_plan_score_detail_key** | **Integer** | CarePlanScoreDetail Key |  |

### Return type

[**CarePlanScoreDetailVBAResponse**](CarePlanScoreDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_score_detail

> <CarePlanScoreDetailListVBAResponse> list_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, opts)

List CarePlanScoreDetail

Lists all CarePlanScoreDetail for the given carePlanScoreKey

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanScoreDetail
  result = api_instance.list_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->list_care_plan_score_detail: #{e}"
end
```

#### Using the list_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanScoreDetailListVBAResponse>, Integer, Hash)> list_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, opts)

```ruby
begin
  # List CarePlanScoreDetail
  data, status_code, headers = api_instance.list_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanScoreDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->list_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanScoreDetailListVBAResponse**](CarePlanScoreDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_score_detail

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)

Create or Update Batch CarePlanScoreDetail

Create or Update multiple CarePlanScoreDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
care_plan_score_detail = [Vba::CarePlanScoreDetail.new({care_plan_score_detail_key: 37, care_plan_score_key: 37})] # Array<CarePlanScoreDetail> | 

begin
  # Create or Update Batch CarePlanScoreDetail
  result = api_instance.update_batch_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->update_batch_care_plan_score_detail: #{e}"
end
```

#### Using the update_batch_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)

```ruby
begin
  # Create or Update Batch CarePlanScoreDetail
  data, status_code, headers = api_instance.update_batch_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->update_batch_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **care_plan_score_detail** | [**Array&lt;CarePlanScoreDetail&gt;**](CarePlanScoreDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_score_detail

> <CarePlanScoreDetailVBAResponse> update_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key, care_plan_score_detail)

Update CarePlanScoreDetail

Updates a specific CarePlanScoreDetail.

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

api_instance = Vba::CarePlanScoreDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_score_key = 56 # Integer | CarePlanScore Key
care_plan_score_detail_key = 56 # Integer | CarePlanScoreDetail Key
care_plan_score_detail = Vba::CarePlanScoreDetail.new({care_plan_score_detail_key: 37, care_plan_score_key: 37}) # CarePlanScoreDetail | 

begin
  # Update CarePlanScoreDetail
  result = api_instance.update_care_plan_score_detail(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key, care_plan_score_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->update_care_plan_score_detail: #{e}"
end
```

#### Using the update_care_plan_score_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanScoreDetailVBAResponse>, Integer, Hash)> update_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key, care_plan_score_detail)

```ruby
begin
  # Update CarePlanScoreDetail
  data, status_code, headers = api_instance.update_care_plan_score_detail_with_http_info(vbasoftware_database, care_plan_key, care_plan_score_key, care_plan_score_detail_key, care_plan_score_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanScoreDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanScoreDetailsApi->update_care_plan_score_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_score_key** | **Integer** | CarePlanScore Key |  |
| **care_plan_score_detail_key** | **Integer** | CarePlanScoreDetail Key |  |
| **care_plan_score_detail** | [**CarePlanScoreDetail**](CarePlanScoreDetail.md) |  |  |

### Return type

[**CarePlanScoreDetailVBAResponse**](CarePlanScoreDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

