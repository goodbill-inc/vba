# Vba::HIPAARelationshipsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_relationship**](HIPAARelationshipsApi.md#create_hipaa_relationship) | **POST** /hipaa-relationships | Create HIPAARelationship |
| [**delete_hipaa_relationship**](HIPAARelationshipsApi.md#delete_hipaa_relationship) | **DELETE** /hipaa-relationships/{hIPAACode} | Delete HIPAARelationship |
| [**get_hipaa_relationship**](HIPAARelationshipsApi.md#get_hipaa_relationship) | **GET** /hipaa-relationships/{hIPAACode} | Get HIPAARelationship |
| [**list_hipaa_relationship**](HIPAARelationshipsApi.md#list_hipaa_relationship) | **GET** /hipaa-relationships | List HIPAARelationship |
| [**update_batch_hipaa_relationship**](HIPAARelationshipsApi.md#update_batch_hipaa_relationship) | **PUT** /hipaa-relationships-batch | Create or Update Batch HIPAARelationship |
| [**update_hipaa_relationship**](HIPAARelationshipsApi.md#update_hipaa_relationship) | **PUT** /hipaa-relationships/{hIPAACode} | Update HIPAARelationship |


## create_hipaa_relationship

> <HIPAARelationshipVBAResponse> create_hipaa_relationship(vbasoftware_database, hipaa_relationship)

Create HIPAARelationship

Creates a new HIPAARelationship

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_relationship = Vba::HIPAARelationship.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAARelationship | 

begin
  # Create HIPAARelationship
  result = api_instance.create_hipaa_relationship(vbasoftware_database, hipaa_relationship)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->create_hipaa_relationship: #{e}"
end
```

#### Using the create_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAARelationshipVBAResponse>, Integer, Hash)> create_hipaa_relationship_with_http_info(vbasoftware_database, hipaa_relationship)

```ruby
begin
  # Create HIPAARelationship
  data, status_code, headers = api_instance.create_hipaa_relationship_with_http_info(vbasoftware_database, hipaa_relationship)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAARelationshipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->create_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_relationship** | [**HIPAARelationship**](HIPAARelationship.md) |  |  |

### Return type

[**HIPAARelationshipVBAResponse**](HIPAARelationshipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_relationship

> delete_hipaa_relationship(vbasoftware_database, h_ipaa_code)

Delete HIPAARelationship

Deletes an HIPAARelationship

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAARelationship
  api_instance.delete_hipaa_relationship(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->delete_hipaa_relationship: #{e}"
end
```

#### Using the delete_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAARelationship
  data, status_code, headers = api_instance.delete_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->delete_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_hipaa_relationship

> <HIPAARelationshipVBAResponse> get_hipaa_relationship(vbasoftware_database, h_ipaa_code)

Get HIPAARelationship

Gets HIPAARelationship

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAARelationship
  result = api_instance.get_hipaa_relationship(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->get_hipaa_relationship: #{e}"
end
```

#### Using the get_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAARelationshipVBAResponse>, Integer, Hash)> get_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAARelationship
  data, status_code, headers = api_instance.get_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAARelationshipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->get_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAARelationshipVBAResponse**](HIPAARelationshipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_relationship

> <HIPAARelationshipListVBAResponse> list_hipaa_relationship(vbasoftware_database)

List HIPAARelationship

Lists all HIPAARelationship given a specific 

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAARelationship
  result = api_instance.list_hipaa_relationship(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->list_hipaa_relationship: #{e}"
end
```

#### Using the list_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAARelationshipListVBAResponse>, Integer, Hash)> list_hipaa_relationship_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAARelationship
  data, status_code, headers = api_instance.list_hipaa_relationship_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAARelationshipListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->list_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAARelationshipListVBAResponse**](HIPAARelationshipListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_relationship

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_relationship(vbasoftware_database, hipaa_relationship)

Create or Update Batch HIPAARelationship

Create or Update multiple HIPAARelationship at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_relationship = [Vba::HIPAARelationship.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAARelationship> | 

begin
  # Create or Update Batch HIPAARelationship
  result = api_instance.update_batch_hipaa_relationship(vbasoftware_database, hipaa_relationship)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->update_batch_hipaa_relationship: #{e}"
end
```

#### Using the update_batch_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_relationship_with_http_info(vbasoftware_database, hipaa_relationship)

```ruby
begin
  # Create or Update Batch HIPAARelationship
  data, status_code, headers = api_instance.update_batch_hipaa_relationship_with_http_info(vbasoftware_database, hipaa_relationship)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->update_batch_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_relationship** | [**Array&lt;HIPAARelationship&gt;**](HIPAARelationship.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_relationship

> <HIPAARelationshipVBAResponse> update_hipaa_relationship(vbasoftware_database, h_ipaa_code, hipaa_relationship)

Update HIPAARelationship

Updates a specific HIPAARelationship.

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

api_instance = Vba::HIPAARelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_relationship = Vba::HIPAARelationship.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAARelationship | 

begin
  # Update HIPAARelationship
  result = api_instance.update_hipaa_relationship(vbasoftware_database, h_ipaa_code, hipaa_relationship)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->update_hipaa_relationship: #{e}"
end
```

#### Using the update_hipaa_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAARelationshipVBAResponse>, Integer, Hash)> update_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_relationship)

```ruby
begin
  # Update HIPAARelationship
  data, status_code, headers = api_instance.update_hipaa_relationship_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_relationship)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAARelationshipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAARelationshipsApi->update_hipaa_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_relationship** | [**HIPAARelationship**](HIPAARelationship.md) |  |  |

### Return type

[**HIPAARelationshipVBAResponse**](HIPAARelationshipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

