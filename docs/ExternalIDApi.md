# Vba::ExternalIDApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_id**](ExternalIDApi.md#create_external_id) | **POST** /external-ids | Create ExternalID |
| [**delete_external_id**](ExternalIDApi.md#delete_external_id) | **DELETE** /external-ids/{externalId} | Delete ExternalID |
| [**get_external_id**](ExternalIDApi.md#get_external_id) | **GET** /external-ids/{externalId} | Get ExternalID |
| [**list_external_id**](ExternalIDApi.md#list_external_id) | **GET** /external-ids | List ExternalID |
| [**update_batch_external_id**](ExternalIDApi.md#update_batch_external_id) | **PUT** /external-ids-batch | Create or Update Batch ExternalID |
| [**update_external_id**](ExternalIDApi.md#update_external_id) | **PUT** /external-ids/{externalId} | Update ExternalID |


## create_external_id

> <ExternalIDVBAResponse> create_external_id(vbasoftware_database, external_id)

Create ExternalID

Creates a new ExternalID

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
external_id = Vba::ExternalID.new({external_id: 'external_id_example'}) # ExternalID | 

begin
  # Create ExternalID
  result = api_instance.create_external_id(vbasoftware_database, external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->create_external_id: #{e}"
end
```

#### Using the create_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalIDVBAResponse>, Integer, Hash)> create_external_id_with_http_info(vbasoftware_database, external_id)

```ruby
begin
  # Create ExternalID
  data, status_code, headers = api_instance.create_external_id_with_http_info(vbasoftware_database, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->create_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **external_id** | [**ExternalID**](ExternalID.md) |  |  |

### Return type

[**ExternalIDVBAResponse**](ExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_external_id

> delete_external_id(vbasoftware_database, external_id)

Delete ExternalID

Deletes an ExternalID

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
external_id = 'external_id_example' # String | External ID

begin
  # Delete ExternalID
  api_instance.delete_external_id(vbasoftware_database, external_id)
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->delete_external_id: #{e}"
end
```

#### Using the delete_external_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_external_id_with_http_info(vbasoftware_database, external_id)

```ruby
begin
  # Delete ExternalID
  data, status_code, headers = api_instance.delete_external_id_with_http_info(vbasoftware_database, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->delete_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **external_id** | **String** | External ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_external_id

> <ExternalIDVBAResponse> get_external_id(vbasoftware_database, external_id)

Get ExternalID

Gets ExternalID

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
external_id = 'external_id_example' # String | External ID

begin
  # Get ExternalID
  result = api_instance.get_external_id(vbasoftware_database, external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->get_external_id: #{e}"
end
```

#### Using the get_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalIDVBAResponse>, Integer, Hash)> get_external_id_with_http_info(vbasoftware_database, external_id)

```ruby
begin
  # Get ExternalID
  data, status_code, headers = api_instance.get_external_id_with_http_info(vbasoftware_database, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->get_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **external_id** | **String** | External ID |  |

### Return type

[**ExternalIDVBAResponse**](ExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_external_id

> <ExternalIDListVBAResponse> list_external_id(vbasoftware_database, opts)

List ExternalID

Lists all ExternalID

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ExternalID
  result = api_instance.list_external_id(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->list_external_id: #{e}"
end
```

#### Using the list_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalIDListVBAResponse>, Integer, Hash)> list_external_id_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ExternalID
  data, status_code, headers = api_instance.list_external_id_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalIDListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->list_external_id_with_http_info: #{e}"
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

[**ExternalIDListVBAResponse**](ExternalIDListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_external_id

> <MultiCodeResponseListVBAResponse> update_batch_external_id(vbasoftware_database, external_id)

Create or Update Batch ExternalID

Create or Update multiple ExternalID at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
external_id = [Vba::ExternalID.new({external_id: 'external_id_example'})] # Array<ExternalID> | 

begin
  # Create or Update Batch ExternalID
  result = api_instance.update_batch_external_id(vbasoftware_database, external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->update_batch_external_id: #{e}"
end
```

#### Using the update_batch_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_external_id_with_http_info(vbasoftware_database, external_id)

```ruby
begin
  # Create or Update Batch ExternalID
  data, status_code, headers = api_instance.update_batch_external_id_with_http_info(vbasoftware_database, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->update_batch_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **external_id** | [**Array&lt;ExternalID&gt;**](ExternalID.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_external_id

> <ExternalIDVBAResponse> update_external_id(vbasoftware_database, external_id, external_id2)

Update ExternalID

Updates a specific ExternalID.

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

api_instance = Vba::ExternalIDApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
external_id = 'external_id_example' # String | External ID
external_id2 = Vba::ExternalID.new({external_id: 'external_id_example'}) # ExternalID | 

begin
  # Update ExternalID
  result = api_instance.update_external_id(vbasoftware_database, external_id, external_id2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->update_external_id: #{e}"
end
```

#### Using the update_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalIDVBAResponse>, Integer, Hash)> update_external_id_with_http_info(vbasoftware_database, external_id, external_id2)

```ruby
begin
  # Update ExternalID
  data, status_code, headers = api_instance.update_external_id_with_http_info(vbasoftware_database, external_id, external_id2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExternalIDApi->update_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **external_id** | **String** | External ID |  |
| **external_id2** | [**ExternalID**](ExternalID.md) |  |  |

### Return type

[**ExternalIDVBAResponse**](ExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

