# Vba::CareCaseDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_detail**](CareCaseDetailsApi.md#create_care_case_detail) | **POST** /cases/{caseKey}/details | Create CareCaseDetail |
| [**delete_care_case_detail**](CareCaseDetailsApi.md#delete_care_case_detail) | **DELETE** /cases/{caseKey}/details/{caseDetailKey} | Delete CareCaseDetail |
| [**get_care_case_detail**](CareCaseDetailsApi.md#get_care_case_detail) | **GET** /cases/{caseKey}/details/{caseDetailKey} | Get CareCaseDetail |
| [**list_care_case_detail**](CareCaseDetailsApi.md#list_care_case_detail) | **GET** /cases/{caseKey}/details | List CareCaseDetail |
| [**update_batch_care_case_detail**](CareCaseDetailsApi.md#update_batch_care_case_detail) | **PUT** /cases/{caseKey}/details-batch | Create or Update Batch CareCaseDetail |
| [**update_care_case_detail**](CareCaseDetailsApi.md#update_care_case_detail) | **PUT** /cases/{caseKey}/details/{caseDetailKey} | Update CareCaseDetail |


## create_care_case_detail

> <CareCaseDetailVBAResponse> create_care_case_detail(vbasoftware_database, case_key, care_case_detail)

Create CareCaseDetail

Creates a new CareCaseDetail

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_detail = Vba::CareCaseDetail.new({case_key: 37, case_detail_key: 37, case_detail_parent: 37, case_detail_seq: 37, result_selected: false}) # CareCaseDetail | 

begin
  # Create CareCaseDetail
  result = api_instance.create_care_case_detail(vbasoftware_database, case_key, care_case_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->create_care_case_detail: #{e}"
end
```

#### Using the create_care_case_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDetailVBAResponse>, Integer, Hash)> create_care_case_detail_with_http_info(vbasoftware_database, case_key, care_case_detail)

```ruby
begin
  # Create CareCaseDetail
  data, status_code, headers = api_instance.create_care_case_detail_with_http_info(vbasoftware_database, case_key, care_case_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->create_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_detail** | [**CareCaseDetail**](CareCaseDetail.md) |  |  |

### Return type

[**CareCaseDetailVBAResponse**](CareCaseDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_detail

> delete_care_case_detail(vbasoftware_database, case_key, case_detail_key)

Delete CareCaseDetail

Deletes an CareCaseDetail

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
case_detail_key = 56 # Integer | CaseDetail Key

begin
  # Delete CareCaseDetail
  api_instance.delete_care_case_detail(vbasoftware_database, case_key, case_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->delete_care_case_detail: #{e}"
end
```

#### Using the delete_care_case_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key)

```ruby
begin
  # Delete CareCaseDetail
  data, status_code, headers = api_instance.delete_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->delete_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **case_detail_key** | **Integer** | CaseDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_detail

> <CareCaseDetailVBAResponse> get_care_case_detail(vbasoftware_database, case_key, case_detail_key)

Get CareCaseDetail

Gets CareCaseDetail

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
case_detail_key = 56 # Integer | CaseDetail Key

begin
  # Get CareCaseDetail
  result = api_instance.get_care_case_detail(vbasoftware_database, case_key, case_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->get_care_case_detail: #{e}"
end
```

#### Using the get_care_case_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDetailVBAResponse>, Integer, Hash)> get_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key)

```ruby
begin
  # Get CareCaseDetail
  data, status_code, headers = api_instance.get_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->get_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **case_detail_key** | **Integer** | CaseDetail Key |  |

### Return type

[**CareCaseDetailVBAResponse**](CareCaseDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_detail

> <CareCaseDetailListVBAResponse> list_care_case_detail(vbasoftware_database, case_key, opts)

List CareCaseDetail

Lists all CareCaseDetail for the given caseKey

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseDetail
  result = api_instance.list_care_case_detail(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->list_care_case_detail: #{e}"
end
```

#### Using the list_care_case_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDetailListVBAResponse>, Integer, Hash)> list_care_case_detail_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseDetail
  data, status_code, headers = api_instance.list_care_case_detail_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->list_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseDetailListVBAResponse**](CareCaseDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_detail

> <MultiCodeResponseListVBAResponse> update_batch_care_case_detail(vbasoftware_database, case_key, care_case_detail)

Create or Update Batch CareCaseDetail

Create or Update multiple CareCaseDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_detail = [Vba::CareCaseDetail.new({case_key: 37, case_detail_key: 37, case_detail_parent: 37, case_detail_seq: 37, result_selected: false})] # Array<CareCaseDetail> | 

begin
  # Create or Update Batch CareCaseDetail
  result = api_instance.update_batch_care_case_detail(vbasoftware_database, case_key, care_case_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->update_batch_care_case_detail: #{e}"
end
```

#### Using the update_batch_care_case_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_detail_with_http_info(vbasoftware_database, case_key, care_case_detail)

```ruby
begin
  # Create or Update Batch CareCaseDetail
  data, status_code, headers = api_instance.update_batch_care_case_detail_with_http_info(vbasoftware_database, case_key, care_case_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->update_batch_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_detail** | [**Array&lt;CareCaseDetail&gt;**](CareCaseDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_detail

> <CareCaseDetailVBAResponse> update_care_case_detail(vbasoftware_database, case_key, case_detail_key, care_case_detail)

Update CareCaseDetail

Updates a specific CareCaseDetail.

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

api_instance = Vba::CareCaseDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
case_detail_key = 56 # Integer | CaseDetail Key
care_case_detail = Vba::CareCaseDetail.new({case_key: 37, case_detail_key: 37, case_detail_parent: 37, case_detail_seq: 37, result_selected: false}) # CareCaseDetail | 

begin
  # Update CareCaseDetail
  result = api_instance.update_care_case_detail(vbasoftware_database, case_key, case_detail_key, care_case_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->update_care_case_detail: #{e}"
end
```

#### Using the update_care_case_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDetailVBAResponse>, Integer, Hash)> update_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key, care_case_detail)

```ruby
begin
  # Update CareCaseDetail
  data, status_code, headers = api_instance.update_care_case_detail_with_http_info(vbasoftware_database, case_key, case_detail_key, care_case_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDetailsApi->update_care_case_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **case_detail_key** | **Integer** | CaseDetail Key |  |
| **care_case_detail** | [**CareCaseDetail**](CareCaseDetail.md) |  |  |

### Return type

[**CareCaseDetailVBAResponse**](CareCaseDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

