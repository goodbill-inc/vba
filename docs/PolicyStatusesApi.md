# Vba::PolicyStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policy_status**](PolicyStatusesApi.md#create_policy_status) | **POST** /policy-statuses | Create PolicyStatus |
| [**delete_policy_status**](PolicyStatusesApi.md#delete_policy_status) | **DELETE** /policy-statuses/{policyStatus} | Delete PolicyStatus |
| [**get_policy_status**](PolicyStatusesApi.md#get_policy_status) | **GET** /policy-statuses/{policyStatus} | Get PolicyStatus |
| [**list_policy_status**](PolicyStatusesApi.md#list_policy_status) | **GET** /policy-statuses | List PolicyStatus |
| [**update_batch_policy_status**](PolicyStatusesApi.md#update_batch_policy_status) | **PUT** /policy-statuses-batch | Create or Update Batch PolicyStatus |
| [**update_policy_status**](PolicyStatusesApi.md#update_policy_status) | **PUT** /policy-statuses/{policyStatus} | Update PolicyStatus |


## create_policy_status

> <PolicyStatusVBAResponse> create_policy_status(vbasoftware_database, policy_status)

Create PolicyStatus

Creates a new PolicyStatus

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_status = Vba::PolicyStatus.new({policy_status: 'policy_status_example', default_status: false}) # PolicyStatus | 

begin
  # Create PolicyStatus
  result = api_instance.create_policy_status(vbasoftware_database, policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->create_policy_status: #{e}"
end
```

#### Using the create_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyStatusVBAResponse>, Integer, Hash)> create_policy_status_with_http_info(vbasoftware_database, policy_status)

```ruby
begin
  # Create PolicyStatus
  data, status_code, headers = api_instance.create_policy_status_with_http_info(vbasoftware_database, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->create_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_status** | [**PolicyStatus**](PolicyStatus.md) |  |  |

### Return type

[**PolicyStatusVBAResponse**](PolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_policy_status

> delete_policy_status(vbasoftware_database, policy_status)

Delete PolicyStatus

Deletes an PolicyStatus

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_status = 'policy_status_example' # String | Policy Status

begin
  # Delete PolicyStatus
  api_instance.delete_policy_status(vbasoftware_database, policy_status)
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->delete_policy_status: #{e}"
end
```

#### Using the delete_policy_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_policy_status_with_http_info(vbasoftware_database, policy_status)

```ruby
begin
  # Delete PolicyStatus
  data, status_code, headers = api_instance.delete_policy_status_with_http_info(vbasoftware_database, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->delete_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_status** | **String** | Policy Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_policy_status

> <PolicyStatusVBAResponse> get_policy_status(vbasoftware_database, policy_status)

Get PolicyStatus

Gets PolicyStatus

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_status = 'policy_status_example' # String | Policy Status

begin
  # Get PolicyStatus
  result = api_instance.get_policy_status(vbasoftware_database, policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->get_policy_status: #{e}"
end
```

#### Using the get_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyStatusVBAResponse>, Integer, Hash)> get_policy_status_with_http_info(vbasoftware_database, policy_status)

```ruby
begin
  # Get PolicyStatus
  data, status_code, headers = api_instance.get_policy_status_with_http_info(vbasoftware_database, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->get_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_status** | **String** | Policy Status |  |

### Return type

[**PolicyStatusVBAResponse**](PolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_policy_status

> <PolicyStatusListVBAResponse> list_policy_status(vbasoftware_database)

List PolicyStatus

Lists all PolicyStatus 

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List PolicyStatus
  result = api_instance.list_policy_status(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->list_policy_status: #{e}"
end
```

#### Using the list_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyStatusListVBAResponse>, Integer, Hash)> list_policy_status_with_http_info(vbasoftware_database)

```ruby
begin
  # List PolicyStatus
  data, status_code, headers = api_instance.list_policy_status_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->list_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PolicyStatusListVBAResponse**](PolicyStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_policy_status

> <MultiCodeResponseListVBAResponse> update_batch_policy_status(vbasoftware_database, policy_status)

Create or Update Batch PolicyStatus

Create or Update multiple PolicyStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_status = [Vba::PolicyStatus.new({policy_status: 'policy_status_example', default_status: false})] # Array<PolicyStatus> | 

begin
  # Create or Update Batch PolicyStatus
  result = api_instance.update_batch_policy_status(vbasoftware_database, policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->update_batch_policy_status: #{e}"
end
```

#### Using the update_batch_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_policy_status_with_http_info(vbasoftware_database, policy_status)

```ruby
begin
  # Create or Update Batch PolicyStatus
  data, status_code, headers = api_instance.update_batch_policy_status_with_http_info(vbasoftware_database, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->update_batch_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_status** | [**Array&lt;PolicyStatus&gt;**](PolicyStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_policy_status

> <PolicyStatusVBAResponse> update_policy_status(vbasoftware_database, policy_status, policy_status2)

Update PolicyStatus

Updates a specific PolicyStatus.

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

api_instance = Vba::PolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_status = 'policy_status_example' # String | Policy Status
policy_status2 = Vba::PolicyStatus.new({policy_status: 'policy_status_example', default_status: false}) # PolicyStatus | 

begin
  # Update PolicyStatus
  result = api_instance.update_policy_status(vbasoftware_database, policy_status, policy_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->update_policy_status: #{e}"
end
```

#### Using the update_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyStatusVBAResponse>, Integer, Hash)> update_policy_status_with_http_info(vbasoftware_database, policy_status, policy_status2)

```ruby
begin
  # Update PolicyStatus
  data, status_code, headers = api_instance.update_policy_status_with_http_info(vbasoftware_database, policy_status, policy_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyStatusesApi->update_policy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_status** | **String** | Policy Status |  |
| **policy_status2** | [**PolicyStatus**](PolicyStatus.md) |  |  |

### Return type

[**PolicyStatusVBAResponse**](PolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

