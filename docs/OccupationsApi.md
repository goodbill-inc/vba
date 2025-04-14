# Vba::OccupationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_occupation**](OccupationsApi.md#create_occupation) | **POST** /occupations | Create Occupation |
| [**delete_occupation**](OccupationsApi.md#delete_occupation) | **DELETE** /occupations/{occupationID} | Delete Occupation |
| [**get_occupation**](OccupationsApi.md#get_occupation) | **GET** /occupations/{occupationID} | Get Occupation |
| [**list_occupation**](OccupationsApi.md#list_occupation) | **GET** /occupations | List Occupation |
| [**update_batch_occupation**](OccupationsApi.md#update_batch_occupation) | **PUT** /occupations-batch | Create or Update Batch Occupation |
| [**update_occupation**](OccupationsApi.md#update_occupation) | **PUT** /occupations/{occupationID} | Update Occupation |


## create_occupation

> <OccupationVBAResponse> create_occupation(vbasoftware_database, occupation)

Create Occupation

Creates a new Occupation

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occupation = Vba::Occupation.new({occupation_id: 'occupation_id_example'}) # Occupation | 

begin
  # Create Occupation
  result = api_instance.create_occupation(vbasoftware_database, occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->create_occupation: #{e}"
end
```

#### Using the create_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OccupationVBAResponse>, Integer, Hash)> create_occupation_with_http_info(vbasoftware_database, occupation)

```ruby
begin
  # Create Occupation
  data, status_code, headers = api_instance.create_occupation_with_http_info(vbasoftware_database, occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->create_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occupation** | [**Occupation**](Occupation.md) |  |  |

### Return type

[**OccupationVBAResponse**](OccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_occupation

> delete_occupation(vbasoftware_database, occupation_id)

Delete Occupation

Deletes an Occupation

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occupation_id = 'occupation_id_example' # String | Occupation ID

begin
  # Delete Occupation
  api_instance.delete_occupation(vbasoftware_database, occupation_id)
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->delete_occupation: #{e}"
end
```

#### Using the delete_occupation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_occupation_with_http_info(vbasoftware_database, occupation_id)

```ruby
begin
  # Delete Occupation
  data, status_code, headers = api_instance.delete_occupation_with_http_info(vbasoftware_database, occupation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->delete_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occupation_id** | **String** | Occupation ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_occupation

> <OccupationVBAResponse> get_occupation(vbasoftware_database, occupation_id)

Get Occupation

Gets Occupation

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occupation_id = 'occupation_id_example' # String | Occupation ID

begin
  # Get Occupation
  result = api_instance.get_occupation(vbasoftware_database, occupation_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->get_occupation: #{e}"
end
```

#### Using the get_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OccupationVBAResponse>, Integer, Hash)> get_occupation_with_http_info(vbasoftware_database, occupation_id)

```ruby
begin
  # Get Occupation
  data, status_code, headers = api_instance.get_occupation_with_http_info(vbasoftware_database, occupation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->get_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occupation_id** | **String** | Occupation ID |  |

### Return type

[**OccupationVBAResponse**](OccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_occupation

> <OccupationListVBAResponse> list_occupation(vbasoftware_database, opts)

List Occupation

Lists all Occupation

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Occupation
  result = api_instance.list_occupation(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->list_occupation: #{e}"
end
```

#### Using the list_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OccupationListVBAResponse>, Integer, Hash)> list_occupation_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Occupation
  data, status_code, headers = api_instance.list_occupation_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OccupationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->list_occupation_with_http_info: #{e}"
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

[**OccupationListVBAResponse**](OccupationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_occupation

> <MultiCodeResponseListVBAResponse> update_batch_occupation(vbasoftware_database, occupation)

Create or Update Batch Occupation

Create or Update multiple Occupation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occupation = [Vba::Occupation.new({occupation_id: 'occupation_id_example'})] # Array<Occupation> | 

begin
  # Create or Update Batch Occupation
  result = api_instance.update_batch_occupation(vbasoftware_database, occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->update_batch_occupation: #{e}"
end
```

#### Using the update_batch_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_occupation_with_http_info(vbasoftware_database, occupation)

```ruby
begin
  # Create or Update Batch Occupation
  data, status_code, headers = api_instance.update_batch_occupation_with_http_info(vbasoftware_database, occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->update_batch_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occupation** | [**Array&lt;Occupation&gt;**](Occupation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_occupation

> <OccupationVBAResponse> update_occupation(vbasoftware_database, occupation_id, occupation)

Update Occupation

Updates a specific Occupation.

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

api_instance = Vba::OccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occupation_id = 'occupation_id_example' # String | Occupation ID
occupation = Vba::Occupation.new({occupation_id: 'occupation_id_example'}) # Occupation | 

begin
  # Update Occupation
  result = api_instance.update_occupation(vbasoftware_database, occupation_id, occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->update_occupation: #{e}"
end
```

#### Using the update_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OccupationVBAResponse>, Integer, Hash)> update_occupation_with_http_info(vbasoftware_database, occupation_id, occupation)

```ruby
begin
  # Update Occupation
  data, status_code, headers = api_instance.update_occupation_with_http_info(vbasoftware_database, occupation_id, occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling OccupationsApi->update_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occupation_id** | **String** | Occupation ID |  |
| **occupation** | [**Occupation**](Occupation.md) |  |  |

### Return type

[**OccupationVBAResponse**](OccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

