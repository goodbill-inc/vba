# Vba::FundingReferencesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_reference**](FundingReferencesApi.md#create_funding_reference) | **POST** /funding-requests/{requestKey}/references | Create FundingReference |
| [**delete_funding_reference**](FundingReferencesApi.md#delete_funding_reference) | **DELETE** /funding-requests/{requestKey}/references/{fundingKey} | Delete FundingReference |
| [**get_funding_reference**](FundingReferencesApi.md#get_funding_reference) | **GET** /funding-requests/{requestKey}/references/{fundingKey} | Get FundingReference |
| [**list_funding_reference**](FundingReferencesApi.md#list_funding_reference) | **GET** /funding-requests/{requestKey}/references | List FundingReference |
| [**update_batch_funding_reference**](FundingReferencesApi.md#update_batch_funding_reference) | **PUT** /funding-requests/{requestKey}/references-batch | Create or Update Batch FundingReference |
| [**update_funding_reference**](FundingReferencesApi.md#update_funding_reference) | **PUT** /funding-requests/{requestKey}/references/{fundingKey} | Update FundingReference |


## create_funding_reference

> <FundingReferenceVBAResponse> create_funding_reference(vbasoftware_database, request_key, funding_reference)

Create FundingReference

Creates a new FundingReference

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_reference = Vba::FundingReference.new({request_key: 37, funding_key: 37}) # FundingReference | 

begin
  # Create FundingReference
  result = api_instance.create_funding_reference(vbasoftware_database, request_key, funding_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->create_funding_reference: #{e}"
end
```

#### Using the create_funding_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReferenceVBAResponse>, Integer, Hash)> create_funding_reference_with_http_info(vbasoftware_database, request_key, funding_reference)

```ruby
begin
  # Create FundingReference
  data, status_code, headers = api_instance.create_funding_reference_with_http_info(vbasoftware_database, request_key, funding_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->create_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_reference** | [**FundingReference**](FundingReference.md) |  |  |

### Return type

[**FundingReferenceVBAResponse**](FundingReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reference

> delete_funding_reference(vbasoftware_database, request_key, funding_key)

Delete FundingReference

Deletes an FundingReference

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_key = 56 # Integer | Funding Key

begin
  # Delete FundingReference
  api_instance.delete_funding_reference(vbasoftware_database, request_key, funding_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->delete_funding_reference: #{e}"
end
```

#### Using the delete_funding_reference_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key)

```ruby
begin
  # Delete FundingReference
  data, status_code, headers = api_instance.delete_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->delete_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reference

> <FundingReferenceVBAResponse> get_funding_reference(vbasoftware_database, request_key, funding_key)

Get FundingReference

Gets FundingReference

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_key = 56 # Integer | Funding Key

begin
  # Get FundingReference
  result = api_instance.get_funding_reference(vbasoftware_database, request_key, funding_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->get_funding_reference: #{e}"
end
```

#### Using the get_funding_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReferenceVBAResponse>, Integer, Hash)> get_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key)

```ruby
begin
  # Get FundingReference
  data, status_code, headers = api_instance.get_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->get_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

[**FundingReferenceVBAResponse**](FundingReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reference

> <FundingReferenceListVBAResponse> list_funding_reference(vbasoftware_database, request_key, opts)

List FundingReference

Lists all FundingReference for the given requestKey

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReference
  result = api_instance.list_funding_reference(vbasoftware_database, request_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->list_funding_reference: #{e}"
end
```

#### Using the list_funding_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReferenceListVBAResponse>, Integer, Hash)> list_funding_reference_with_http_info(vbasoftware_database, request_key, opts)

```ruby
begin
  # List FundingReference
  data, status_code, headers = api_instance.list_funding_reference_with_http_info(vbasoftware_database, request_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReferenceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->list_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FundingReferenceListVBAResponse**](FundingReferenceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reference

> <MultiCodeResponseListVBAResponse> update_batch_funding_reference(vbasoftware_database, request_key, funding_reference)

Create or Update Batch FundingReference

Create or Update multiple FundingReference at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_reference = [Vba::FundingReference.new({request_key: 37, funding_key: 37})] # Array<FundingReference> | 

begin
  # Create or Update Batch FundingReference
  result = api_instance.update_batch_funding_reference(vbasoftware_database, request_key, funding_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->update_batch_funding_reference: #{e}"
end
```

#### Using the update_batch_funding_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reference_with_http_info(vbasoftware_database, request_key, funding_reference)

```ruby
begin
  # Create or Update Batch FundingReference
  data, status_code, headers = api_instance.update_batch_funding_reference_with_http_info(vbasoftware_database, request_key, funding_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->update_batch_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_reference** | [**Array&lt;FundingReference&gt;**](FundingReference.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reference

> <FundingReferenceVBAResponse> update_funding_reference(vbasoftware_database, request_key, funding_key, funding_reference)

Update FundingReference

Updates a specific FundingReference.

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

api_instance = Vba::FundingReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_key = 56 # Integer | Funding Key
funding_reference = Vba::FundingReference.new({request_key: 37, funding_key: 37}) # FundingReference | 

begin
  # Update FundingReference
  result = api_instance.update_funding_reference(vbasoftware_database, request_key, funding_key, funding_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->update_funding_reference: #{e}"
end
```

#### Using the update_funding_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReferenceVBAResponse>, Integer, Hash)> update_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key, funding_reference)

```ruby
begin
  # Update FundingReference
  data, status_code, headers = api_instance.update_funding_reference_with_http_info(vbasoftware_database, request_key, funding_key, funding_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReferencesApi->update_funding_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_key** | **Integer** | Funding Key |  |
| **funding_reference** | [**FundingReference**](FundingReference.md) |  |  |

### Return type

[**FundingReferenceVBAResponse**](FundingReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

