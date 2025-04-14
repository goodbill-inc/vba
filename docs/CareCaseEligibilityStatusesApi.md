# Vba::CareCaseEligibilityStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#create_care_case_eligibility_status) | **POST** /care-case-eligibility-statuses | Create CareCaseEligibilityStatus |
| [**delete_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#delete_care_case_eligibility_status) | **DELETE** /care-case-eligibility-statuses/{careCaseEligibilityStatusID} | Delete CareCaseEligibilityStatus |
| [**get_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#get_care_case_eligibility_status) | **GET** /care-case-eligibility-statuses/{careCaseEligibilityStatusID} | Get CareCaseEligibilityStatus |
| [**list_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#list_care_case_eligibility_status) | **GET** /care-case-eligibility-statuses | List CareCaseEligibilityStatus |
| [**update_batch_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#update_batch_care_case_eligibility_status) | **PUT** /care-case-eligibility-statuses-batch | Create or Update Batch CareCaseEligibilityStatus |
| [**update_care_case_eligibility_status**](CareCaseEligibilityStatusesApi.md#update_care_case_eligibility_status) | **PUT** /care-case-eligibility-statuses/{careCaseEligibilityStatusID} | Update CareCaseEligibilityStatus |


## create_care_case_eligibility_status

> <CareCaseEligibilityStatusVBAResponse> create_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status)

Create CareCaseEligibilityStatus

Creates a new CareCaseEligibilityStatus

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_eligibility_status = Vba::CareCaseEligibilityStatus.new({care_case_eligibility_status_id: 'care_case_eligibility_status_id_example'}) # CareCaseEligibilityStatus | 

begin
  # Create CareCaseEligibilityStatus
  result = api_instance.create_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->create_care_case_eligibility_status: #{e}"
end
```

#### Using the create_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEligibilityStatusVBAResponse>, Integer, Hash)> create_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status)

```ruby
begin
  # Create CareCaseEligibilityStatus
  data, status_code, headers = api_instance.create_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->create_care_case_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_eligibility_status** | [**CareCaseEligibilityStatus**](CareCaseEligibilityStatus.md) |  |  |

### Return type

[**CareCaseEligibilityStatusVBAResponse**](CareCaseEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_eligibility_status

> delete_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id)

Delete CareCaseEligibilityStatus

Deletes an CareCaseEligibilityStatus

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_eligibility_status_id = 'care_case_eligibility_status_id_example' # String | CareCaseEligibilityStatus ID

begin
  # Delete CareCaseEligibilityStatus
  api_instance.delete_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->delete_care_case_eligibility_status: #{e}"
end
```

#### Using the delete_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id)

```ruby
begin
  # Delete CareCaseEligibilityStatus
  data, status_code, headers = api_instance.delete_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->delete_care_case_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_eligibility_status_id** | **String** | CareCaseEligibilityStatus ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_eligibility_status

> <CareCaseEligibilityStatusVBAResponse> get_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id)

Get CareCaseEligibilityStatus

Gets CareCaseEligibilityStatus

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_eligibility_status_id = 'care_case_eligibility_status_id_example' # String | CareCaseEligibilityStatus ID

begin
  # Get CareCaseEligibilityStatus
  result = api_instance.get_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->get_care_case_eligibility_status: #{e}"
end
```

#### Using the get_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEligibilityStatusVBAResponse>, Integer, Hash)> get_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id)

```ruby
begin
  # Get CareCaseEligibilityStatus
  data, status_code, headers = api_instance.get_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->get_care_case_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_eligibility_status_id** | **String** | CareCaseEligibilityStatus ID |  |

### Return type

[**CareCaseEligibilityStatusVBAResponse**](CareCaseEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_eligibility_status

> <CareCaseEligibilityStatusListVBAResponse> list_care_case_eligibility_status(vbasoftware_database, opts)

List CareCaseEligibilityStatus

Lists all CareCaseEligibilityStatus

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseEligibilityStatus
  result = api_instance.list_care_case_eligibility_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->list_care_case_eligibility_status: #{e}"
end
```

#### Using the list_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEligibilityStatusListVBAResponse>, Integer, Hash)> list_care_case_eligibility_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseEligibilityStatus
  data, status_code, headers = api_instance.list_care_case_eligibility_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEligibilityStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->list_care_case_eligibility_status_with_http_info: #{e}"
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

[**CareCaseEligibilityStatusListVBAResponse**](CareCaseEligibilityStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_eligibility_status

> <MultiCodeResponseListVBAResponse> update_batch_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status)

Create or Update Batch CareCaseEligibilityStatus

Create or Update multiple CareCaseEligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_eligibility_status = [Vba::CareCaseEligibilityStatus.new({care_case_eligibility_status_id: 'care_case_eligibility_status_id_example'})] # Array<CareCaseEligibilityStatus> | 

begin
  # Create or Update Batch CareCaseEligibilityStatus
  result = api_instance.update_batch_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->update_batch_care_case_eligibility_status: #{e}"
end
```

#### Using the update_batch_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status)

```ruby
begin
  # Create or Update Batch CareCaseEligibilityStatus
  data, status_code, headers = api_instance.update_batch_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->update_batch_care_case_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_eligibility_status** | [**Array&lt;CareCaseEligibilityStatus&gt;**](CareCaseEligibilityStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_eligibility_status

> <CareCaseEligibilityStatusVBAResponse> update_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status)

Update CareCaseEligibilityStatus

Updates a specific CareCaseEligibilityStatus.

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

api_instance = Vba::CareCaseEligibilityStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_eligibility_status_id = 'care_case_eligibility_status_id_example' # String | CareCaseEligibilityStatus ID
care_case_eligibility_status = Vba::CareCaseEligibilityStatus.new({care_case_eligibility_status_id: 'care_case_eligibility_status_id_example'}) # CareCaseEligibilityStatus | 

begin
  # Update CareCaseEligibilityStatus
  result = api_instance.update_care_case_eligibility_status(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->update_care_case_eligibility_status: #{e}"
end
```

#### Using the update_care_case_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEligibilityStatusVBAResponse>, Integer, Hash)> update_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status)

```ruby
begin
  # Update CareCaseEligibilityStatus
  data, status_code, headers = api_instance.update_care_case_eligibility_status_with_http_info(vbasoftware_database, care_case_eligibility_status_id, care_case_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEligibilityStatusesApi->update_care_case_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_eligibility_status_id** | **String** | CareCaseEligibilityStatus ID |  |
| **care_case_eligibility_status** | [**CareCaseEligibilityStatus**](CareCaseEligibilityStatus.md) |  |  |

### Return type

[**CareCaseEligibilityStatusVBAResponse**](CareCaseEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

