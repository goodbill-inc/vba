# Vba::CredentialingTerminationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_termination**](CredentialingTerminationsApi.md#create_cred_termination) | **POST** /credentialing-terminations | Create CredTermination |
| [**delete_cred_termination**](CredentialingTerminationsApi.md#delete_cred_termination) | **DELETE** /credentialing-terminations/{credTerminationKey} | Delete CredTermination |
| [**get_cred_termination**](CredentialingTerminationsApi.md#get_cred_termination) | **GET** /credentialing-terminations/{credTerminationKey} | Get CredTermination |
| [**list_cred_termination**](CredentialingTerminationsApi.md#list_cred_termination) | **GET** /credentialing-terminations | List CredTermination |
| [**update_batch_cred_termination**](CredentialingTerminationsApi.md#update_batch_cred_termination) | **PUT** /credentialing-terminations-batch | Create or Update Batch CredTermination |
| [**update_cred_termination**](CredentialingTerminationsApi.md#update_cred_termination) | **PUT** /credentialing-terminations/{credTerminationKey} | Update CredTermination |


## create_cred_termination

> <CredTerminationVBAResponse> create_cred_termination(vbasoftware_database, cred_termination)

Create CredTermination

Creates a new CredTermination

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_termination = Vba::CredTermination.new({cred_termination_key: 37, voluntary: false}) # CredTermination | 

begin
  # Create CredTermination
  result = api_instance.create_cred_termination(vbasoftware_database, cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->create_cred_termination: #{e}"
end
```

#### Using the create_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTerminationVBAResponse>, Integer, Hash)> create_cred_termination_with_http_info(vbasoftware_database, cred_termination)

```ruby
begin
  # Create CredTermination
  data, status_code, headers = api_instance.create_cred_termination_with_http_info(vbasoftware_database, cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->create_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_termination** | [**CredTermination**](CredTermination.md) |  |  |

### Return type

[**CredTerminationVBAResponse**](CredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_termination

> delete_cred_termination(vbasoftware_database, cred_termination_key)

Delete CredTermination

Deletes an CredTermination

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_termination_key = 56 # Integer | CredTermination Key

begin
  # Delete CredTermination
  api_instance.delete_cred_termination(vbasoftware_database, cred_termination_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->delete_cred_termination: #{e}"
end
```

#### Using the delete_cred_termination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_termination_with_http_info(vbasoftware_database, cred_termination_key)

```ruby
begin
  # Delete CredTermination
  data, status_code, headers = api_instance.delete_cred_termination_with_http_info(vbasoftware_database, cred_termination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->delete_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_termination

> <CredTerminationVBAResponse> get_cred_termination(vbasoftware_database, cred_termination_key)

Get CredTermination

Gets CredTermination

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_termination_key = 56 # Integer | CredTermination Key

begin
  # Get CredTermination
  result = api_instance.get_cred_termination(vbasoftware_database, cred_termination_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->get_cred_termination: #{e}"
end
```

#### Using the get_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTerminationVBAResponse>, Integer, Hash)> get_cred_termination_with_http_info(vbasoftware_database, cred_termination_key)

```ruby
begin
  # Get CredTermination
  data, status_code, headers = api_instance.get_cred_termination_with_http_info(vbasoftware_database, cred_termination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->get_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |

### Return type

[**CredTerminationVBAResponse**](CredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_termination

> <CredTerminationListVBAResponse> list_cred_termination(vbasoftware_database, opts)

List CredTermination

Lists all CredTermination

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredTermination
  result = api_instance.list_cred_termination(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->list_cred_termination: #{e}"
end
```

#### Using the list_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTerminationListVBAResponse>, Integer, Hash)> list_cred_termination_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredTermination
  data, status_code, headers = api_instance.list_cred_termination_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTerminationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->list_cred_termination_with_http_info: #{e}"
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

[**CredTerminationListVBAResponse**](CredTerminationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_termination

> <MultiCodeResponseListVBAResponse> update_batch_cred_termination(vbasoftware_database, cred_termination)

Create or Update Batch CredTermination

Create or Update multiple CredTermination at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_termination = [Vba::CredTermination.new({cred_termination_key: 37, voluntary: false})] # Array<CredTermination> | 

begin
  # Create or Update Batch CredTermination
  result = api_instance.update_batch_cred_termination(vbasoftware_database, cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->update_batch_cred_termination: #{e}"
end
```

#### Using the update_batch_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_termination_with_http_info(vbasoftware_database, cred_termination)

```ruby
begin
  # Create or Update Batch CredTermination
  data, status_code, headers = api_instance.update_batch_cred_termination_with_http_info(vbasoftware_database, cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->update_batch_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_termination** | [**Array&lt;CredTermination&gt;**](CredTermination.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_termination

> <CredTerminationVBAResponse> update_cred_termination(vbasoftware_database, cred_termination_key, cred_termination)

Update CredTermination

Updates a specific CredTermination.

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

api_instance = Vba::CredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_termination_key = 56 # Integer | CredTermination Key
cred_termination = Vba::CredTermination.new({cred_termination_key: 37, voluntary: false}) # CredTermination | 

begin
  # Update CredTermination
  result = api_instance.update_cred_termination(vbasoftware_database, cred_termination_key, cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->update_cred_termination: #{e}"
end
```

#### Using the update_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTerminationVBAResponse>, Integer, Hash)> update_cred_termination_with_http_info(vbasoftware_database, cred_termination_key, cred_termination)

```ruby
begin
  # Update CredTermination
  data, status_code, headers = api_instance.update_cred_termination_with_http_info(vbasoftware_database, cred_termination_key, cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTerminationsApi->update_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |
| **cred_termination** | [**CredTermination**](CredTermination.md) |  |  |

### Return type

[**CredTerminationVBAResponse**](CredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

