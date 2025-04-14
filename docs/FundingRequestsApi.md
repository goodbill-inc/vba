# Vba::FundingRequestsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_request**](FundingRequestsApi.md#create_funding_request) | **POST** /funding-requests | Create FundingRequest |
| [**delete_funding_request**](FundingRequestsApi.md#delete_funding_request) | **DELETE** /funding-requests/{requestKey} | Delete FundingRequest |
| [**get_funding_request**](FundingRequestsApi.md#get_funding_request) | **GET** /funding-requests/{requestKey} | Get FundingRequest |
| [**list_funding_request**](FundingRequestsApi.md#list_funding_request) | **GET** /funding-requests | List FundingRequest |
| [**satisfy_funding_request**](FundingRequestsApi.md#satisfy_funding_request) | **PUT** /funding-requests/{requestKey}/satisfy | Satisfy a Funding Request |
| [**update_batch_funding_request**](FundingRequestsApi.md#update_batch_funding_request) | **PUT** /funding-requests-batch | Create or Update Batch FundingRequest |
| [**update_funding_request**](FundingRequestsApi.md#update_funding_request) | **PUT** /funding-requests/{requestKey} | Update FundingRequest |


## create_funding_request

> <FundingRequestVBAResponse> create_funding_request(vbasoftware_database, funding_request)

Create FundingRequest

Creates a new FundingRequest

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request = Vba::FundingRequest.new({request_key: 37, request_date: Time.now, request_user: 'request_user_example'}) # FundingRequest | 

begin
  # Create FundingRequest
  result = api_instance.create_funding_request(vbasoftware_database, funding_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->create_funding_request: #{e}"
end
```

#### Using the create_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestVBAResponse>, Integer, Hash)> create_funding_request_with_http_info(vbasoftware_database, funding_request)

```ruby
begin
  # Create FundingRequest
  data, status_code, headers = api_instance.create_funding_request_with_http_info(vbasoftware_database, funding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->create_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request** | [**FundingRequest**](FundingRequest.md) |  |  |

### Return type

[**FundingRequestVBAResponse**](FundingRequestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_request

> delete_funding_request(vbasoftware_database, request_key)

Delete FundingRequest

Deletes an FundingRequest

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key

begin
  # Delete FundingRequest
  api_instance.delete_funding_request(vbasoftware_database, request_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->delete_funding_request: #{e}"
end
```

#### Using the delete_funding_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_request_with_http_info(vbasoftware_database, request_key)

```ruby
begin
  # Delete FundingRequest
  data, status_code, headers = api_instance.delete_funding_request_with_http_info(vbasoftware_database, request_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->delete_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_request

> <FundingRequestVBAResponse> get_funding_request(vbasoftware_database, request_key)

Get FundingRequest

Gets FundingRequest

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key

begin
  # Get FundingRequest
  result = api_instance.get_funding_request(vbasoftware_database, request_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->get_funding_request: #{e}"
end
```

#### Using the get_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestVBAResponse>, Integer, Hash)> get_funding_request_with_http_info(vbasoftware_database, request_key)

```ruby
begin
  # Get FundingRequest
  data, status_code, headers = api_instance.get_funding_request_with_http_info(vbasoftware_database, request_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->get_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |

### Return type

[**FundingRequestVBAResponse**](FundingRequestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_request

> <FundingRequestListVBAResponse> list_funding_request(vbasoftware_database, opts)

List FundingRequest

Lists all FundingRequest

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingRequest
  result = api_instance.list_funding_request(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->list_funding_request: #{e}"
end
```

#### Using the list_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestListVBAResponse>, Integer, Hash)> list_funding_request_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingRequest
  data, status_code, headers = api_instance.list_funding_request_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->list_funding_request_with_http_info: #{e}"
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

[**FundingRequestListVBAResponse**](FundingRequestListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## satisfy_funding_request

> <FundingRequestVBAResponse> satisfy_funding_request(vbasoftware_database, request_key, funding_service_satisfy_request)

Satisfy a Funding Request

Satisfies a specific FundingRequest and handles partial request processing.

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_service_satisfy_request = Vba::FundingServiceSatisfyRequest.new # FundingServiceSatisfyRequest | 

begin
  # Satisfy a Funding Request
  result = api_instance.satisfy_funding_request(vbasoftware_database, request_key, funding_service_satisfy_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->satisfy_funding_request: #{e}"
end
```

#### Using the satisfy_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestVBAResponse>, Integer, Hash)> satisfy_funding_request_with_http_info(vbasoftware_database, request_key, funding_service_satisfy_request)

```ruby
begin
  # Satisfy a Funding Request
  data, status_code, headers = api_instance.satisfy_funding_request_with_http_info(vbasoftware_database, request_key, funding_service_satisfy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->satisfy_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_service_satisfy_request** | [**FundingServiceSatisfyRequest**](FundingServiceSatisfyRequest.md) |  |  |

### Return type

[**FundingRequestVBAResponse**](FundingRequestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_request

> <MultiCodeResponseListVBAResponse> update_batch_funding_request(vbasoftware_database, funding_request)

Create or Update Batch FundingRequest

Create or Update multiple FundingRequest at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request = [Vba::FundingRequest.new({request_key: 37, request_date: Time.now, request_user: 'request_user_example'})] # Array<FundingRequest> | 

begin
  # Create or Update Batch FundingRequest
  result = api_instance.update_batch_funding_request(vbasoftware_database, funding_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->update_batch_funding_request: #{e}"
end
```

#### Using the update_batch_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_request_with_http_info(vbasoftware_database, funding_request)

```ruby
begin
  # Create or Update Batch FundingRequest
  data, status_code, headers = api_instance.update_batch_funding_request_with_http_info(vbasoftware_database, funding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->update_batch_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request** | [**Array&lt;FundingRequest&gt;**](FundingRequest.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_request

> <FundingRequestVBAResponse> update_funding_request(vbasoftware_database, request_key, funding_request)

Update FundingRequest

Updates a specific FundingRequest.

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

api_instance = Vba::FundingRequestsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_request = Vba::FundingRequest.new({request_key: 37, request_date: Time.now, request_user: 'request_user_example'}) # FundingRequest | 

begin
  # Update FundingRequest
  result = api_instance.update_funding_request(vbasoftware_database, request_key, funding_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->update_funding_request: #{e}"
end
```

#### Using the update_funding_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestVBAResponse>, Integer, Hash)> update_funding_request_with_http_info(vbasoftware_database, request_key, funding_request)

```ruby
begin
  # Update FundingRequest
  data, status_code, headers = api_instance.update_funding_request_with_http_info(vbasoftware_database, request_key, funding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestsApi->update_funding_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_request** | [**FundingRequest**](FundingRequest.md) |  |  |

### Return type

[**FundingRequestVBAResponse**](FundingRequestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

