# Vba::GroupIRS1094CApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_irs1094_c**](GroupIRS1094CApi.md#create_irs1094_c) | **POST** /groups/{groupID}/1094c | Create IRS1094C |
| [**delete_irs1094_c**](GroupIRS1094CApi.md#delete_irs1094_c) | **DELETE** /groups/{groupID}/1094c/{taxYear} | Delete IRS1094C |
| [**get_irs1094_c**](GroupIRS1094CApi.md#get_irs1094_c) | **GET** /groups/{groupID}/1094c/{taxYear} | Get IRS1094C |
| [**list_irs1094_c**](GroupIRS1094CApi.md#list_irs1094_c) | **GET** /groups/{groupID}/1094c | List IRS1094C |
| [**update_batch_irs1094_c**](GroupIRS1094CApi.md#update_batch_irs1094_c) | **PUT** /groups/{groupID}/1094c-batch | Create or Update Batch IRS1094C |
| [**update_irs1094_c**](GroupIRS1094CApi.md#update_irs1094_c) | **PUT** /groups/{groupID}/1094c/{taxYear} | Update IRS1094C |


## create_irs1094_c

> <IRS1094CVBAResponse> create_irs1094_c(vbasoftware_database, group_id, irs1094_c)

Create IRS1094C

Creates a new IRS1094C

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
irs1094_c = Vba::IRS1094C.new({group_id: 'group_id_example', tax_year: 'tax_year_example'}) # IRS1094C | 

begin
  # Create IRS1094C
  result = api_instance.create_irs1094_c(vbasoftware_database, group_id, irs1094_c)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->create_irs1094_c: #{e}"
end
```

#### Using the create_irs1094_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1094CVBAResponse>, Integer, Hash)> create_irs1094_c_with_http_info(vbasoftware_database, group_id, irs1094_c)

```ruby
begin
  # Create IRS1094C
  data, status_code, headers = api_instance.create_irs1094_c_with_http_info(vbasoftware_database, group_id, irs1094_c)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1094CVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->create_irs1094_c_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **irs1094_c** | [**IRS1094C**](IRS1094C.md) |  |  |

### Return type

[**IRS1094CVBAResponse**](IRS1094CVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_irs1094_c

> delete_irs1094_c(vbasoftware_database, group_id, tax_year)

Delete IRS1094C

Deletes an IRS1094C

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year

begin
  # Delete IRS1094C
  api_instance.delete_irs1094_c(vbasoftware_database, group_id, tax_year)
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->delete_irs1094_c: #{e}"
end
```

#### Using the delete_irs1094_c_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year)

```ruby
begin
  # Delete IRS1094C
  data, status_code, headers = api_instance.delete_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->delete_irs1094_c_with_http_info: #{e}"
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


## get_irs1094_c

> <IRS1094CVBAResponse> get_irs1094_c(vbasoftware_database, group_id, tax_year)

Get IRS1094C

Gets IRS1094C

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year

begin
  # Get IRS1094C
  result = api_instance.get_irs1094_c(vbasoftware_database, group_id, tax_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->get_irs1094_c: #{e}"
end
```

#### Using the get_irs1094_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1094CVBAResponse>, Integer, Hash)> get_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year)

```ruby
begin
  # Get IRS1094C
  data, status_code, headers = api_instance.get_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1094CVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->get_irs1094_c_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **tax_year** | **String** | Tax Year |  |

### Return type

[**IRS1094CVBAResponse**](IRS1094CVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_irs1094_c

> <IRS1094CListVBAResponse> list_irs1094_c(vbasoftware_database, group_id, opts)

List IRS1094C

Lists all IRS1094C for the given groupID

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IRS1094C
  result = api_instance.list_irs1094_c(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->list_irs1094_c: #{e}"
end
```

#### Using the list_irs1094_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1094CListVBAResponse>, Integer, Hash)> list_irs1094_c_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List IRS1094C
  data, status_code, headers = api_instance.list_irs1094_c_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1094CListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->list_irs1094_c_with_http_info: #{e}"
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

[**IRS1094CListVBAResponse**](IRS1094CListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_irs1094_c

> <MultiCodeResponseListVBAResponse> update_batch_irs1094_c(vbasoftware_database, group_id, irs1094_c)

Create or Update Batch IRS1094C

Create or Update multiple IRS1094C at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
irs1094_c = [Vba::IRS1094C.new({group_id: 'group_id_example', tax_year: 'tax_year_example'})] # Array<IRS1094C> | 

begin
  # Create or Update Batch IRS1094C
  result = api_instance.update_batch_irs1094_c(vbasoftware_database, group_id, irs1094_c)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->update_batch_irs1094_c: #{e}"
end
```

#### Using the update_batch_irs1094_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_irs1094_c_with_http_info(vbasoftware_database, group_id, irs1094_c)

```ruby
begin
  # Create or Update Batch IRS1094C
  data, status_code, headers = api_instance.update_batch_irs1094_c_with_http_info(vbasoftware_database, group_id, irs1094_c)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->update_batch_irs1094_c_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **irs1094_c** | [**Array&lt;IRS1094C&gt;**](IRS1094C.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_irs1094_c

> <IRS1094CVBAResponse> update_irs1094_c(vbasoftware_database, group_id, tax_year, irs1094_c)

Update IRS1094C

Updates a specific IRS1094C.

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

api_instance = Vba::GroupIRS1094CApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
tax_year = 'tax_year_example' # String | Tax Year
irs1094_c = Vba::IRS1094C.new({group_id: 'group_id_example', tax_year: 'tax_year_example'}) # IRS1094C | 

begin
  # Update IRS1094C
  result = api_instance.update_irs1094_c(vbasoftware_database, group_id, tax_year, irs1094_c)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->update_irs1094_c: #{e}"
end
```

#### Using the update_irs1094_c_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IRS1094CVBAResponse>, Integer, Hash)> update_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year, irs1094_c)

```ruby
begin
  # Update IRS1094C
  data, status_code, headers = api_instance.update_irs1094_c_with_http_info(vbasoftware_database, group_id, tax_year, irs1094_c)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IRS1094CVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupIRS1094CApi->update_irs1094_c_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **tax_year** | **String** | Tax Year |  |
| **irs1094_c** | [**IRS1094C**](IRS1094C.md) |  |  |

### Return type

[**IRS1094CVBAResponse**](IRS1094CVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

