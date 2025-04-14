# Vba::CareCasesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case**](CareCasesApi.md#create_care_case) | **POST** /care-plans/{carePlanKey}/cases | Create CareCase |
| [**delete_care_case**](CareCasesApi.md#delete_care_case) | **DELETE** /care-plans/{carePlanKey}/cases/{caseKey} | Delete CareCase |
| [**get_care_case**](CareCasesApi.md#get_care_case) | **GET** /care-plans/{carePlanKey}/cases/{caseKey} | Get CareCase |
| [**list_care_case**](CareCasesApi.md#list_care_case) | **GET** /care-plans/{carePlanKey}/cases | List CareCase |
| [**update_batch_care_case**](CareCasesApi.md#update_batch_care_case) | **PUT** /care-plans/{carePlanKey}/cases-batch | Create or Update Batch CareCase |
| [**update_care_case**](CareCasesApi.md#update_care_case) | **PUT** /care-plans/{carePlanKey}/cases/{caseKey} | Update CareCase |


## create_care_case

> <CareCaseVBAResponse> create_care_case(vbasoftware_database, care_plan_key, care_case)

Create CareCase

Creates a new CareCase

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_case = Vba::CareCase.new({case_key: 37, care_plan_key: 37, do_not_contact: false}) # CareCase | 

begin
  # Create CareCase
  result = api_instance.create_care_case(vbasoftware_database, care_plan_key, care_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->create_care_case: #{e}"
end
```

#### Using the create_care_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseVBAResponse>, Integer, Hash)> create_care_case_with_http_info(vbasoftware_database, care_plan_key, care_case)

```ruby
begin
  # Create CareCase
  data, status_code, headers = api_instance.create_care_case_with_http_info(vbasoftware_database, care_plan_key, care_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->create_care_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_case** | [**CareCase**](CareCase.md) |  |  |

### Return type

[**CareCaseVBAResponse**](CareCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case

> delete_care_case(vbasoftware_database, care_plan_key, case_key)

Delete CareCase

Deletes an CareCase

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
case_key = 56 # Integer | Case Key

begin
  # Delete CareCase
  api_instance.delete_care_case(vbasoftware_database, care_plan_key, case_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->delete_care_case: #{e}"
end
```

#### Using the delete_care_case_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key)

```ruby
begin
  # Delete CareCase
  data, status_code, headers = api_instance.delete_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->delete_care_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **case_key** | **Integer** | Case Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case

> <CareCaseVBAResponse> get_care_case(vbasoftware_database, care_plan_key, case_key)

Get CareCase

Gets CareCase

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
case_key = 56 # Integer | Case Key

begin
  # Get CareCase
  result = api_instance.get_care_case(vbasoftware_database, care_plan_key, case_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->get_care_case: #{e}"
end
```

#### Using the get_care_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseVBAResponse>, Integer, Hash)> get_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key)

```ruby
begin
  # Get CareCase
  data, status_code, headers = api_instance.get_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->get_care_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **case_key** | **Integer** | Case Key |  |

### Return type

[**CareCaseVBAResponse**](CareCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case

> <CareCaseListVBAResponse> list_care_case(vbasoftware_database, care_plan_key, opts)

List CareCase

Lists all CareCase for the given carePlanKey

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCase
  result = api_instance.list_care_case(vbasoftware_database, care_plan_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->list_care_case: #{e}"
end
```

#### Using the list_care_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseListVBAResponse>, Integer, Hash)> list_care_case_with_http_info(vbasoftware_database, care_plan_key, opts)

```ruby
begin
  # List CareCase
  data, status_code, headers = api_instance.list_care_case_with_http_info(vbasoftware_database, care_plan_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->list_care_case_with_http_info: #{e}"
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

[**CareCaseListVBAResponse**](CareCaseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case

> <MultiCodeResponseListVBAResponse> update_batch_care_case(vbasoftware_database, care_plan_key, care_case)

Create or Update Batch CareCase

Create or Update multiple CareCase at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_case = [Vba::CareCase.new({case_key: 37, care_plan_key: 37, do_not_contact: false})] # Array<CareCase> | 

begin
  # Create or Update Batch CareCase
  result = api_instance.update_batch_care_case(vbasoftware_database, care_plan_key, care_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->update_batch_care_case: #{e}"
end
```

#### Using the update_batch_care_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_with_http_info(vbasoftware_database, care_plan_key, care_case)

```ruby
begin
  # Create or Update Batch CareCase
  data, status_code, headers = api_instance.update_batch_care_case_with_http_info(vbasoftware_database, care_plan_key, care_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->update_batch_care_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_case** | [**Array&lt;CareCase&gt;**](CareCase.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case

> <CareCaseVBAResponse> update_care_case(vbasoftware_database, care_plan_key, case_key, care_case)

Update CareCase

Updates a specific CareCase.

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

api_instance = Vba::CareCasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
case_key = 56 # Integer | Case Key
care_case = Vba::CareCase.new({case_key: 37, care_plan_key: 37, do_not_contact: false}) # CareCase | 

begin
  # Update CareCase
  result = api_instance.update_care_case(vbasoftware_database, care_plan_key, case_key, care_case)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->update_care_case: #{e}"
end
```

#### Using the update_care_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseVBAResponse>, Integer, Hash)> update_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key, care_case)

```ruby
begin
  # Update CareCase
  data, status_code, headers = api_instance.update_care_case_with_http_info(vbasoftware_database, care_plan_key, case_key, care_case)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCasesApi->update_care_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case** | [**CareCase**](CareCase.md) |  |  |

### Return type

[**CareCaseVBAResponse**](CareCaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

