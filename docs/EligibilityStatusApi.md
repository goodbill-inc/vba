# Vba::EligibilityStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_eligibility_status**](EligibilityStatusApi.md#create_eligibility_status) | **POST** /eligibility-statuses | Create EligibilityStatus |
| [**delete_eligibility_status**](EligibilityStatusApi.md#delete_eligibility_status) | **DELETE** /eligibility-statuses/{eligibilityStatus} | Delete EligibilityStatus |
| [**get_eligibility_status**](EligibilityStatusApi.md#get_eligibility_status) | **GET** /eligibility-statuses/{eligibilityStatus} | Get EligibilityStatus |
| [**list_eligibility_status**](EligibilityStatusApi.md#list_eligibility_status) | **GET** /eligibility-statuses | List EligibilityStatus |
| [**update_batch_eligibility_status**](EligibilityStatusApi.md#update_batch_eligibility_status) | **PUT** /eligibility-statuses-batch | Create or Update Batch EligibilityStatus |
| [**update_eligibility_status**](EligibilityStatusApi.md#update_eligibility_status) | **PUT** /eligibility-statuses/{eligibilityStatus} | Update EligibilityStatus |


## create_eligibility_status

> <EligibilityStatusVBAResponse> create_eligibility_status(vbasoftware_database, eligibility_status)

Create EligibilityStatus

Creates a new EligibilityStatus

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eligibility_status = Vba::EligibilityStatus.new({eligibility_status: 'eligibility_status_example', sec111_exclude: false, sec111_include: false}) # EligibilityStatus | 

begin
  # Create EligibilityStatus
  result = api_instance.create_eligibility_status(vbasoftware_database, eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->create_eligibility_status: #{e}"
end
```

#### Using the create_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EligibilityStatusVBAResponse>, Integer, Hash)> create_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)

```ruby
begin
  # Create EligibilityStatus
  data, status_code, headers = api_instance.create_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->create_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eligibility_status** | [**EligibilityStatus**](EligibilityStatus.md) |  |  |

### Return type

[**EligibilityStatusVBAResponse**](EligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_eligibility_status

> delete_eligibility_status(vbasoftware_database, eligibility_status)

Delete EligibilityStatus

Deletes an EligibilityStatus

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eligibility_status = 'eligibility_status_example' # String | Eligibility Status

begin
  # Delete EligibilityStatus
  api_instance.delete_eligibility_status(vbasoftware_database, eligibility_status)
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->delete_eligibility_status: #{e}"
end
```

#### Using the delete_eligibility_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)

```ruby
begin
  # Delete EligibilityStatus
  data, status_code, headers = api_instance.delete_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->delete_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eligibility_status** | **String** | Eligibility Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_eligibility_status

> <EligibilityStatusVBAResponse> get_eligibility_status(vbasoftware_database, eligibility_status)

Get EligibilityStatus

Gets EligibilityStatus

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eligibility_status = 'eligibility_status_example' # String | Eligibility Status

begin
  # Get EligibilityStatus
  result = api_instance.get_eligibility_status(vbasoftware_database, eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->get_eligibility_status: #{e}"
end
```

#### Using the get_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EligibilityStatusVBAResponse>, Integer, Hash)> get_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)

```ruby
begin
  # Get EligibilityStatus
  data, status_code, headers = api_instance.get_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->get_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eligibility_status** | **String** | Eligibility Status |  |

### Return type

[**EligibilityStatusVBAResponse**](EligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_eligibility_status

> <EligibilityStatusListVBAResponse> list_eligibility_status(vbasoftware_database, opts)

List EligibilityStatus

Lists all EligibilityStatus for the given eligibilityStatus

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EligibilityStatus
  result = api_instance.list_eligibility_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->list_eligibility_status: #{e}"
end
```

#### Using the list_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EligibilityStatusListVBAResponse>, Integer, Hash)> list_eligibility_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EligibilityStatus
  data, status_code, headers = api_instance.list_eligibility_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EligibilityStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->list_eligibility_status_with_http_info: #{e}"
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

[**EligibilityStatusListVBAResponse**](EligibilityStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_eligibility_status

> <MultiCodeResponseListVBAResponse> update_batch_eligibility_status(vbasoftware_database, eligibility_status)

Create or Update Batch EligibilityStatus

Create or Update multiple EligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eligibility_status = [Vba::EligibilityStatus.new({eligibility_status: 'eligibility_status_example', sec111_exclude: false, sec111_include: false})] # Array<EligibilityStatus> | 

begin
  # Create or Update Batch EligibilityStatus
  result = api_instance.update_batch_eligibility_status(vbasoftware_database, eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->update_batch_eligibility_status: #{e}"
end
```

#### Using the update_batch_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)

```ruby
begin
  # Create or Update Batch EligibilityStatus
  data, status_code, headers = api_instance.update_batch_eligibility_status_with_http_info(vbasoftware_database, eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->update_batch_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eligibility_status** | [**Array&lt;EligibilityStatus&gt;**](EligibilityStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_eligibility_status

> <EligibilityStatusVBAResponse> update_eligibility_status(vbasoftware_database, eligibility_status, eligibility_status2)

Update EligibilityStatus

Updates a specific EligibilityStatus.

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

api_instance = Vba::EligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eligibility_status = 'eligibility_status_example' # String | Eligibility Status
eligibility_status2 = Vba::EligibilityStatus.new({eligibility_status: 'eligibility_status_example', sec111_exclude: false, sec111_include: false}) # EligibilityStatus | 

begin
  # Update EligibilityStatus
  result = api_instance.update_eligibility_status(vbasoftware_database, eligibility_status, eligibility_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->update_eligibility_status: #{e}"
end
```

#### Using the update_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EligibilityStatusVBAResponse>, Integer, Hash)> update_eligibility_status_with_http_info(vbasoftware_database, eligibility_status, eligibility_status2)

```ruby
begin
  # Update EligibilityStatus
  data, status_code, headers = api_instance.update_eligibility_status_with_http_info(vbasoftware_database, eligibility_status, eligibility_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EligibilityStatusApi->update_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eligibility_status** | **String** | Eligibility Status |  |
| **eligibility_status2** | [**EligibilityStatus**](EligibilityStatus.md) |  |  |

### Return type

[**EligibilityStatusVBAResponse**](EligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

