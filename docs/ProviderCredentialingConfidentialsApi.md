# Vba::ProviderCredentialingConfidentialsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_provider_cred_confidential**](ProviderCredentialingConfidentialsApi.md#create_batch_provider_cred_confidential) | **PUT** /provider-credentialing/{providerCredKey}/confidentials-batch | Create Batch ProviderCredConfidential |
| [**create_provider_cred_confidential**](ProviderCredentialingConfidentialsApi.md#create_provider_cred_confidential) | **POST** /provider-credentialing/{providerCredKey}/confidentials | Create ProviderCredConfidential |
| [**delete_provider_cred_confidential**](ProviderCredentialingConfidentialsApi.md#delete_provider_cred_confidential) | **DELETE** /provider-credentialing/{providerCredKey}/confidentials/{credConfidentialKey} | Delete ProviderCredConfidential |
| [**get_provider_cred_confidential**](ProviderCredentialingConfidentialsApi.md#get_provider_cred_confidential) | **GET** /provider-credentialing/{providerCredKey}/confidentials/{credConfidentialKey} | Get ProviderCredConfidential |
| [**list_provider_cred_confidential**](ProviderCredentialingConfidentialsApi.md#list_provider_cred_confidential) | **GET** /provider-credentialing/{providerCredKey}/confidentials | List ProviderCredConfidential |


## create_batch_provider_cred_confidential

> <MultiCodeResponseListVBAResponse> create_batch_provider_cred_confidential(vbasoftware_database, provider_cred_key, provider_cred_confidential)

Create Batch ProviderCredConfidential

Create or Update multiple ProviderCredConfidential at once.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_confidential = [Vba::ProviderCredConfidential.new({provider_cred_key: 37, cred_confidential_key: 37})] # Array<ProviderCredConfidential> | 

begin
  # Create Batch ProviderCredConfidential
  result = api_instance.create_batch_provider_cred_confidential(vbasoftware_database, provider_cred_key, provider_cred_confidential)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->create_batch_provider_cred_confidential: #{e}"
end
```

#### Using the create_batch_provider_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_batch_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_confidential)

```ruby
begin
  # Create Batch ProviderCredConfidential
  data, status_code, headers = api_instance.create_batch_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_confidential)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->create_batch_provider_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_confidential** | [**Array&lt;ProviderCredConfidential&gt;**](ProviderCredConfidential.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_provider_cred_confidential

> <ProviderCredConfidentialVBAResponse> create_provider_cred_confidential(vbasoftware_database, provider_cred_key, provider_cred_confidential)

Create ProviderCredConfidential

Creates a new ProviderCredConfidential

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

api_instance = Vba::ProviderCredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_confidential = Vba::ProviderCredConfidential.new({provider_cred_key: 37, cred_confidential_key: 37}) # ProviderCredConfidential | 

begin
  # Create ProviderCredConfidential
  result = api_instance.create_provider_cred_confidential(vbasoftware_database, provider_cred_key, provider_cred_confidential)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->create_provider_cred_confidential: #{e}"
end
```

#### Using the create_provider_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredConfidentialVBAResponse>, Integer, Hash)> create_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_confidential)

```ruby
begin
  # Create ProviderCredConfidential
  data, status_code, headers = api_instance.create_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_confidential)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredConfidentialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->create_provider_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_confidential** | [**ProviderCredConfidential**](ProviderCredConfidential.md) |  |  |

### Return type

[**ProviderCredConfidentialVBAResponse**](ProviderCredConfidentialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_confidential

> delete_provider_cred_confidential(vbasoftware_database, provider_cred_key, cred_confidential_key)

Delete ProviderCredConfidential

Deletes an ProviderCredConfidential

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

api_instance = Vba::ProviderCredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_confidential_key = 56 # Integer | CredConfidential Key

begin
  # Delete ProviderCredConfidential
  api_instance.delete_provider_cred_confidential(vbasoftware_database, provider_cred_key, cred_confidential_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->delete_provider_cred_confidential: #{e}"
end
```

#### Using the delete_provider_cred_confidential_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, cred_confidential_key)

```ruby
begin
  # Delete ProviderCredConfidential
  data, status_code, headers = api_instance.delete_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, cred_confidential_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->delete_provider_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_confidential_key** | **Integer** | CredConfidential Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_confidential

> <ProviderCredConfidentialVBAResponse> get_provider_cred_confidential(vbasoftware_database, provider_cred_key, cred_confidential_key)

Get ProviderCredConfidential

Gets ProviderCredConfidential

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

api_instance = Vba::ProviderCredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_confidential_key = 56 # Integer | CredConfidential Key

begin
  # Get ProviderCredConfidential
  result = api_instance.get_provider_cred_confidential(vbasoftware_database, provider_cred_key, cred_confidential_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->get_provider_cred_confidential: #{e}"
end
```

#### Using the get_provider_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredConfidentialVBAResponse>, Integer, Hash)> get_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, cred_confidential_key)

```ruby
begin
  # Get ProviderCredConfidential
  data, status_code, headers = api_instance.get_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, cred_confidential_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredConfidentialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->get_provider_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_confidential_key** | **Integer** | CredConfidential Key |  |

### Return type

[**ProviderCredConfidentialVBAResponse**](ProviderCredConfidentialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_confidential

> <ProviderCredConfidentialListVBAResponse> list_provider_cred_confidential(vbasoftware_database, provider_cred_key, opts)

List ProviderCredConfidential

Lists all ProviderCredConfidential for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredConfidential
  result = api_instance.list_provider_cred_confidential(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->list_provider_cred_confidential: #{e}"
end
```

#### Using the list_provider_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredConfidentialListVBAResponse>, Integer, Hash)> list_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredConfidential
  data, status_code, headers = api_instance.list_provider_cred_confidential_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredConfidentialListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingConfidentialsApi->list_provider_cred_confidential_with_http_info: #{e}"
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

[**ProviderCredConfidentialListVBAResponse**](ProviderCredConfidentialListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

