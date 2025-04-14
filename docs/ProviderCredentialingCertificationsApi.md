# Vba::ProviderCredentialingCertificationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#create_provider_cred_certification) | **POST** /provider-credentialing/{providerCredKey}/certifications | Create ProviderCredCertification |
| [**delete_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#delete_provider_cred_certification) | **DELETE** /provider-credentialing/{providerCredKey}/certifications/{providerCredCertificationKey} | Delete ProviderCredCertification |
| [**get_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#get_provider_cred_certification) | **GET** /provider-credentialing/{providerCredKey}/certifications/{providerCredCertificationKey} | Get ProviderCredCertification |
| [**list_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#list_provider_cred_certification) | **GET** /provider-credentialing/{providerCredKey}/certifications | List ProviderCredCertification |
| [**update_batch_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#update_batch_provider_cred_certification) | **PUT** /provider-credentialing/{providerCredKey}/certifications-batch | Create or Update Batch ProviderCredCertification |
| [**update_provider_cred_certification**](ProviderCredentialingCertificationsApi.md#update_provider_cred_certification) | **PUT** /provider-credentialing/{providerCredKey}/certifications/{providerCredCertificationKey} | Update ProviderCredCertification |


## create_provider_cred_certification

> <ProviderCredCertificationVBAResponse> create_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification)

Create ProviderCredCertification

Creates a new ProviderCredCertification

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_certification = Vba::ProviderCredCertification.new({provider_cred_certification_key: 37, cred_certification_key: 37, provider_cred_key: 37}) # ProviderCredCertification | 

begin
  # Create ProviderCredCertification
  result = api_instance.create_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->create_provider_cred_certification: #{e}"
end
```

#### Using the create_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCertificationVBAResponse>, Integer, Hash)> create_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification)

```ruby
begin
  # Create ProviderCredCertification
  data, status_code, headers = api_instance.create_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->create_provider_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_certification** | [**ProviderCredCertification**](ProviderCredCertification.md) |  |  |

### Return type

[**ProviderCredCertificationVBAResponse**](ProviderCredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_certification

> delete_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key)

Delete ProviderCredCertification

Deletes an ProviderCredCertification

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_certification_key = 56 # Integer | ProviderCredCertification Key

begin
  # Delete ProviderCredCertification
  api_instance.delete_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->delete_provider_cred_certification: #{e}"
end
```

#### Using the delete_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key)

```ruby
begin
  # Delete ProviderCredCertification
  data, status_code, headers = api_instance.delete_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->delete_provider_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_certification_key** | **Integer** | ProviderCredCertification Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_certification

> <ProviderCredCertificationVBAResponse> get_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key)

Get ProviderCredCertification

Gets ProviderCredCertification

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_certification_key = 56 # Integer | ProviderCredCertification Key

begin
  # Get ProviderCredCertification
  result = api_instance.get_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->get_provider_cred_certification: #{e}"
end
```

#### Using the get_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCertificationVBAResponse>, Integer, Hash)> get_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key)

```ruby
begin
  # Get ProviderCredCertification
  data, status_code, headers = api_instance.get_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->get_provider_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_certification_key** | **Integer** | ProviderCredCertification Key |  |

### Return type

[**ProviderCredCertificationVBAResponse**](ProviderCredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_certification

> <ProviderCredCertificationListVBAResponse> list_provider_cred_certification(vbasoftware_database, provider_cred_key, opts)

List ProviderCredCertification

Lists all ProviderCredCertification for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredCertification
  result = api_instance.list_provider_cred_certification(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->list_provider_cred_certification: #{e}"
end
```

#### Using the list_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCertificationListVBAResponse>, Integer, Hash)> list_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredCertification
  data, status_code, headers = api_instance.list_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCertificationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->list_provider_cred_certification_with_http_info: #{e}"
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

[**ProviderCredCertificationListVBAResponse**](ProviderCredCertificationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_certification

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification)

Create or Update Batch ProviderCredCertification

Create or Update multiple ProviderCredCertification at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_certification = [Vba::ProviderCredCertification.new({provider_cred_certification_key: 37, cred_certification_key: 37, provider_cred_key: 37})] # Array<ProviderCredCertification> | 

begin
  # Create or Update Batch ProviderCredCertification
  result = api_instance.update_batch_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->update_batch_provider_cred_certification: #{e}"
end
```

#### Using the update_batch_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification)

```ruby
begin
  # Create or Update Batch ProviderCredCertification
  data, status_code, headers = api_instance.update_batch_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->update_batch_provider_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_certification** | [**Array&lt;ProviderCredCertification&gt;**](ProviderCredCertification.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_certification

> <ProviderCredCertificationVBAResponse> update_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key, provider_cred_certification)

Update ProviderCredCertification

Updates a specific ProviderCredCertification.

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

api_instance = Vba::ProviderCredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_certification_key = 56 # Integer | ProviderCredCertification Key
provider_cred_certification = Vba::ProviderCredCertification.new({provider_cred_certification_key: 37, cred_certification_key: 37, provider_cred_key: 37}) # ProviderCredCertification | 

begin
  # Update ProviderCredCertification
  result = api_instance.update_provider_cred_certification(vbasoftware_database, provider_cred_key, provider_cred_certification_key, provider_cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->update_provider_cred_certification: #{e}"
end
```

#### Using the update_provider_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCertificationVBAResponse>, Integer, Hash)> update_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key, provider_cred_certification)

```ruby
begin
  # Update ProviderCredCertification
  data, status_code, headers = api_instance.update_provider_cred_certification_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_certification_key, provider_cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCertificationsApi->update_provider_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_certification_key** | **Integer** | ProviderCredCertification Key |  |
| **provider_cred_certification** | [**ProviderCredCertification**](ProviderCredCertification.md) |  |  |

### Return type

[**ProviderCredCertificationVBAResponse**](ProviderCredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

