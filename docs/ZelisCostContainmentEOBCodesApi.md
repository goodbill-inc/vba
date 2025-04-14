# Vba::ZelisCostContainmentEOBCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#create_cost_contain_zelis_eob_code) | **POST** /zelis-eob-codes | Create CostContainZelisEOBCode |
| [**delete_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#delete_cost_contain_zelis_eob_code) | **DELETE** /zelis-eob-codes/{eobCode} | Delete CostContainZelisEOBCode |
| [**get_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#get_cost_contain_zelis_eob_code) | **GET** /zelis-eob-codes/{eobCode} | Get CostContainZelisEOBCode |
| [**list_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#list_cost_contain_zelis_eob_code) | **GET** /zelis-eob-codes | List CostContainZelisEOBCode |
| [**update_batch_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#update_batch_cost_contain_zelis_eob_code) | **PUT** /zelis-eob-codes-batch | Create or Update Batch CostContainZelisEOBCode |
| [**update_cost_contain_zelis_eob_code**](ZelisCostContainmentEOBCodesApi.md#update_cost_contain_zelis_eob_code) | **PUT** /zelis-eob-codes/{eobCode} | Update CostContainZelisEOBCode |


## create_cost_contain_zelis_eob_code

> <CostContainZelisEOBCodeVBAResponse> create_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code)

Create CostContainZelisEOBCode

Creates a new CostContainZelisEOBCode

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_eob_code = Vba::CostContainZelisEOBCode.new({eob_code: 'eob_code_example'}) # CostContainZelisEOBCode | 

begin
  # Create CostContainZelisEOBCode
  result = api_instance.create_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->create_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the create_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEOBCodeVBAResponse>, Integer, Hash)> create_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code)

```ruby
begin
  # Create CostContainZelisEOBCode
  data, status_code, headers = api_instance.create_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEOBCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->create_cost_contain_zelis_eob_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_eob_code** | [**CostContainZelisEOBCode**](CostContainZelisEOBCode.md) |  |  |

### Return type

[**CostContainZelisEOBCodeVBAResponse**](CostContainZelisEOBCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_eob_code

> delete_cost_contain_zelis_eob_code(vbasoftware_database, eob_code)

Delete CostContainZelisEOBCode

Deletes an CostContainZelisEOBCode

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eob_code = 'eob_code_example' # String | EOBCode

begin
  # Delete CostContainZelisEOBCode
  api_instance.delete_cost_contain_zelis_eob_code(vbasoftware_database, eob_code)
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->delete_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the delete_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code)

```ruby
begin
  # Delete CostContainZelisEOBCode
  data, status_code, headers = api_instance.delete_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->delete_cost_contain_zelis_eob_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eob_code** | **String** | EOBCode |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_zelis_eob_code

> <CostContainZelisEOBCodeVBAResponse> get_cost_contain_zelis_eob_code(vbasoftware_database, eob_code)

Get CostContainZelisEOBCode

Gets CostContainZelisEOBCode

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eob_code = 'eob_code_example' # String | EOBCode

begin
  # Get CostContainZelisEOBCode
  result = api_instance.get_cost_contain_zelis_eob_code(vbasoftware_database, eob_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->get_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the get_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEOBCodeVBAResponse>, Integer, Hash)> get_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code)

```ruby
begin
  # Get CostContainZelisEOBCode
  data, status_code, headers = api_instance.get_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEOBCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->get_cost_contain_zelis_eob_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eob_code** | **String** | EOBCode |  |

### Return type

[**CostContainZelisEOBCodeVBAResponse**](CostContainZelisEOBCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_eob_code

> <CostContainZelisEOBCodeListVBAResponse> list_cost_contain_zelis_eob_code(vbasoftware_database, opts)

List CostContainZelisEOBCode

Lists all CostContainZelisEOBCode

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisEOBCode
  result = api_instance.list_cost_contain_zelis_eob_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->list_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the list_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEOBCodeListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainZelisEOBCode
  data, status_code, headers = api_instance.list_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEOBCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->list_cost_contain_zelis_eob_code_with_http_info: #{e}"
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

[**CostContainZelisEOBCodeListVBAResponse**](CostContainZelisEOBCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_eob_code

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code)

Create or Update Batch CostContainZelisEOBCode

Create or Update multiple CostContainZelisEOBCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_eob_code = [Vba::CostContainZelisEOBCode.new({eob_code: 'eob_code_example'})] # Array<CostContainZelisEOBCode> | 

begin
  # Create or Update Batch CostContainZelisEOBCode
  result = api_instance.update_batch_cost_contain_zelis_eob_code(vbasoftware_database, cost_contain_zelis_eob_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->update_batch_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code)

```ruby
begin
  # Create or Update Batch CostContainZelisEOBCode
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, cost_contain_zelis_eob_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->update_batch_cost_contain_zelis_eob_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_eob_code** | [**Array&lt;CostContainZelisEOBCode&gt;**](CostContainZelisEOBCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_eob_code

> <CostContainZelisEOBCodeVBAResponse> update_cost_contain_zelis_eob_code(vbasoftware_database, eob_code, cost_contain_zelis_eob_code)

Update CostContainZelisEOBCode

Updates a specific CostContainZelisEOBCode.

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

api_instance = Vba::ZelisCostContainmentEOBCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
eob_code = 'eob_code_example' # String | EOBCode
cost_contain_zelis_eob_code = Vba::CostContainZelisEOBCode.new({eob_code: 'eob_code_example'}) # CostContainZelisEOBCode | 

begin
  # Update CostContainZelisEOBCode
  result = api_instance.update_cost_contain_zelis_eob_code(vbasoftware_database, eob_code, cost_contain_zelis_eob_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->update_cost_contain_zelis_eob_code: #{e}"
end
```

#### Using the update_cost_contain_zelis_eob_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEOBCodeVBAResponse>, Integer, Hash)> update_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, cost_contain_zelis_eob_code)

```ruby
begin
  # Update CostContainZelisEOBCode
  data, status_code, headers = api_instance.update_cost_contain_zelis_eob_code_with_http_info(vbasoftware_database, eob_code, cost_contain_zelis_eob_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEOBCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEOBCodesApi->update_cost_contain_zelis_eob_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **eob_code** | **String** | EOBCode |  |
| **cost_contain_zelis_eob_code** | [**CostContainZelisEOBCode**](CostContainZelisEOBCode.md) |  |  |

### Return type

[**CostContainZelisEOBCodeVBAResponse**](CostContainZelisEOBCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

