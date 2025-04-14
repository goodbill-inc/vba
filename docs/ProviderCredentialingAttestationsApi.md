# Vba::ProviderCredentialingAttestationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#create_provider_cred_attestation) | **POST** /provider-credentialing/{providerCredKey}/attestations | Create ProviderCredAttestation |
| [**delete_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#delete_provider_cred_attestation) | **DELETE** /provider-credentialing/{providerCredKey}/attestations/{providerCredAttestationKey} | Delete ProviderCredAttestation |
| [**get_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#get_provider_cred_attestation) | **GET** /provider-credentialing/{providerCredKey}/attestations/{providerCredAttestationKey} | Get ProviderCredAttestation |
| [**list_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#list_provider_cred_attestation) | **GET** /provider-credentialing/{providerCredKey}/attestations | List ProviderCredAttestation |
| [**update_batch_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#update_batch_provider_cred_attestation) | **PUT** /provider-credentialing/{providerCredKey}/attestations-batch | Create or Update Batch ProviderCredAttestation |
| [**update_provider_cred_attestation**](ProviderCredentialingAttestationsApi.md#update_provider_cred_attestation) | **PUT** /provider-credentialing/{providerCredKey}/attestations/{providerCredAttestationKey} | Update ProviderCredAttestation |


## create_provider_cred_attestation

> <ProviderCredAttestationVBAResponse> create_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation)

Create ProviderCredAttestation

Creates a new ProviderCredAttestation

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_attestation = Vba::ProviderCredAttestation.new({provider_cred_attestation_key: 37, cred_attestation_question_key: 37, provider_cred_key: 37}) # ProviderCredAttestation | 

begin
  # Create ProviderCredAttestation
  result = api_instance.create_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->create_provider_cred_attestation: #{e}"
end
```

#### Using the create_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredAttestationVBAResponse>, Integer, Hash)> create_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation)

```ruby
begin
  # Create ProviderCredAttestation
  data, status_code, headers = api_instance.create_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredAttestationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->create_provider_cred_attestation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_attestation** | [**ProviderCredAttestation**](ProviderCredAttestation.md) |  |  |

### Return type

[**ProviderCredAttestationVBAResponse**](ProviderCredAttestationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_attestation

> delete_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)

Delete ProviderCredAttestation

Deletes an ProviderCredAttestation

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_attestation_key = 56 # Integer | ProviderCredAttestation Key

begin
  # Delete ProviderCredAttestation
  api_instance.delete_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->delete_provider_cred_attestation: #{e}"
end
```

#### Using the delete_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)

```ruby
begin
  # Delete ProviderCredAttestation
  data, status_code, headers = api_instance.delete_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->delete_provider_cred_attestation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_attestation_key** | **Integer** | ProviderCredAttestation Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_attestation

> <ProviderCredAttestationVBAResponse> get_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)

Get ProviderCredAttestation

Gets ProviderCredAttestation

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_attestation_key = 56 # Integer | ProviderCredAttestation Key

begin
  # Get ProviderCredAttestation
  result = api_instance.get_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->get_provider_cred_attestation: #{e}"
end
```

#### Using the get_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredAttestationVBAResponse>, Integer, Hash)> get_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)

```ruby
begin
  # Get ProviderCredAttestation
  data, status_code, headers = api_instance.get_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredAttestationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->get_provider_cred_attestation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_attestation_key** | **Integer** | ProviderCredAttestation Key |  |

### Return type

[**ProviderCredAttestationVBAResponse**](ProviderCredAttestationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_attestation

> <ProviderCredAttestationListVBAResponse> list_provider_cred_attestation(vbasoftware_database, provider_cred_key, opts)

List ProviderCredAttestation

Lists all ProviderCredAttestation for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredAttestation
  result = api_instance.list_provider_cred_attestation(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->list_provider_cred_attestation: #{e}"
end
```

#### Using the list_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredAttestationListVBAResponse>, Integer, Hash)> list_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredAttestation
  data, status_code, headers = api_instance.list_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredAttestationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->list_provider_cred_attestation_with_http_info: #{e}"
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

[**ProviderCredAttestationListVBAResponse**](ProviderCredAttestationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_attestation

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation)

Create or Update Batch ProviderCredAttestation

Create or Update multiple ProviderCredAttestation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_attestation = [Vba::ProviderCredAttestation.new({provider_cred_attestation_key: 37, cred_attestation_question_key: 37, provider_cred_key: 37})] # Array<ProviderCredAttestation> | 

begin
  # Create or Update Batch ProviderCredAttestation
  result = api_instance.update_batch_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->update_batch_provider_cred_attestation: #{e}"
end
```

#### Using the update_batch_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation)

```ruby
begin
  # Create or Update Batch ProviderCredAttestation
  data, status_code, headers = api_instance.update_batch_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->update_batch_provider_cred_attestation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_attestation** | [**Array&lt;ProviderCredAttestation&gt;**](ProviderCredAttestation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_attestation

> <ProviderCredAttestationVBAResponse> update_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key, provider_cred_attestation)

Update ProviderCredAttestation

Updates a specific ProviderCredAttestation.

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

api_instance = Vba::ProviderCredentialingAttestationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_attestation_key = 56 # Integer | ProviderCredAttestation Key
provider_cred_attestation = Vba::ProviderCredAttestation.new({provider_cred_attestation_key: 37, cred_attestation_question_key: 37, provider_cred_key: 37}) # ProviderCredAttestation | 

begin
  # Update ProviderCredAttestation
  result = api_instance.update_provider_cred_attestation(vbasoftware_database, provider_cred_key, provider_cred_attestation_key, provider_cred_attestation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->update_provider_cred_attestation: #{e}"
end
```

#### Using the update_provider_cred_attestation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredAttestationVBAResponse>, Integer, Hash)> update_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key, provider_cred_attestation)

```ruby
begin
  # Update ProviderCredAttestation
  data, status_code, headers = api_instance.update_provider_cred_attestation_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_attestation_key, provider_cred_attestation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredAttestationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingAttestationsApi->update_provider_cred_attestation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_attestation_key** | **Integer** | ProviderCredAttestation Key |  |
| **provider_cred_attestation** | [**ProviderCredAttestation**](ProviderCredAttestation.md) |  |  |

### Return type

[**ProviderCredAttestationVBAResponse**](ProviderCredAttestationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

