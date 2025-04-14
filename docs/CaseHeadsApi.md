# Vba::CaseHeadsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_head**](CaseHeadsApi.md#create_case_head) | **POST** /case-heads | Create CaseHead |
| [**delete_case_head**](CaseHeadsApi.md#delete_case_head) | **DELETE** /case-heads/{caseHeadKey} | Delete CaseHead |
| [**get_case_head**](CaseHeadsApi.md#get_case_head) | **GET** /case-heads/{caseHeadKey} | Get CaseHead |
| [**list_case_head**](CaseHeadsApi.md#list_case_head) | **GET** /case-heads | List CaseHead |
| [**update_batch_case_head**](CaseHeadsApi.md#update_batch_case_head) | **PUT** /case-heads-batch | Create or Update Batch CaseHead |
| [**update_case_head**](CaseHeadsApi.md#update_case_head) | **PUT** /case-heads/{caseHeadKey} | Update CaseHead |


## create_case_head

> <CaseHeadVBAResponse> create_case_head(vbasoftware_database, case_head)

Create CaseHead

Creates a new CaseHead

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head = Vba::CaseHead.new({case_head_key: 37}) # CaseHead | 

begin
  # Create CaseHead
  result = api_instance.create_case_head(vbasoftware_database, case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->create_case_head: #{e}"
end
```

#### Using the create_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadVBAResponse>, Integer, Hash)> create_case_head_with_http_info(vbasoftware_database, case_head)

```ruby
begin
  # Create CaseHead
  data, status_code, headers = api_instance.create_case_head_with_http_info(vbasoftware_database, case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->create_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head** | [**CaseHead**](CaseHead.md) |  |  |

### Return type

[**CaseHeadVBAResponse**](CaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_head

> delete_case_head(vbasoftware_database, case_head_key)

Delete CaseHead

Deletes an CaseHead

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_key = 56 # Integer | CaseHead Key

begin
  # Delete CaseHead
  api_instance.delete_case_head(vbasoftware_database, case_head_key)
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->delete_case_head: #{e}"
end
```

#### Using the delete_case_head_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_head_with_http_info(vbasoftware_database, case_head_key)

```ruby
begin
  # Delete CaseHead
  data, status_code, headers = api_instance.delete_case_head_with_http_info(vbasoftware_database, case_head_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->delete_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_key** | **Integer** | CaseHead Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_head

> <CaseHeadVBAResponse> get_case_head(vbasoftware_database, case_head_key)

Get CaseHead

Gets CaseHead

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_key = 56 # Integer | CaseHead Key

begin
  # Get CaseHead
  result = api_instance.get_case_head(vbasoftware_database, case_head_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->get_case_head: #{e}"
end
```

#### Using the get_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadVBAResponse>, Integer, Hash)> get_case_head_with_http_info(vbasoftware_database, case_head_key)

```ruby
begin
  # Get CaseHead
  data, status_code, headers = api_instance.get_case_head_with_http_info(vbasoftware_database, case_head_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->get_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_key** | **Integer** | CaseHead Key |  |

### Return type

[**CaseHeadVBAResponse**](CaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_head

> <CaseHeadListVBAResponse> list_case_head(vbasoftware_database, opts)

List CaseHead

Lists all CaseHead

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseHead
  result = api_instance.list_case_head(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->list_case_head: #{e}"
end
```

#### Using the list_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadListVBAResponse>, Integer, Hash)> list_case_head_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseHead
  data, status_code, headers = api_instance.list_case_head_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->list_case_head_with_http_info: #{e}"
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

[**CaseHeadListVBAResponse**](CaseHeadListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_head

> <MultiCodeResponseListVBAResponse> update_batch_case_head(vbasoftware_database, case_head)

Create or Update Batch CaseHead

Create or Update multiple CaseHead at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head = [Vba::CaseHead.new({case_head_key: 37})] # Array<CaseHead> | 

begin
  # Create or Update Batch CaseHead
  result = api_instance.update_batch_case_head(vbasoftware_database, case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->update_batch_case_head: #{e}"
end
```

#### Using the update_batch_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_head_with_http_info(vbasoftware_database, case_head)

```ruby
begin
  # Create or Update Batch CaseHead
  data, status_code, headers = api_instance.update_batch_case_head_with_http_info(vbasoftware_database, case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->update_batch_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head** | [**Array&lt;CaseHead&gt;**](CaseHead.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_head

> <CaseHeadVBAResponse> update_case_head(vbasoftware_database, case_head_key, case_head)

Update CaseHead

Updates a specific CaseHead.

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

api_instance = Vba::CaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_key = 56 # Integer | CaseHead Key
case_head = Vba::CaseHead.new({case_head_key: 37}) # CaseHead | 

begin
  # Update CaseHead
  result = api_instance.update_case_head(vbasoftware_database, case_head_key, case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->update_case_head: #{e}"
end
```

#### Using the update_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadVBAResponse>, Integer, Hash)> update_case_head_with_http_info(vbasoftware_database, case_head_key, case_head)

```ruby
begin
  # Update CaseHead
  data, status_code, headers = api_instance.update_case_head_with_http_info(vbasoftware_database, case_head_key, case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadsApi->update_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_key** | **Integer** | CaseHead Key |  |
| **case_head** | [**CaseHead**](CaseHead.md) |  |  |

### Return type

[**CaseHeadVBAResponse**](CaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

