# Vba::CapitationCategoryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_category_type**](CapitationCategoryTypesApi.md#create_capitation_category_type) | **POST** /capitation-categories/{capitationCategory}/capitation-types/{capitationType} | Create CapitationCategoryType |
| [**delete_capitation_category_type**](CapitationCategoryTypesApi.md#delete_capitation_category_type) | **DELETE** /capitation-categories/{capitationCategory}/capitation-types/{capitationType} | Delete CapitationCategoryType |
| [**get_capitation_category_type**](CapitationCategoryTypesApi.md#get_capitation_category_type) | **GET** /capitation-categories/{capitationCategory}/capitation-types/{capitationType} | Get CapitationCategoryType |
| [**list_capitation_category_type**](CapitationCategoryTypesApi.md#list_capitation_category_type) | **GET** /capitation-categories/{capitationCategory}/capitation-types | List CapitationCategoryType |


## create_capitation_category_type

> <CapitationCategoryTypeVBAResponse> create_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)

Create CapitationCategoryType

Creates a new CapitationCategoryType

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

api_instance = Vba::CapitationCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_category = 'capitation_category_example' # String | Capitation Category
capitation_type = 'capitation_type_example' # String | Capitation Type

begin
  # Create CapitationCategoryType
  result = api_instance.create_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->create_capitation_category_type: #{e}"
end
```

#### Using the create_capitation_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationCategoryTypeVBAResponse>, Integer, Hash)> create_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)

```ruby
begin
  # Create CapitationCategoryType
  data, status_code, headers = api_instance.create_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->create_capitation_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_category** | **String** | Capitation Category |  |
| **capitation_type** | **String** | Capitation Type |  |

### Return type

[**CapitationCategoryTypeVBAResponse**](CapitationCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_capitation_category_type

> delete_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)

Delete CapitationCategoryType

Deletes an CapitationCategoryType

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

api_instance = Vba::CapitationCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_category = 'capitation_category_example' # String | Capitation Category
capitation_type = 'capitation_type_example' # String | Capitation Type

begin
  # Delete CapitationCategoryType
  api_instance.delete_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->delete_capitation_category_type: #{e}"
end
```

#### Using the delete_capitation_category_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)

```ruby
begin
  # Delete CapitationCategoryType
  data, status_code, headers = api_instance.delete_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->delete_capitation_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_category** | **String** | Capitation Category |  |
| **capitation_type** | **String** | Capitation Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_category_type

> <CapitationCategoryTypeVBAResponse> get_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)

Get CapitationCategoryType

Gets CapitationCategoryType

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

api_instance = Vba::CapitationCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_category = 'capitation_category_example' # String | Capitation Category
capitation_type = 'capitation_type_example' # String | Capitation Type

begin
  # Get CapitationCategoryType
  result = api_instance.get_capitation_category_type(vbasoftware_database, capitation_category, capitation_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->get_capitation_category_type: #{e}"
end
```

#### Using the get_capitation_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationCategoryTypeVBAResponse>, Integer, Hash)> get_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)

```ruby
begin
  # Get CapitationCategoryType
  data, status_code, headers = api_instance.get_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, capitation_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->get_capitation_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_category** | **String** | Capitation Category |  |
| **capitation_type** | **String** | Capitation Type |  |

### Return type

[**CapitationCategoryTypeVBAResponse**](CapitationCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_category_type

> <CapitationCategoryTypeListVBAResponse> list_capitation_category_type(vbasoftware_database, capitation_category, opts)

List CapitationCategoryType

Lists all CapitationCategoryType for the given capitationCategory

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

api_instance = Vba::CapitationCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_category = 'capitation_category_example' # String | Capitation Category
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationCategoryType
  result = api_instance.list_capitation_category_type(vbasoftware_database, capitation_category, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->list_capitation_category_type: #{e}"
end
```

#### Using the list_capitation_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationCategoryTypeListVBAResponse>, Integer, Hash)> list_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, opts)

```ruby
begin
  # List CapitationCategoryType
  data, status_code, headers = api_instance.list_capitation_category_type_with_http_info(vbasoftware_database, capitation_category, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationCategoryTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationCategoryTypesApi->list_capitation_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_category** | **String** | Capitation Category |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationCategoryTypeListVBAResponse**](CapitationCategoryTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

