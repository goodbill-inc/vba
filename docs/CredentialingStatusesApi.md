# Vba::CredentialingStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_status**](CredentialingStatusesApi.md#create_cred_status) | **POST** /credentialing-statuses | Create CredStatus |
| [**delete_cred_status**](CredentialingStatusesApi.md#delete_cred_status) | **DELETE** /credentialing-statuses/{credStatus} | Delete CredStatus |
| [**get_cred_status**](CredentialingStatusesApi.md#get_cred_status) | **GET** /credentialing-statuses/{credStatus} | Get CredStatus |
| [**list_cred_status**](CredentialingStatusesApi.md#list_cred_status) | **GET** /credentialing-statuses | List CredStatus |
| [**update_batch_cred_status**](CredentialingStatusesApi.md#update_batch_cred_status) | **PUT** /credentialing-statuses-batch | Create or Update Batch CredStatus |
| [**update_cred_status**](CredentialingStatusesApi.md#update_cred_status) | **PUT** /credentialing-statuses/{credStatus} | Update CredStatus |


## create_cred_status

> <CredStatusVBAResponse> create_cred_status(vbasoftware_database, cred_status)

Create CredStatus

Creates a new CredStatus

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_status = Vba::CredStatus.new({cred_status: 'cred_status_example'}) # CredStatus | 

begin
  # Create CredStatus
  result = api_instance.create_cred_status(vbasoftware_database, cred_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->create_cred_status: #{e}"
end
```

#### Using the create_cred_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredStatusVBAResponse>, Integer, Hash)> create_cred_status_with_http_info(vbasoftware_database, cred_status)

```ruby
begin
  # Create CredStatus
  data, status_code, headers = api_instance.create_cred_status_with_http_info(vbasoftware_database, cred_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->create_cred_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_status** | [**CredStatus**](CredStatus.md) |  |  |

### Return type

[**CredStatusVBAResponse**](CredStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_status

> delete_cred_status(vbasoftware_database, cred_status)

Delete CredStatus

Deletes an CredStatus

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_status = 'cred_status_example' # String | Cred Status

begin
  # Delete CredStatus
  api_instance.delete_cred_status(vbasoftware_database, cred_status)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->delete_cred_status: #{e}"
end
```

#### Using the delete_cred_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_status_with_http_info(vbasoftware_database, cred_status)

```ruby
begin
  # Delete CredStatus
  data, status_code, headers = api_instance.delete_cred_status_with_http_info(vbasoftware_database, cred_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->delete_cred_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_status** | **String** | Cred Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_status

> <CredStatusVBAResponse> get_cred_status(vbasoftware_database, cred_status)

Get CredStatus

Gets CredStatus

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_status = 'cred_status_example' # String | Cred Status

begin
  # Get CredStatus
  result = api_instance.get_cred_status(vbasoftware_database, cred_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->get_cred_status: #{e}"
end
```

#### Using the get_cred_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredStatusVBAResponse>, Integer, Hash)> get_cred_status_with_http_info(vbasoftware_database, cred_status)

```ruby
begin
  # Get CredStatus
  data, status_code, headers = api_instance.get_cred_status_with_http_info(vbasoftware_database, cred_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->get_cred_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_status** | **String** | Cred Status |  |

### Return type

[**CredStatusVBAResponse**](CredStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_status

> <CredStatusListVBAResponse> list_cred_status(vbasoftware_database, opts)

List CredStatus

Lists all CredStatus

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredStatus
  result = api_instance.list_cred_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->list_cred_status: #{e}"
end
```

#### Using the list_cred_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredStatusListVBAResponse>, Integer, Hash)> list_cred_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredStatus
  data, status_code, headers = api_instance.list_cred_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->list_cred_status_with_http_info: #{e}"
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

[**CredStatusListVBAResponse**](CredStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_status

> <MultiCodeResponseListVBAResponse> update_batch_cred_status(vbasoftware_database, cred_status)

Create or Update Batch CredStatus

Create or Update multiple CredStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_status = [Vba::CredStatus.new({cred_status: 'cred_status_example'})] # Array<CredStatus> | 

begin
  # Create or Update Batch CredStatus
  result = api_instance.update_batch_cred_status(vbasoftware_database, cred_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->update_batch_cred_status: #{e}"
end
```

#### Using the update_batch_cred_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_status_with_http_info(vbasoftware_database, cred_status)

```ruby
begin
  # Create or Update Batch CredStatus
  data, status_code, headers = api_instance.update_batch_cred_status_with_http_info(vbasoftware_database, cred_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->update_batch_cred_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_status** | [**Array&lt;CredStatus&gt;**](CredStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_status

> <CredStatusVBAResponse> update_cred_status(vbasoftware_database, cred_status, cred_status2)

Update CredStatus

Updates a specific CredStatus.

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

api_instance = Vba::CredentialingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_status = 'cred_status_example' # String | Cred Status
cred_status2 = Vba::CredStatus.new({cred_status: 'cred_status_example'}) # CredStatus | 

begin
  # Update CredStatus
  result = api_instance.update_cred_status(vbasoftware_database, cred_status, cred_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->update_cred_status: #{e}"
end
```

#### Using the update_cred_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredStatusVBAResponse>, Integer, Hash)> update_cred_status_with_http_info(vbasoftware_database, cred_status, cred_status2)

```ruby
begin
  # Update CredStatus
  data, status_code, headers = api_instance.update_cred_status_with_http_info(vbasoftware_database, cred_status, cred_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingStatusesApi->update_cred_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_status** | **String** | Cred Status |  |
| **cred_status2** | [**CredStatus**](CredStatus.md) |  |  |

### Return type

[**CredStatusVBAResponse**](CredStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

