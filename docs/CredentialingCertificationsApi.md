# Vba::CredentialingCertificationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_certification**](CredentialingCertificationsApi.md#create_cred_certification) | **POST** /credentialing-certifications | Create CredCertification |
| [**delete_cred_certification**](CredentialingCertificationsApi.md#delete_cred_certification) | **DELETE** /credentialing-certifications/{credCertificationKey} | Delete CredCertification |
| [**get_cred_certification**](CredentialingCertificationsApi.md#get_cred_certification) | **GET** /credentialing-certifications/{credCertificationKey} | Get CredCertification |
| [**list_cred_certification**](CredentialingCertificationsApi.md#list_cred_certification) | **GET** /credentialing-certifications | List CredCertification |
| [**update_batch_cred_certification**](CredentialingCertificationsApi.md#update_batch_cred_certification) | **PUT** /credentialing-certifications-batch | Create or Update Batch CredCertification |
| [**update_cred_certification**](CredentialingCertificationsApi.md#update_cred_certification) | **PUT** /credentialing-certifications/{credCertificationKey} | Update CredCertification |


## create_cred_certification

> <CredCertificationVBAResponse> create_cred_certification(vbasoftware_database, cred_certification)

Create CredCertification

Creates a new CredCertification

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_certification = Vba::CredCertification.new({cred_certification_key: 37}) # CredCertification | 

begin
  # Create CredCertification
  result = api_instance.create_cred_certification(vbasoftware_database, cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->create_cred_certification: #{e}"
end
```

#### Using the create_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCertificationVBAResponse>, Integer, Hash)> create_cred_certification_with_http_info(vbasoftware_database, cred_certification)

```ruby
begin
  # Create CredCertification
  data, status_code, headers = api_instance.create_cred_certification_with_http_info(vbasoftware_database, cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->create_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_certification** | [**CredCertification**](CredCertification.md) |  |  |

### Return type

[**CredCertificationVBAResponse**](CredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_certification

> delete_cred_certification(vbasoftware_database, cred_certification_key)

Delete CredCertification

Deletes an CredCertification

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_certification_key = 56 # Integer | CredCertification Key

begin
  # Delete CredCertification
  api_instance.delete_cred_certification(vbasoftware_database, cred_certification_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->delete_cred_certification: #{e}"
end
```

#### Using the delete_cred_certification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_certification_with_http_info(vbasoftware_database, cred_certification_key)

```ruby
begin
  # Delete CredCertification
  data, status_code, headers = api_instance.delete_cred_certification_with_http_info(vbasoftware_database, cred_certification_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->delete_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_certification_key** | **Integer** | CredCertification Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_certification

> <CredCertificationVBAResponse> get_cred_certification(vbasoftware_database, cred_certification_key)

Get CredCertification

Gets CredCertification

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_certification_key = 56 # Integer | CredCertification Key

begin
  # Get CredCertification
  result = api_instance.get_cred_certification(vbasoftware_database, cred_certification_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->get_cred_certification: #{e}"
end
```

#### Using the get_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCertificationVBAResponse>, Integer, Hash)> get_cred_certification_with_http_info(vbasoftware_database, cred_certification_key)

```ruby
begin
  # Get CredCertification
  data, status_code, headers = api_instance.get_cred_certification_with_http_info(vbasoftware_database, cred_certification_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->get_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_certification_key** | **Integer** | CredCertification Key |  |

### Return type

[**CredCertificationVBAResponse**](CredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_certification

> <CredCertificationListVBAResponse> list_cred_certification(vbasoftware_database, opts)

List CredCertification

Lists all CredCertification

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredCertification
  result = api_instance.list_cred_certification(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->list_cred_certification: #{e}"
end
```

#### Using the list_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCertificationListVBAResponse>, Integer, Hash)> list_cred_certification_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredCertification
  data, status_code, headers = api_instance.list_cred_certification_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCertificationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->list_cred_certification_with_http_info: #{e}"
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

[**CredCertificationListVBAResponse**](CredCertificationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_certification

> <MultiCodeResponseListVBAResponse> update_batch_cred_certification(vbasoftware_database, cred_certification)

Create or Update Batch CredCertification

Create or Update multiple CredCertification at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_certification = [Vba::CredCertification.new({cred_certification_key: 37})] # Array<CredCertification> | 

begin
  # Create or Update Batch CredCertification
  result = api_instance.update_batch_cred_certification(vbasoftware_database, cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->update_batch_cred_certification: #{e}"
end
```

#### Using the update_batch_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_certification_with_http_info(vbasoftware_database, cred_certification)

```ruby
begin
  # Create or Update Batch CredCertification
  data, status_code, headers = api_instance.update_batch_cred_certification_with_http_info(vbasoftware_database, cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->update_batch_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_certification** | [**Array&lt;CredCertification&gt;**](CredCertification.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_certification

> <CredCertificationVBAResponse> update_cred_certification(vbasoftware_database, cred_certification_key, cred_certification)

Update CredCertification

Updates a specific CredCertification.

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

api_instance = Vba::CredentialingCertificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_certification_key = 56 # Integer | CredCertification Key
cred_certification = Vba::CredCertification.new({cred_certification_key: 37}) # CredCertification | 

begin
  # Update CredCertification
  result = api_instance.update_cred_certification(vbasoftware_database, cred_certification_key, cred_certification)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->update_cred_certification: #{e}"
end
```

#### Using the update_cred_certification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCertificationVBAResponse>, Integer, Hash)> update_cred_certification_with_http_info(vbasoftware_database, cred_certification_key, cred_certification)

```ruby
begin
  # Update CredCertification
  data, status_code, headers = api_instance.update_cred_certification_with_http_info(vbasoftware_database, cred_certification_key, cred_certification)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCertificationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCertificationsApi->update_cred_certification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_certification_key** | **Integer** | CredCertification Key |  |
| **cred_certification** | [**CredCertification**](CredCertification.md) |  |  |

### Return type

[**CredCertificationVBAResponse**](CredCertificationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

