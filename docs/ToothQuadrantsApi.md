# Vba::ToothQuadrantsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth_quadrant**](ToothQuadrantsApi.md#create_tooth_quadrant) | **POST** /tooth-quadrants | Create ToothQuadrant |
| [**delete_tooth_quadrant**](ToothQuadrantsApi.md#delete_tooth_quadrant) | **DELETE** /tooth-quadrants/{quadrant} | Delete ToothQuadrant |
| [**get_tooth_quadrant**](ToothQuadrantsApi.md#get_tooth_quadrant) | **GET** /tooth-quadrants/{quadrant} | Get ToothQuadrant |
| [**list_tooth_quadrant**](ToothQuadrantsApi.md#list_tooth_quadrant) | **GET** /tooth-quadrants | List ToothQuadrant |
| [**update_batch_tooth_quadrant**](ToothQuadrantsApi.md#update_batch_tooth_quadrant) | **PUT** /tooth-quadrants-batch | Create or Update Batch ToothQuadrant |
| [**update_tooth_quadrant**](ToothQuadrantsApi.md#update_tooth_quadrant) | **PUT** /tooth-quadrants/{quadrant} | Update ToothQuadrant |


## create_tooth_quadrant

> <ToothQuadrantVBAResponse> create_tooth_quadrant(vbasoftware_database, tooth_quadrant)

Create ToothQuadrant

Creates a new ToothQuadrant

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_quadrant = Vba::ToothQuadrant.new({quadrant: 'quadrant_example'}) # ToothQuadrant | 

begin
  # Create ToothQuadrant
  result = api_instance.create_tooth_quadrant(vbasoftware_database, tooth_quadrant)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->create_tooth_quadrant: #{e}"
end
```

#### Using the create_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothQuadrantVBAResponse>, Integer, Hash)> create_tooth_quadrant_with_http_info(vbasoftware_database, tooth_quadrant)

```ruby
begin
  # Create ToothQuadrant
  data, status_code, headers = api_instance.create_tooth_quadrant_with_http_info(vbasoftware_database, tooth_quadrant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothQuadrantVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->create_tooth_quadrant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_quadrant** | [**ToothQuadrant**](ToothQuadrant.md) |  |  |

### Return type

[**ToothQuadrantVBAResponse**](ToothQuadrantVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth_quadrant

> delete_tooth_quadrant(vbasoftware_database, quadrant)

Delete ToothQuadrant

Deletes an ToothQuadrant

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
quadrant = 'quadrant_example' # String | Quadrant

begin
  # Delete ToothQuadrant
  api_instance.delete_tooth_quadrant(vbasoftware_database, quadrant)
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->delete_tooth_quadrant: #{e}"
end
```

#### Using the delete_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_quadrant_with_http_info(vbasoftware_database, quadrant)

```ruby
begin
  # Delete ToothQuadrant
  data, status_code, headers = api_instance.delete_tooth_quadrant_with_http_info(vbasoftware_database, quadrant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->delete_tooth_quadrant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **quadrant** | **String** | Quadrant |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth_quadrant

> <ToothQuadrantVBAResponse> get_tooth_quadrant(vbasoftware_database, quadrant)

Get ToothQuadrant

Gets ToothQuadrant

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
quadrant = 'quadrant_example' # String | Quadrant

begin
  # Get ToothQuadrant
  result = api_instance.get_tooth_quadrant(vbasoftware_database, quadrant)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->get_tooth_quadrant: #{e}"
end
```

#### Using the get_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothQuadrantVBAResponse>, Integer, Hash)> get_tooth_quadrant_with_http_info(vbasoftware_database, quadrant)

```ruby
begin
  # Get ToothQuadrant
  data, status_code, headers = api_instance.get_tooth_quadrant_with_http_info(vbasoftware_database, quadrant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothQuadrantVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->get_tooth_quadrant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **quadrant** | **String** | Quadrant |  |

### Return type

[**ToothQuadrantVBAResponse**](ToothQuadrantVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth_quadrant

> <ToothQuadrantListVBAResponse> list_tooth_quadrant(vbasoftware_database, opts)

List ToothQuadrant

Lists all ToothQuadrant

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ToothQuadrant
  result = api_instance.list_tooth_quadrant(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->list_tooth_quadrant: #{e}"
end
```

#### Using the list_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothQuadrantListVBAResponse>, Integer, Hash)> list_tooth_quadrant_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ToothQuadrant
  data, status_code, headers = api_instance.list_tooth_quadrant_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothQuadrantListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->list_tooth_quadrant_with_http_info: #{e}"
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

[**ToothQuadrantListVBAResponse**](ToothQuadrantListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth_quadrant

> <MultiCodeResponseListVBAResponse> update_batch_tooth_quadrant(vbasoftware_database, tooth_quadrant)

Create or Update Batch ToothQuadrant

Create or Update multiple ToothQuadrant at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_quadrant = [Vba::ToothQuadrant.new({quadrant: 'quadrant_example'})] # Array<ToothQuadrant> | 

begin
  # Create or Update Batch ToothQuadrant
  result = api_instance.update_batch_tooth_quadrant(vbasoftware_database, tooth_quadrant)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->update_batch_tooth_quadrant: #{e}"
end
```

#### Using the update_batch_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_quadrant_with_http_info(vbasoftware_database, tooth_quadrant)

```ruby
begin
  # Create or Update Batch ToothQuadrant
  data, status_code, headers = api_instance.update_batch_tooth_quadrant_with_http_info(vbasoftware_database, tooth_quadrant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->update_batch_tooth_quadrant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_quadrant** | [**Array&lt;ToothQuadrant&gt;**](ToothQuadrant.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth_quadrant

> <ToothQuadrantVBAResponse> update_tooth_quadrant(vbasoftware_database, quadrant, tooth_quadrant)

Update ToothQuadrant

Updates a specific ToothQuadrant.

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

api_instance = Vba::ToothQuadrantsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
quadrant = 'quadrant_example' # String | Quadrant
tooth_quadrant = Vba::ToothQuadrant.new({quadrant: 'quadrant_example'}) # ToothQuadrant | 

begin
  # Update ToothQuadrant
  result = api_instance.update_tooth_quadrant(vbasoftware_database, quadrant, tooth_quadrant)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->update_tooth_quadrant: #{e}"
end
```

#### Using the update_tooth_quadrant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothQuadrantVBAResponse>, Integer, Hash)> update_tooth_quadrant_with_http_info(vbasoftware_database, quadrant, tooth_quadrant)

```ruby
begin
  # Update ToothQuadrant
  data, status_code, headers = api_instance.update_tooth_quadrant_with_http_info(vbasoftware_database, quadrant, tooth_quadrant)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothQuadrantVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothQuadrantsApi->update_tooth_quadrant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **quadrant** | **String** | Quadrant |  |
| **tooth_quadrant** | [**ToothQuadrant**](ToothQuadrant.md) |  |  |

### Return type

[**ToothQuadrantVBAResponse**](ToothQuadrantVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

