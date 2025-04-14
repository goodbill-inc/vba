# Vba::CredentialingConfidentialsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_confidential**](CredentialingConfidentialsApi.md#create_cred_confidential) | **POST** /credentialing-confidentials | Create CredConfidential |
| [**delete_cred_confidential**](CredentialingConfidentialsApi.md#delete_cred_confidential) | **DELETE** /credentialing-confidentials/{credConfidentialKey} | Delete CredConfidential |
| [**get_cred_confidential**](CredentialingConfidentialsApi.md#get_cred_confidential) | **GET** /credentialing-confidentials/{credConfidentialKey} | Get CredConfidential |
| [**list_cred_confidential**](CredentialingConfidentialsApi.md#list_cred_confidential) | **GET** /credentialing-confidentials | List CredConfidential |
| [**update_batch_cred_confidential**](CredentialingConfidentialsApi.md#update_batch_cred_confidential) | **PUT** /credentialing-confidentials-batch | Create or Update Batch CredConfidential |
| [**update_cred_confidential**](CredentialingConfidentialsApi.md#update_cred_confidential) | **PUT** /credentialing-confidentials/{credConfidentialKey} | Update CredConfidential |


## create_cred_confidential

> <CredConfidentialVBAResponse> create_cred_confidential(vbasoftware_database, cred_confidential)

Create CredConfidential

Creates a new CredConfidential

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_confidential = Vba::CredConfidential.new({cred_confidential_key: 37}) # CredConfidential | 

begin
  # Create CredConfidential
  result = api_instance.create_cred_confidential(vbasoftware_database, cred_confidential)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->create_cred_confidential: #{e}"
end
```

#### Using the create_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredConfidentialVBAResponse>, Integer, Hash)> create_cred_confidential_with_http_info(vbasoftware_database, cred_confidential)

```ruby
begin
  # Create CredConfidential
  data, status_code, headers = api_instance.create_cred_confidential_with_http_info(vbasoftware_database, cred_confidential)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredConfidentialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->create_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_confidential** | [**CredConfidential**](CredConfidential.md) |  |  |

### Return type

[**CredConfidentialVBAResponse**](CredConfidentialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_confidential

> delete_cred_confidential(vbasoftware_database, cred_confidential_key)

Delete CredConfidential

Deletes an CredConfidential

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_confidential_key = 56 # Integer | CredConfidential Key

begin
  # Delete CredConfidential
  api_instance.delete_cred_confidential(vbasoftware_database, cred_confidential_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->delete_cred_confidential: #{e}"
end
```

#### Using the delete_cred_confidential_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key)

```ruby
begin
  # Delete CredConfidential
  data, status_code, headers = api_instance.delete_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->delete_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_confidential_key** | **Integer** | CredConfidential Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_confidential

> <CredConfidentialVBAResponse> get_cred_confidential(vbasoftware_database, cred_confidential_key)

Get CredConfidential

Gets CredConfidential

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_confidential_key = 56 # Integer | CredConfidential Key

begin
  # Get CredConfidential
  result = api_instance.get_cred_confidential(vbasoftware_database, cred_confidential_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->get_cred_confidential: #{e}"
end
```

#### Using the get_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredConfidentialVBAResponse>, Integer, Hash)> get_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key)

```ruby
begin
  # Get CredConfidential
  data, status_code, headers = api_instance.get_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredConfidentialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->get_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_confidential_key** | **Integer** | CredConfidential Key |  |

### Return type

[**CredConfidentialVBAResponse**](CredConfidentialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_confidential

> <CredConfidentialListVBAResponse> list_cred_confidential(vbasoftware_database, opts)

List CredConfidential

Lists all CredConfidential

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredConfidential
  result = api_instance.list_cred_confidential(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->list_cred_confidential: #{e}"
end
```

#### Using the list_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredConfidentialListVBAResponse>, Integer, Hash)> list_cred_confidential_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredConfidential
  data, status_code, headers = api_instance.list_cred_confidential_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredConfidentialListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->list_cred_confidential_with_http_info: #{e}"
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

[**CredConfidentialListVBAResponse**](CredConfidentialListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_confidential

> <MultiCodeResponseListVBAResponse> update_batch_cred_confidential(vbasoftware_database, cred_confidential)

Create or Update Batch CredConfidential

Create or Update multiple CredConfidential at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_confidential = [Vba::CredConfidential.new({cred_confidential_key: 37})] # Array<CredConfidential> | 

begin
  # Create or Update Batch CredConfidential
  result = api_instance.update_batch_cred_confidential(vbasoftware_database, cred_confidential)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->update_batch_cred_confidential: #{e}"
end
```

#### Using the update_batch_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_confidential_with_http_info(vbasoftware_database, cred_confidential)

```ruby
begin
  # Create or Update Batch CredConfidential
  data, status_code, headers = api_instance.update_batch_cred_confidential_with_http_info(vbasoftware_database, cred_confidential)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->update_batch_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_confidential** | [**Array&lt;CredConfidential&gt;**](CredConfidential.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_confidential

> <CredConfidentialVBAResponse> update_cred_confidential(vbasoftware_database, cred_confidential_key, cred_confidential)

Update CredConfidential

Updates a specific CredConfidential.

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

api_instance = Vba::CredentialingConfidentialsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_confidential_key = 56 # Integer | CredConfidential Key
cred_confidential = Vba::CredConfidential.new({cred_confidential_key: 37}) # CredConfidential | 

begin
  # Update CredConfidential
  result = api_instance.update_cred_confidential(vbasoftware_database, cred_confidential_key, cred_confidential)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->update_cred_confidential: #{e}"
end
```

#### Using the update_cred_confidential_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredConfidentialVBAResponse>, Integer, Hash)> update_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key, cred_confidential)

```ruby
begin
  # Update CredConfidential
  data, status_code, headers = api_instance.update_cred_confidential_with_http_info(vbasoftware_database, cred_confidential_key, cred_confidential)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredConfidentialVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingConfidentialsApi->update_cred_confidential_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_confidential_key** | **Integer** | CredConfidential Key |  |
| **cred_confidential** | [**CredConfidential**](CredConfidential.md) |  |  |

### Return type

[**CredConfidentialVBAResponse**](CredConfidentialVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

