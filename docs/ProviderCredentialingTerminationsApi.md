# Vba::ProviderCredentialingTerminationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#create_provider_cred_termination) | **POST** /provider-credentialing/{providerCredKey}/terminations | Create ProviderCredTermination |
| [**delete_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#delete_provider_cred_termination) | **DELETE** /provider-credentialing/{providerCredKey}/terminations/{networkID}/{credTerminationKey} | Delete ProviderCredTermination |
| [**get_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#get_provider_cred_termination) | **GET** /provider-credentialing/{providerCredKey}/terminations/{networkID}/{credTerminationKey} | Get ProviderCredTermination |
| [**list_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#list_provider_cred_termination) | **GET** /provider-credentialing/{providerCredKey}/terminations | List ProviderCredTermination |
| [**update_batch_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#update_batch_provider_cred_termination) | **PUT** /provider-credentialing/{providerCredKey}/terminations-batch | Create or Update Batch ProviderCredTermination |
| [**update_provider_cred_termination**](ProviderCredentialingTerminationsApi.md#update_provider_cred_termination) | **PUT** /provider-credentialing/{providerCredKey}/terminations/{networkID}/{credTerminationKey} | Update ProviderCredTermination |


## create_provider_cred_termination

> <ProviderCredTerminationVBAResponse> create_provider_cred_termination(vbasoftware_database, provider_cred_key, provider_cred_termination)

Create ProviderCredTermination

Creates a new ProviderCredTermination

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_termination = Vba::ProviderCredTermination.new({provider_cred_key: 37, network_id: 'network_id_example', cred_termination_key: 37}) # ProviderCredTermination | 

begin
  # Create ProviderCredTermination
  result = api_instance.create_provider_cred_termination(vbasoftware_database, provider_cred_key, provider_cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->create_provider_cred_termination: #{e}"
end
```

#### Using the create_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTerminationVBAResponse>, Integer, Hash)> create_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_termination)

```ruby
begin
  # Create ProviderCredTermination
  data, status_code, headers = api_instance.create_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->create_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_termination** | [**ProviderCredTermination**](ProviderCredTermination.md) |  |  |

### Return type

[**ProviderCredTerminationVBAResponse**](ProviderCredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_termination

> delete_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)

Delete ProviderCredTermination

Deletes an ProviderCredTermination

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
network_id = 'network_id_example' # String | Network ID
cred_termination_key = 56 # Integer | CredTermination Key

begin
  # Delete ProviderCredTermination
  api_instance.delete_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->delete_provider_cred_termination: #{e}"
end
```

#### Using the delete_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)

```ruby
begin
  # Delete ProviderCredTermination
  data, status_code, headers = api_instance.delete_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->delete_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **network_id** | **String** | Network ID |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_termination

> <ProviderCredTerminationVBAResponse> get_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)

Get ProviderCredTermination

Gets ProviderCredTermination

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
network_id = 'network_id_example' # String | Network ID
cred_termination_key = 56 # Integer | CredTermination Key

begin
  # Get ProviderCredTermination
  result = api_instance.get_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->get_provider_cred_termination: #{e}"
end
```

#### Using the get_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTerminationVBAResponse>, Integer, Hash)> get_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)

```ruby
begin
  # Get ProviderCredTermination
  data, status_code, headers = api_instance.get_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->get_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **network_id** | **String** | Network ID |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |

### Return type

[**ProviderCredTerminationVBAResponse**](ProviderCredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_termination

> <ProviderCredTerminationListVBAResponse> list_provider_cred_termination(vbasoftware_database, provider_cred_key, opts)

List ProviderCredTermination

Lists all ProviderCredTermination for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredTermination
  result = api_instance.list_provider_cred_termination(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->list_provider_cred_termination: #{e}"
end
```

#### Using the list_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTerminationListVBAResponse>, Integer, Hash)> list_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredTermination
  data, status_code, headers = api_instance.list_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTerminationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->list_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderCredTerminationListVBAResponse**](ProviderCredTerminationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_termination

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_termination(vbasoftware_database, provider_cred_key, provider_cred_termination)

Create or Update Batch ProviderCredTermination

Create or Update multiple ProviderCredTermination at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_termination = [Vba::ProviderCredTermination.new({provider_cred_key: 37, network_id: 'network_id_example', cred_termination_key: 37})] # Array<ProviderCredTermination> | 

begin
  # Create or Update Batch ProviderCredTermination
  result = api_instance.update_batch_provider_cred_termination(vbasoftware_database, provider_cred_key, provider_cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->update_batch_provider_cred_termination: #{e}"
end
```

#### Using the update_batch_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_termination)

```ruby
begin
  # Create or Update Batch ProviderCredTermination
  data, status_code, headers = api_instance.update_batch_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->update_batch_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_termination** | [**Array&lt;ProviderCredTermination&gt;**](ProviderCredTermination.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_termination

> <ProviderCredTerminationVBAResponse> update_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key, provider_cred_termination)

Update ProviderCredTermination

Updates a specific ProviderCredTermination.

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

api_instance = Vba::ProviderCredentialingTerminationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
network_id = 'network_id_example' # String | Network ID
cred_termination_key = 56 # Integer | CredTermination Key
provider_cred_termination = Vba::ProviderCredTermination.new({provider_cred_key: 37, network_id: 'network_id_example', cred_termination_key: 37}) # ProviderCredTermination | 

begin
  # Update ProviderCredTermination
  result = api_instance.update_provider_cred_termination(vbasoftware_database, provider_cred_key, network_id, cred_termination_key, provider_cred_termination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->update_provider_cred_termination: #{e}"
end
```

#### Using the update_provider_cred_termination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTerminationVBAResponse>, Integer, Hash)> update_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key, provider_cred_termination)

```ruby
begin
  # Update ProviderCredTermination
  data, status_code, headers = api_instance.update_provider_cred_termination_with_http_info(vbasoftware_database, provider_cred_key, network_id, cred_termination_key, provider_cred_termination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTerminationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTerminationsApi->update_provider_cred_termination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **network_id** | **String** | Network ID |  |
| **cred_termination_key** | **Integer** | CredTermination Key |  |
| **provider_cred_termination** | [**ProviderCredTermination**](ProviderCredTermination.md) |  |  |

### Return type

[**ProviderCredTerminationVBAResponse**](ProviderCredTerminationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

