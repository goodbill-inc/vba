# Vba::CommissionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commission_generate**](CommissionsApi.md#commission_generate) | **POST** /commission-generate | Commission Generate |
| [**create_commission**](CommissionsApi.md#create_commission) | **POST** /commission-transactions/{commTransKey}/commissions | Create Commission |
| [**delete_commission**](CommissionsApi.md#delete_commission) | **DELETE** /commission-transactions/{commTransKey}/commissions/{commKey} | Delete Commission |
| [**get_commission**](CommissionsApi.md#get_commission) | **GET** /commission-transactions/{commTransKey}/commissions/{commKey} | Get Commission |
| [**list_commission**](CommissionsApi.md#list_commission) | **GET** /commission-transactions/{commTransKey}/commissions | List Commission |
| [**list_unassigned_commission**](CommissionsApi.md#list_unassigned_commission) | **GET** /unassigned-commissions | List Unassigned Commission |
| [**update_batch_commission**](CommissionsApi.md#update_batch_commission) | **PUT** /commission-transactions/{commTransKey}/commissions-batch | Create or Update Batch Commission |
| [**update_commission**](CommissionsApi.md#update_commission) | **PUT** /commission-transactions/{commTransKey}/commissions/{commKey} | Update Commission |


## commission_generate

> commission_generate(vbasoftware_database)

Commission Generate

Generates Commission records and attaches those to a new Commission Transaction based on entered criteria.

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Commission Generate
  api_instance.commission_generate(vbasoftware_database)
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->commission_generate: #{e}"
end
```

#### Using the commission_generate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commission_generate_with_http_info(vbasoftware_database)

```ruby
begin
  # Commission Generate
  data, status_code, headers = api_instance.commission_generate_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->commission_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_commission

> <CommissionVBAResponse> create_commission(vbasoftware_database, comm_trans_key, commission)

Create Commission

Creates a new Commission

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
commission = Vba::Commission.new({commission_key: 37}) # Commission | 

begin
  # Create Commission
  result = api_instance.create_commission(vbasoftware_database, comm_trans_key, commission)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->create_commission: #{e}"
end
```

#### Using the create_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionVBAResponse>, Integer, Hash)> create_commission_with_http_info(vbasoftware_database, comm_trans_key, commission)

```ruby
begin
  # Create Commission
  data, status_code, headers = api_instance.create_commission_with_http_info(vbasoftware_database, comm_trans_key, commission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->create_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **commission** | [**Commission**](Commission.md) |  |  |

### Return type

[**CommissionVBAResponse**](CommissionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission

> delete_commission(vbasoftware_database, comm_trans_key, comm_key)

Delete Commission

Deletes an Commission

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
comm_key = 56 # Integer | Commission Key

begin
  # Delete Commission
  api_instance.delete_commission(vbasoftware_database, comm_trans_key, comm_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->delete_commission: #{e}"
end
```

#### Using the delete_commission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key)

```ruby
begin
  # Delete Commission
  data, status_code, headers = api_instance.delete_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->delete_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **comm_key** | **Integer** | Commission Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission

> <CommissionVBAResponse> get_commission(vbasoftware_database, comm_trans_key, comm_key)

Get Commission

Gets Commission

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
comm_key = 56 # Integer | Commission Key

begin
  # Get Commission
  result = api_instance.get_commission(vbasoftware_database, comm_trans_key, comm_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->get_commission: #{e}"
end
```

#### Using the get_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionVBAResponse>, Integer, Hash)> get_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key)

```ruby
begin
  # Get Commission
  data, status_code, headers = api_instance.get_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->get_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **comm_key** | **Integer** | Commission Key |  |

### Return type

[**CommissionVBAResponse**](CommissionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission

> <CommissionListVBAResponse> list_commission(vbasoftware_database, comm_trans_key, opts)

List Commission

Lists all Commission for the given commTransKey

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Commission
  result = api_instance.list_commission(vbasoftware_database, comm_trans_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->list_commission: #{e}"
end
```

#### Using the list_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionListVBAResponse>, Integer, Hash)> list_commission_with_http_info(vbasoftware_database, comm_trans_key, opts)

```ruby
begin
  # List Commission
  data, status_code, headers = api_instance.list_commission_with_http_info(vbasoftware_database, comm_trans_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->list_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionListVBAResponse**](CommissionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_unassigned_commission

> <CommissionListVBAResponse> list_unassigned_commission(vbasoftware_database, opts)

List Unassigned Commission

Lists all Commissions that are not assigned to a Commission Transaction.

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Unassigned Commission
  result = api_instance.list_unassigned_commission(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->list_unassigned_commission: #{e}"
end
```

#### Using the list_unassigned_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionListVBAResponse>, Integer, Hash)> list_unassigned_commission_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Unassigned Commission
  data, status_code, headers = api_instance.list_unassigned_commission_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->list_unassigned_commission_with_http_info: #{e}"
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

[**CommissionListVBAResponse**](CommissionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission

> <MultiCodeResponseListVBAResponse> update_batch_commission(vbasoftware_database, comm_trans_key, commission)

Create or Update Batch Commission

Create or Update multiple Commission at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
commission = [Vba::Commission.new({commission_key: 37})] # Array<Commission> | 

begin
  # Create or Update Batch Commission
  result = api_instance.update_batch_commission(vbasoftware_database, comm_trans_key, commission)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->update_batch_commission: #{e}"
end
```

#### Using the update_batch_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_with_http_info(vbasoftware_database, comm_trans_key, commission)

```ruby
begin
  # Create or Update Batch Commission
  data, status_code, headers = api_instance.update_batch_commission_with_http_info(vbasoftware_database, comm_trans_key, commission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->update_batch_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **commission** | [**Array&lt;Commission&gt;**](Commission.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission

> <CommissionVBAResponse> update_commission(vbasoftware_database, comm_trans_key, comm_key, commission)

Update Commission

Updates a specific Commission.

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

api_instance = Vba::CommissionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
comm_key = 56 # Integer | Commission Key
commission = Vba::Commission.new({commission_key: 37}) # Commission | 

begin
  # Update Commission
  result = api_instance.update_commission(vbasoftware_database, comm_trans_key, comm_key, commission)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->update_commission: #{e}"
end
```

#### Using the update_commission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionVBAResponse>, Integer, Hash)> update_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key, commission)

```ruby
begin
  # Update Commission
  data, status_code, headers = api_instance.update_commission_with_http_info(vbasoftware_database, comm_trans_key, comm_key, commission)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionsApi->update_commission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **comm_key** | **Integer** | Commission Key |  |
| **commission** | [**Commission**](Commission.md) |  |  |

### Return type

[**CommissionVBAResponse**](CommissionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

