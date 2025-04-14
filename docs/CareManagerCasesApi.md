# Vba::CareManagerCasesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_manager_case**](CareManagerCasesApi.md#create_care_manager_case) | **POST** /care-managers/{careManagerKey}/cases | Create CareManagerCase |
| [**delete_care_manager_case**](CareManagerCasesApi.md#delete_care_manager_case) | **DELETE** /care-managers/{careManagerKey}/cases/{careManagerCaseKey} | Delete CareManagerCase |
| [**get_care_manager_case**](CareManagerCasesApi.md#get_care_manager_case) | **GET** /care-managers/{careManagerKey}/cases/{careManagerCaseKey} | Get CareManagerCase |
| [**list_care_manager_case**](CareManagerCasesApi.md#list_care_manager_case) | **GET** /care-managers/{careManagerKey}/cases | List CareManagerCase |
| [**update_batch_care_manager_case**](CareManagerCasesApi.md#update_batch_care_manager_case) | **PUT** /care-managers/{careManagerKey}/cases-batch | Create or Update Batch CareManagerCase |
| [**update_care_manager_case**](CareManagerCasesApi.md#update_care_manager_case) | **PUT** /care-managers/{careManagerKey}/cases/{careManagerCaseKey} | Update CareManagerCase |


## create_care_manager_case

> <CareManagerCaseVBAResponse> create_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case)

Create CareManagerCase

Creates a new CareManagerCase

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_case = Vba::CareManagerCase.new({care_manager_case_key: 37, care_manager_key: 37, case_key: 37}) # CareManagerCase | 

begin
  # Create CareManagerCase
  result = api_instance.create_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->create_care_manager_case: #{e}"
end
```

#### Using the create_care_manager_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCaseVBAResponse>, Integer, Hash)> create_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case)

```ruby
begin
  # Create CareManagerCase
  data, status_code, headers = api_instance.create_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->create_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_case** | [**CareManagerCase**](CareManagerCase.md) |  |  |

### Return type

[**CareManagerCaseVBAResponse**](CareManagerCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager_case

> delete_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key)

Delete CareManagerCase

Deletes an CareManagerCase

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_case_key = 56 # Integer | CareManagerCase Key

begin
  # Delete CareManagerCase
  api_instance.delete_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key)
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->delete_care_manager_case: #{e}"
end
```

#### Using the delete_care_manager_case_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key)

```ruby
begin
  # Delete CareManagerCase
  data, status_code, headers = api_instance.delete_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->delete_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_case_key** | **Integer** | CareManagerCase Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager_case

> <CareManagerCaseVBAResponse> get_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key)

Get CareManagerCase

Gets CareManagerCase

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_case_key = 56 # Integer | CareManagerCase Key

begin
  # Get CareManagerCase
  result = api_instance.get_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->get_care_manager_case: #{e}"
end
```

#### Using the get_care_manager_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCaseVBAResponse>, Integer, Hash)> get_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key)

```ruby
begin
  # Get CareManagerCase
  data, status_code, headers = api_instance.get_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->get_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_case_key** | **Integer** | CareManagerCase Key |  |

### Return type

[**CareManagerCaseVBAResponse**](CareManagerCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager_case

> <CareManagerCaseListVBAResponse> list_care_manager_case(vbasoftware_database, care_manager_key, opts)

List CareManagerCase

Lists all CareManagerCase for the given careManagerKey

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManagerCase
  result = api_instance.list_care_manager_case(vbasoftware_database, care_manager_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->list_care_manager_case: #{e}"
end
```

#### Using the list_care_manager_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCaseListVBAResponse>, Integer, Hash)> list_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, opts)

```ruby
begin
  # List CareManagerCase
  data, status_code, headers = api_instance.list_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCaseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->list_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareManagerCaseListVBAResponse**](CareManagerCaseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_manager_case

> <MultiCodeResponseListVBAResponse> update_batch_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case)

Create or Update Batch CareManagerCase

Create or Update multiple CareManagerCase at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_case = [Vba::CareManagerCase.new({care_manager_case_key: 37, care_manager_key: 37, case_key: 37})] # Array<CareManagerCase> | 

begin
  # Create or Update Batch CareManagerCase
  result = api_instance.update_batch_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->update_batch_care_manager_case: #{e}"
end
```

#### Using the update_batch_care_manager_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case)

```ruby
begin
  # Create or Update Batch CareManagerCase
  data, status_code, headers = api_instance.update_batch_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->update_batch_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_case** | [**Array&lt;CareManagerCase&gt;**](CareManagerCase.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_manager_case

> <CareManagerCaseVBAResponse> update_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key, care_manager_case)

Update CareManagerCase

Updates a specific CareManagerCase.

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

api_instance = Vba::CareManagerCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_case_key = 56 # Integer | CareManagerCase Key
care_manager_case = Vba::CareManagerCase.new({care_manager_case_key: 37, care_manager_key: 37, case_key: 37}) # CareManagerCase | 

begin
  # Update CareManagerCase
  result = api_instance.update_care_manager_case(vbasoftware_database, care_manager_key, care_manager_case_key, care_manager_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->update_care_manager_case: #{e}"
end
```

#### Using the update_care_manager_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCaseVBAResponse>, Integer, Hash)> update_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key, care_manager_case)

```ruby
begin
  # Update CareManagerCase
  data, status_code, headers = api_instance.update_care_manager_case_with_http_info(vbasoftware_database, care_manager_key, care_manager_case_key, care_manager_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCasesApi->update_care_manager_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_case_key** | **Integer** | CareManagerCase Key |  |
| **care_manager_case** | [**CareManagerCase**](CareManagerCase.md) |  |  |

### Return type

[**CareManagerCaseVBAResponse**](CareManagerCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

