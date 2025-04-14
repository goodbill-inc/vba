# Vba::ProviderCredentialingMalpracticeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#create_provider_cred_malpractice) | **POST** /provider-credentialing/{providerCredKey}/malpractice | Create ProviderCredMalpractice |
| [**delete_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#delete_provider_cred_malpractice) | **DELETE** /provider-credentialing/{providerCredKey}/malpractice/{credCarrierKey}/{policyNumber} | Delete ProviderCredMalpractice |
| [**get_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#get_provider_cred_malpractice) | **GET** /provider-credentialing/{providerCredKey}/malpractice/{credCarrierKey}/{policyNumber} | Get ProviderCredMalpractice |
| [**list_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#list_provider_cred_malpractice) | **GET** /provider-credentialing/{providerCredKey}/malpractice | List ProviderCredMalpractice |
| [**update_batch_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#update_batch_provider_cred_malpractice) | **PUT** /provider-credentialing/{providerCredKey}/malpractice-batch | Create or Update Batch ProviderCredMalpractice |
| [**update_provider_cred_malpractice**](ProviderCredentialingMalpracticeApi.md#update_provider_cred_malpractice) | **PUT** /provider-credentialing/{providerCredKey}/malpractice/{credCarrierKey}/{policyNumber} | Update ProviderCredMalpractice |


## create_provider_cred_malpractice

> <ProviderCredMalpracticeVBAResponse> create_provider_cred_malpractice(vbasoftware_database, provider_cred_key, provider_cred_malpractice)

Create ProviderCredMalpractice

Creates a new ProviderCredMalpractice

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_malpractice = Vba::ProviderCredMalpractice.new({provider_cred_key: 37, cred_carrier_key: 37, policy_number: 'policy_number_example'}) # ProviderCredMalpractice | 

begin
  # Create ProviderCredMalpractice
  result = api_instance.create_provider_cred_malpractice(vbasoftware_database, provider_cred_key, provider_cred_malpractice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->create_provider_cred_malpractice: #{e}"
end
```

#### Using the create_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredMalpracticeVBAResponse>, Integer, Hash)> create_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_malpractice)

```ruby
begin
  # Create ProviderCredMalpractice
  data, status_code, headers = api_instance.create_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_malpractice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredMalpracticeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->create_provider_cred_malpractice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_malpractice** | [**ProviderCredMalpractice**](ProviderCredMalpractice.md) |  |  |

### Return type

[**ProviderCredMalpracticeVBAResponse**](ProviderCredMalpracticeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_malpractice

> delete_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)

Delete ProviderCredMalpractice

Deletes an ProviderCredMalpractice

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_carrier_key = 56 # Integer | CredCarrier Key
policy_number = 'policy_number_example' # String | Policy Number

begin
  # Delete ProviderCredMalpractice
  api_instance.delete_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->delete_provider_cred_malpractice: #{e}"
end
```

#### Using the delete_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)

```ruby
begin
  # Delete ProviderCredMalpractice
  data, status_code, headers = api_instance.delete_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->delete_provider_cred_malpractice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |
| **policy_number** | **String** | Policy Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_malpractice

> <ProviderCredMalpracticeVBAResponse> get_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)

Get ProviderCredMalpractice

Gets ProviderCredMalpractice

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_carrier_key = 56 # Integer | CredCarrier Key
policy_number = 'policy_number_example' # String | Policy Number

begin
  # Get ProviderCredMalpractice
  result = api_instance.get_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->get_provider_cred_malpractice: #{e}"
end
```

#### Using the get_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredMalpracticeVBAResponse>, Integer, Hash)> get_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)

```ruby
begin
  # Get ProviderCredMalpractice
  data, status_code, headers = api_instance.get_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredMalpracticeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->get_provider_cred_malpractice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |
| **policy_number** | **String** | Policy Number |  |

### Return type

[**ProviderCredMalpracticeVBAResponse**](ProviderCredMalpracticeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_malpractice

> <ProviderCredMalpracticeListVBAResponse> list_provider_cred_malpractice(vbasoftware_database, provider_cred_key, opts)

List ProviderCredMalpractice

Lists all ProviderCredMalpractice for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredMalpractice
  result = api_instance.list_provider_cred_malpractice(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->list_provider_cred_malpractice: #{e}"
end
```

#### Using the list_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredMalpracticeListVBAResponse>, Integer, Hash)> list_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredMalpractice
  data, status_code, headers = api_instance.list_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredMalpracticeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->list_provider_cred_malpractice_with_http_info: #{e}"
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

[**ProviderCredMalpracticeListVBAResponse**](ProviderCredMalpracticeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_malpractice

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_malpractice(vbasoftware_database, provider_cred_key, provider_cred_malpractice)

Create or Update Batch ProviderCredMalpractice

Create or Update multiple ProviderCredMalpractice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_malpractice = [Vba::ProviderCredMalpractice.new({provider_cred_key: 37, cred_carrier_key: 37, policy_number: 'policy_number_example'})] # Array<ProviderCredMalpractice> | 

begin
  # Create or Update Batch ProviderCredMalpractice
  result = api_instance.update_batch_provider_cred_malpractice(vbasoftware_database, provider_cred_key, provider_cred_malpractice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->update_batch_provider_cred_malpractice: #{e}"
end
```

#### Using the update_batch_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_malpractice)

```ruby
begin
  # Create or Update Batch ProviderCredMalpractice
  data, status_code, headers = api_instance.update_batch_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_malpractice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->update_batch_provider_cred_malpractice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_malpractice** | [**Array&lt;ProviderCredMalpractice&gt;**](ProviderCredMalpractice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_malpractice

> <ProviderCredMalpracticeVBAResponse> update_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number, provider_cred_malpractice)

Update ProviderCredMalpractice

Updates a specific ProviderCredMalpractice.

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

api_instance = Vba::ProviderCredentialingMalpracticeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_carrier_key = 56 # Integer | CredCarrier Key
policy_number = 'policy_number_example' # String | Policy Number
provider_cred_malpractice = Vba::ProviderCredMalpractice.new({provider_cred_key: 37, cred_carrier_key: 37, policy_number: 'policy_number_example'}) # ProviderCredMalpractice | 

begin
  # Update ProviderCredMalpractice
  result = api_instance.update_provider_cred_malpractice(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number, provider_cred_malpractice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->update_provider_cred_malpractice: #{e}"
end
```

#### Using the update_provider_cred_malpractice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredMalpracticeVBAResponse>, Integer, Hash)> update_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number, provider_cred_malpractice)

```ruby
begin
  # Update ProviderCredMalpractice
  data, status_code, headers = api_instance.update_provider_cred_malpractice_with_http_info(vbasoftware_database, provider_cred_key, cred_carrier_key, policy_number, provider_cred_malpractice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredMalpracticeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingMalpracticeApi->update_provider_cred_malpractice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |
| **policy_number** | **String** | Policy Number |  |
| **provider_cred_malpractice** | [**ProviderCredMalpractice**](ProviderCredMalpractice.md) |  |  |

### Return type

[**ProviderCredMalpracticeVBAResponse**](ProviderCredMalpracticeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

