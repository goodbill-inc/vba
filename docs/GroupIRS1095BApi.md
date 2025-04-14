# Vba::GroupIRS1095BApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_irs1095_b**](GroupIRS1095BApi.md#create_irs1095_b) | **POST** /groups/{groupID}/1995b | Create IRS1095B |
| [**delete_irs1095_b**](GroupIRS1095BApi.md#delete_irs1095_b) | **DELETE** /groups/{groupID}/1995b/{taxYear} | Delete IRS1095B |
| [**get_irs1095_b**](GroupIRS1095BApi.md#get_irs1095_b) | **GET** /groups/{groupID}/1995b/{taxYear} | Get IRS1095B |
| [**list_irs1095_b**](GroupIRS1095BApi.md#list_irs1095_b) | **GET** /groups/{groupID}/1995b | List IRS1095B |
| [**update_batch_irs1095_b**](GroupIRS1095BApi.md#update_batch_irs1095_b) | **PUT** /groups/{groupID}/1995b-batch | Create or Update Batch IRS1095B |
| [**update_irs1095_b**](GroupIRS1095BApi.md#update_irs1095_b) | **PUT** /groups/{groupID}/1995b/{taxYear} | Update IRS1095B |


## create_irs1095_b

> <IRS1095BVBAResponse> create_irs1095_b(vbasoftware_database, group_id, irs1095_b)

Create IRS1095B

Creates a new IRS1095B

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
irs1095_b = Vba::IRS1095B.new({group_id: 'group_id_example', tax_year: 'tax_year_example'}) # IRS1095B | 

begin
  # Create IRS1095B
  result = api_instance.create_irs1095_b(vbasoftware_database, group_id, irs1095_b)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->create_irs1095_b: #{e}"
end
```

#### Using the create_irs1095_b_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1095BVBAResponse>, Integer, Hash)> create_irs1095_b_with_http_info(vbasoftware_database, group_id, irs1095_b)

```ruby
begin
  # Create IRS1095B
  data, status_code, headers = api_instance.create_irs1095_b_with_http_info(vbasoftware_database, group_id, irs1095_b)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1095BVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->create_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **irs1095_b** | [**IRS1095B**](IRS1095B.md) |  |  |

### Return type

[**IRS1095BVBAResponse**](IRS1095BVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_irs1095_b

> delete_irs1095_b(vbasoftware_database, group_id, tax_year)

Delete IRS1095B

Deletes an IRS1095B

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year

begin
  # Delete IRS1095B
  api_instance.delete_irs1095_b(vbasoftware_database, group_id, tax_year)
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->delete_irs1095_b: #{e}"
end
```

#### Using the delete_irs1095_b_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year)

```ruby
begin
  # Delete IRS1095B
  data, status_code, headers = api_instance.delete_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->delete_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **tax_year** | **String** | Tax Year |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_irs1095_b

> <IRS1095BVBAResponse> get_irs1095_b(vbasoftware_database, group_id, tax_year)

Get IRS1095B

Gets IRS1095B

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year

begin
  # Get IRS1095B
  result = api_instance.get_irs1095_b(vbasoftware_database, group_id, tax_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->get_irs1095_b: #{e}"
end
```

#### Using the get_irs1095_b_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1095BVBAResponse>, Integer, Hash)> get_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year)

```ruby
begin
  # Get IRS1095B
  data, status_code, headers = api_instance.get_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1095BVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->get_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **tax_year** | **String** | Tax Year |  |

### Return type

[**IRS1095BVBAResponse**](IRS1095BVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_irs1095_b

> <IRS1095BListVBAResponse> list_irs1095_b(vbasoftware_database, group_id, opts)

List IRS1095B

Lists all IRS1095B for the given groupID

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IRS1095B
  result = api_instance.list_irs1095_b(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->list_irs1095_b: #{e}"
end
```

#### Using the list_irs1095_b_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1095BListVBAResponse>, Integer, Hash)> list_irs1095_b_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List IRS1095B
  data, status_code, headers = api_instance.list_irs1095_b_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1095BListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->list_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**IRS1095BListVBAResponse**](IRS1095BListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_irs1095_b

> <MultiCodeResponseListVBAResponse> update_batch_irs1095_b(vbasoftware_database, group_id, irs1095_b)

Create or Update Batch IRS1095B

Create or Update multiple IRS1095B at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
irs1095_b = [Vba::IRS1095B.new({group_id: 'group_id_example', tax_year: 'tax_year_example'})] # Array<IRS1095B> | 

begin
  # Create or Update Batch IRS1095B
  result = api_instance.update_batch_irs1095_b(vbasoftware_database, group_id, irs1095_b)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->update_batch_irs1095_b: #{e}"
end
```

#### Using the update_batch_irs1095_b_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_irs1095_b_with_http_info(vbasoftware_database, group_id, irs1095_b)

```ruby
begin
  # Create or Update Batch IRS1095B
  data, status_code, headers = api_instance.update_batch_irs1095_b_with_http_info(vbasoftware_database, group_id, irs1095_b)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->update_batch_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **irs1095_b** | [**Array&lt;IRS1095B&gt;**](IRS1095B.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_irs1095_b

> <IRS1095BVBAResponse> update_irs1095_b(vbasoftware_database, group_id, tax_year, irs1095_b)

Update IRS1095B

Updates a specific IRS1095B.

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

api_instance = Vba::GroupIRS1095BApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year
irs1095_b = Vba::IRS1095B.new({group_id: 'group_id_example', tax_year: 'tax_year_example'}) # IRS1095B | 

begin
  # Update IRS1095B
  result = api_instance.update_irs1095_b(vbasoftware_database, group_id, tax_year, irs1095_b)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->update_irs1095_b: #{e}"
end
```

#### Using the update_irs1095_b_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1095BVBAResponse>, Integer, Hash)> update_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year, irs1095_b)

```ruby
begin
  # Update IRS1095B
  data, status_code, headers = api_instance.update_irs1095_b_with_http_info(vbasoftware_database, group_id, tax_year, irs1095_b)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1095BVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1095BApi->update_irs1095_b_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **tax_year** | **String** | Tax Year |  |
| **irs1095_b** | [**IRS1095B**](IRS1095B.md) |  |  |

### Return type

[**IRS1095BVBAResponse**](IRS1095BVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

