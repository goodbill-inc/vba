# Vba::BillTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bill_type**](BillTypesApi.md#create_bill_type) | **POST** /bill-types | Create BillType |
| [**delete_bill_type**](BillTypesApi.md#delete_bill_type) | **DELETE** /bill-types/{typeOfBill} | Delete BillType |
| [**get_bill_type**](BillTypesApi.md#get_bill_type) | **GET** /bill-types/{typeOfBill} | Get BillType |
| [**list_bill_type**](BillTypesApi.md#list_bill_type) | **GET** /bill-types | List BillType |
| [**update_batch_bill_type**](BillTypesApi.md#update_batch_bill_type) | **PUT** /bill-types-batch | Create or Update Batch BillType |
| [**update_bill_type**](BillTypesApi.md#update_bill_type) | **PUT** /bill-types/{typeOfBill} | Update BillType |


## create_bill_type

> <BillTypeVBAResponse> create_bill_type(vbasoftware_database, bill_type)

Create BillType

Creates a new BillType

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
bill_type = Vba::BillType.new({type_of_bill: 'type_of_bill_example', inpatient: false}) # BillType | 

begin
  # Create BillType
  result = api_instance.create_bill_type(vbasoftware_database, bill_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->create_bill_type: #{e}"
end
```

#### Using the create_bill_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypeVBAResponse>, Integer, Hash)> create_bill_type_with_http_info(vbasoftware_database, bill_type)

```ruby
begin
  # Create BillType
  data, status_code, headers = api_instance.create_bill_type_with_http_info(vbasoftware_database, bill_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->create_bill_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **bill_type** | [**BillType**](BillType.md) |  |  |

### Return type

[**BillTypeVBAResponse**](BillTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_bill_type

> delete_bill_type(vbasoftware_database, type_of_bill)

Delete BillType

Deletes an BillType

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill

begin
  # Delete BillType
  api_instance.delete_bill_type(vbasoftware_database, type_of_bill)
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->delete_bill_type: #{e}"
end
```

#### Using the delete_bill_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bill_type_with_http_info(vbasoftware_database, type_of_bill)

```ruby
begin
  # Delete BillType
  data, status_code, headers = api_instance.delete_bill_type_with_http_info(vbasoftware_database, type_of_bill)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->delete_bill_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_bill_type

> <BillTypeVBAResponse> get_bill_type(vbasoftware_database, type_of_bill)

Get BillType

Gets BillType

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill

begin
  # Get BillType
  result = api_instance.get_bill_type(vbasoftware_database, type_of_bill)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->get_bill_type: #{e}"
end
```

#### Using the get_bill_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypeVBAResponse>, Integer, Hash)> get_bill_type_with_http_info(vbasoftware_database, type_of_bill)

```ruby
begin
  # Get BillType
  data, status_code, headers = api_instance.get_bill_type_with_http_info(vbasoftware_database, type_of_bill)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->get_bill_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |

### Return type

[**BillTypeVBAResponse**](BillTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_bill_type

> <BillTypeListVBAResponse> list_bill_type(vbasoftware_database, opts)

List BillType

Lists all BillType

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List BillType
  result = api_instance.list_bill_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->list_bill_type: #{e}"
end
```

#### Using the list_bill_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypeListVBAResponse>, Integer, Hash)> list_bill_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List BillType
  data, status_code, headers = api_instance.list_bill_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->list_bill_type_with_http_info: #{e}"
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

[**BillTypeListVBAResponse**](BillTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_bill_type

> <MultiCodeResponseListVBAResponse> update_batch_bill_type(vbasoftware_database, bill_type)

Create or Update Batch BillType

Create or Update multiple BillType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
bill_type = [Vba::BillType.new({type_of_bill: 'type_of_bill_example', inpatient: false})] # Array<BillType> | 

begin
  # Create or Update Batch BillType
  result = api_instance.update_batch_bill_type(vbasoftware_database, bill_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->update_batch_bill_type: #{e}"
end
```

#### Using the update_batch_bill_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_bill_type_with_http_info(vbasoftware_database, bill_type)

```ruby
begin
  # Create or Update Batch BillType
  data, status_code, headers = api_instance.update_batch_bill_type_with_http_info(vbasoftware_database, bill_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->update_batch_bill_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **bill_type** | [**Array&lt;BillType&gt;**](BillType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_bill_type

> <BillTypeVBAResponse> update_bill_type(vbasoftware_database, type_of_bill, bill_type)

Update BillType

Updates a specific BillType.

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

api_instance = Vba::BillTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
bill_type = Vba::BillType.new({type_of_bill: 'type_of_bill_example', inpatient: false}) # BillType | 

begin
  # Update BillType
  result = api_instance.update_bill_type(vbasoftware_database, type_of_bill, bill_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->update_bill_type: #{e}"
end
```

#### Using the update_bill_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypeVBAResponse>, Integer, Hash)> update_bill_type_with_http_info(vbasoftware_database, type_of_bill, bill_type)

```ruby
begin
  # Update BillType
  data, status_code, headers = api_instance.update_bill_type_with_http_info(vbasoftware_database, type_of_bill, bill_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypesApi->update_bill_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **bill_type** | [**BillType**](BillType.md) |  |  |

### Return type

[**BillTypeVBAResponse**](BillTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

