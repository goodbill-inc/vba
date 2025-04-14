# Vba::CredentialingAttestationTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_attestation_type**](CredentialingAttestationTypesApi.md#create_cred_attestation_type) | **POST** /credentialing-attestation-types | Create CredAttestationType |
| [**delete_cred_attestation_type**](CredentialingAttestationTypesApi.md#delete_cred_attestation_type) | **DELETE** /credentialing-attestation-types/{credAttestationTypeKey} | Delete CredAttestationType |
| [**get_cred_attestation_type**](CredentialingAttestationTypesApi.md#get_cred_attestation_type) | **GET** /credentialing-attestation-types/{credAttestationTypeKey} | Get CredAttestationType |
| [**list_cred_attestation_type**](CredentialingAttestationTypesApi.md#list_cred_attestation_type) | **GET** /credentialing-attestation-types | List CredAttestationType |
| [**update_batch_cred_attestation_type**](CredentialingAttestationTypesApi.md#update_batch_cred_attestation_type) | **PUT** /credentialing-attestation-types-batch | Create or Update Batch CredAttestationType |
| [**update_cred_attestation_type**](CredentialingAttestationTypesApi.md#update_cred_attestation_type) | **PUT** /credentialing-attestation-types/{credAttestationTypeKey} | Update CredAttestationType |


## create_cred_attestation_type

> <CredAttestationTypeVBAResponse> create_cred_attestation_type(vbasoftware_database, cred_attestation_type)

Create CredAttestationType

Creates a new CredAttestationType

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_type = Vba::CredAttestationType.new({cred_attestation_type_key: 37}) # CredAttestationType | 

begin
  # Create CredAttestationType
  result = api_instance.create_cred_attestation_type(vbasoftware_database, cred_attestation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->create_cred_attestation_type: #{e}"
end
```

#### Using the create_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationTypeVBAResponse>, Integer, Hash)> create_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type)

```ruby
begin
  # Create CredAttestationType
  data, status_code, headers = api_instance.create_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->create_cred_attestation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_type** | [**CredAttestationType**](CredAttestationType.md) |  |  |

### Return type

[**CredAttestationTypeVBAResponse**](CredAttestationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_attestation_type

> delete_cred_attestation_type(vbasoftware_database, cred_attestation_type_key)

Delete CredAttestationType

Deletes an CredAttestationType

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_type_key = 56 # Integer | CredAttestationType Key

begin
  # Delete CredAttestationType
  api_instance.delete_cred_attestation_type(vbasoftware_database, cred_attestation_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->delete_cred_attestation_type: #{e}"
end
```

#### Using the delete_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key)

```ruby
begin
  # Delete CredAttestationType
  data, status_code, headers = api_instance.delete_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->delete_cred_attestation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_type_key** | **Integer** | CredAttestationType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_attestation_type

> <CredAttestationTypeVBAResponse> get_cred_attestation_type(vbasoftware_database, cred_attestation_type_key)

Get CredAttestationType

Gets CredAttestationType

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_type_key = 56 # Integer | CredAttestationType Key

begin
  # Get CredAttestationType
  result = api_instance.get_cred_attestation_type(vbasoftware_database, cred_attestation_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->get_cred_attestation_type: #{e}"
end
```

#### Using the get_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationTypeVBAResponse>, Integer, Hash)> get_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key)

```ruby
begin
  # Get CredAttestationType
  data, status_code, headers = api_instance.get_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->get_cred_attestation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_type_key** | **Integer** | CredAttestationType Key |  |

### Return type

[**CredAttestationTypeVBAResponse**](CredAttestationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_attestation_type

> <CredAttestationTypeListVBAResponse> list_cred_attestation_type(vbasoftware_database, opts)

List CredAttestationType

Lists all CredAttestationType

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredAttestationType
  result = api_instance.list_cred_attestation_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->list_cred_attestation_type: #{e}"
end
```

#### Using the list_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationTypeListVBAResponse>, Integer, Hash)> list_cred_attestation_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredAttestationType
  data, status_code, headers = api_instance.list_cred_attestation_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->list_cred_attestation_type_with_http_info: #{e}"
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

[**CredAttestationTypeListVBAResponse**](CredAttestationTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_attestation_type

> <MultiCodeResponseListVBAResponse> update_batch_cred_attestation_type(vbasoftware_database, cred_attestation_type)

Create or Update Batch CredAttestationType

Create or Update multiple CredAttestationType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_type = [Vba::CredAttestationType.new({cred_attestation_type_key: 37})] # Array<CredAttestationType> | 

begin
  # Create or Update Batch CredAttestationType
  result = api_instance.update_batch_cred_attestation_type(vbasoftware_database, cred_attestation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->update_batch_cred_attestation_type: #{e}"
end
```

#### Using the update_batch_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type)

```ruby
begin
  # Create or Update Batch CredAttestationType
  data, status_code, headers = api_instance.update_batch_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->update_batch_cred_attestation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_type** | [**Array&lt;CredAttestationType&gt;**](CredAttestationType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_attestation_type

> <CredAttestationTypeVBAResponse> update_cred_attestation_type(vbasoftware_database, cred_attestation_type_key, cred_attestation_type)

Update CredAttestationType

Updates a specific CredAttestationType.

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

api_instance = Vba::CredentialingAttestationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_type_key = 56 # Integer | CredAttestationType Key
cred_attestation_type = Vba::CredAttestationType.new({cred_attestation_type_key: 37}) # CredAttestationType | 

begin
  # Update CredAttestationType
  result = api_instance.update_cred_attestation_type(vbasoftware_database, cred_attestation_type_key, cred_attestation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->update_cred_attestation_type: #{e}"
end
```

#### Using the update_cred_attestation_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationTypeVBAResponse>, Integer, Hash)> update_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key, cred_attestation_type)

```ruby
begin
  # Update CredAttestationType
  data, status_code, headers = api_instance.update_cred_attestation_type_with_http_info(vbasoftware_database, cred_attestation_type_key, cred_attestation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationTypesApi->update_cred_attestation_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_type_key** | **Integer** | CredAttestationType Key |  |
| **cred_attestation_type** | [**CredAttestationType**](CredAttestationType.md) |  |  |

### Return type

[**CredAttestationTypeVBAResponse**](CredAttestationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

