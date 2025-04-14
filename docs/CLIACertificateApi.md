# Vba::CLIACertificateApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_clia_certificate**](CLIACertificateApi.md#create_clia_certificate) | **POST** /clia-certificates | Create CLIACertificate |
| [**delete_clia_certificate**](CLIACertificateApi.md#delete_clia_certificate) | **DELETE** /clia-certificates/{certificateId} | Delete CLIACertificate |
| [**get_clia_certificate**](CLIACertificateApi.md#get_clia_certificate) | **GET** /clia-certificates/{certificateId} | Get CLIACertificate |
| [**list_clia_certificates**](CLIACertificateApi.md#list_clia_certificates) | **GET** /clia-certificates | List CLIACertificate |
| [**update_batch_clia_certificate**](CLIACertificateApi.md#update_batch_clia_certificate) | **PUT** /clia-certificates-batch | Create or Update Batch CLIACertificate |
| [**update_clia_certificate**](CLIACertificateApi.md#update_clia_certificate) | **PUT** /clia-certificates/{certificateId} | Update CLIACertificate |


## create_clia_certificate

> <CLIACertificateVBAResponse> create_clia_certificate(vbasoftware_database, clia_certificate)

Create CLIACertificate

Creates a new CLIACertificate

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
clia_certificate = Vba::CLIACertificate.new({certificate_id: 37}) # CLIACertificate | 

begin
  # Create CLIACertificate
  result = api_instance.create_clia_certificate(vbasoftware_database, clia_certificate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->create_clia_certificate: #{e}"
end
```

#### Using the create_clia_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateVBAResponse>, Integer, Hash)> create_clia_certificate_with_http_info(vbasoftware_database, clia_certificate)

```ruby
begin
  # Create CLIACertificate
  data, status_code, headers = api_instance.create_clia_certificate_with_http_info(vbasoftware_database, clia_certificate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->create_clia_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **clia_certificate** | [**CLIACertificate**](CLIACertificate.md) |  |  |

### Return type

[**CLIACertificateVBAResponse**](CLIACertificateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_clia_certificate

> delete_clia_certificate(vbasoftware_database, certificate_id)

Delete CLIACertificate

Deletes an CLIACertificate

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID

begin
  # Delete CLIACertificate
  api_instance.delete_clia_certificate(vbasoftware_database, certificate_id)
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->delete_clia_certificate: #{e}"
end
```

#### Using the delete_clia_certificate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_clia_certificate_with_http_info(vbasoftware_database, certificate_id)

```ruby
begin
  # Delete CLIACertificate
  data, status_code, headers = api_instance.delete_clia_certificate_with_http_info(vbasoftware_database, certificate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->delete_clia_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_clia_certificate

> <CLIACertificateVBAResponse> get_clia_certificate(vbasoftware_database, certificate_id)

Get CLIACertificate

Gets CLIACertificate

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID

begin
  # Get CLIACertificate
  result = api_instance.get_clia_certificate(vbasoftware_database, certificate_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->get_clia_certificate: #{e}"
end
```

#### Using the get_clia_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateVBAResponse>, Integer, Hash)> get_clia_certificate_with_http_info(vbasoftware_database, certificate_id)

```ruby
begin
  # Get CLIACertificate
  data, status_code, headers = api_instance.get_clia_certificate_with_http_info(vbasoftware_database, certificate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->get_clia_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |

### Return type

[**CLIACertificateVBAResponse**](CLIACertificateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_clia_certificates

> <CLIACertificateListVBAResponse> list_clia_certificates(vbasoftware_database)

List CLIACertificate

Lists all CLIACertificate given a specific 

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List CLIACertificate
  result = api_instance.list_clia_certificates(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->list_clia_certificates: #{e}"
end
```

#### Using the list_clia_certificates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateListVBAResponse>, Integer, Hash)> list_clia_certificates_with_http_info(vbasoftware_database)

```ruby
begin
  # List CLIACertificate
  data, status_code, headers = api_instance.list_clia_certificates_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->list_clia_certificates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**CLIACertificateListVBAResponse**](CLIACertificateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_clia_certificate

> <MultiCodeResponseListVBAResponse> update_batch_clia_certificate(vbasoftware_database, clia_certificate)

Create or Update Batch CLIACertificate

Create or Update multiple CLIACertificate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
clia_certificate = [Vba::CLIACertificate.new({certificate_id: 37})] # Array<CLIACertificate> | 

begin
  # Create or Update Batch CLIACertificate
  result = api_instance.update_batch_clia_certificate(vbasoftware_database, clia_certificate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->update_batch_clia_certificate: #{e}"
end
```

#### Using the update_batch_clia_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_clia_certificate_with_http_info(vbasoftware_database, clia_certificate)

```ruby
begin
  # Create or Update Batch CLIACertificate
  data, status_code, headers = api_instance.update_batch_clia_certificate_with_http_info(vbasoftware_database, clia_certificate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->update_batch_clia_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **clia_certificate** | [**Array&lt;CLIACertificate&gt;**](CLIACertificate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_clia_certificate

> <CLIACertificateVBAResponse> update_clia_certificate(vbasoftware_database, certificate_id, clia_certificate)

Update CLIACertificate

Updates a specific CLIACertificate.

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

api_instance = Vba::CLIACertificateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
clia_certificate = Vba::CLIACertificate.new({certificate_id: 37}) # CLIACertificate | 

begin
  # Update CLIACertificate
  result = api_instance.update_clia_certificate(vbasoftware_database, certificate_id, clia_certificate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->update_clia_certificate: #{e}"
end
```

#### Using the update_clia_certificate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateVBAResponse>, Integer, Hash)> update_clia_certificate_with_http_info(vbasoftware_database, certificate_id, clia_certificate)

```ruby
begin
  # Update CLIACertificate
  data, status_code, headers = api_instance.update_clia_certificate_with_http_info(vbasoftware_database, certificate_id, clia_certificate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateApi->update_clia_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **clia_certificate** | [**CLIACertificate**](CLIACertificate.md) |  |  |

### Return type

[**CLIACertificateVBAResponse**](CLIACertificateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

