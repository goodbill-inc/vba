# Vba::CommissionRepsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep**](CommissionRepsApi.md#create_commission_rep) | **POST** /commission-reps | Create CommissionRep |
| [**delete_commission_rep**](CommissionRepsApi.md#delete_commission_rep) | **DELETE** /commission-reps/{commRepKey} | Delete CommissionRep |
| [**get_commission_rep**](CommissionRepsApi.md#get_commission_rep) | **GET** /commission-reps/{commRepKey} | Get CommissionRep |
| [**list_commission_rep**](CommissionRepsApi.md#list_commission_rep) | **GET** /commission-reps | List CommissionRep |
| [**update_batch_commission_rep**](CommissionRepsApi.md#update_batch_commission_rep) | **PUT** /commission-reps-batch | Create or Update Batch CommissionRep |
| [**update_commission_rep**](CommissionRepsApi.md#update_commission_rep) | **PUT** /commission-reps/{commRepKey} | Update CommissionRep |


## create_commission_rep

> <CommissionRepVBAResponse> create_commission_rep(vbasoftware_database, commission_rep)

Create CommissionRep

Creates a new CommissionRep

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rep = Vba::CommissionRep.new({commission_rep_key: 37, email_statement: false}) # CommissionRep | 

begin
  # Create CommissionRep
  result = api_instance.create_commission_rep(vbasoftware_database, commission_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->create_commission_rep: #{e}"
end
```

#### Using the create_commission_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepVBAResponse>, Integer, Hash)> create_commission_rep_with_http_info(vbasoftware_database, commission_rep)

```ruby
begin
  # Create CommissionRep
  data, status_code, headers = api_instance.create_commission_rep_with_http_info(vbasoftware_database, commission_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->create_commission_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rep** | [**CommissionRep**](CommissionRep.md) |  |  |

### Return type

[**CommissionRepVBAResponse**](CommissionRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep

> delete_commission_rep(vbasoftware_database, comm_rep_key)

Delete CommissionRep

Deletes an CommissionRep

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key

begin
  # Delete CommissionRep
  api_instance.delete_commission_rep(vbasoftware_database, comm_rep_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->delete_commission_rep: #{e}"
end
```

#### Using the delete_commission_rep_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_with_http_info(vbasoftware_database, comm_rep_key)

```ruby
begin
  # Delete CommissionRep
  data, status_code, headers = api_instance.delete_commission_rep_with_http_info(vbasoftware_database, comm_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->delete_commission_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep

> <CommissionRepVBAResponse> get_commission_rep(vbasoftware_database, comm_rep_key)

Get CommissionRep

Gets CommissionRep

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key

begin
  # Get CommissionRep
  result = api_instance.get_commission_rep(vbasoftware_database, comm_rep_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->get_commission_rep: #{e}"
end
```

#### Using the get_commission_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepVBAResponse>, Integer, Hash)> get_commission_rep_with_http_info(vbasoftware_database, comm_rep_key)

```ruby
begin
  # Get CommissionRep
  data, status_code, headers = api_instance.get_commission_rep_with_http_info(vbasoftware_database, comm_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->get_commission_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |

### Return type

[**CommissionRepVBAResponse**](CommissionRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep

> <CommissionRepListVBAResponse> list_commission_rep(vbasoftware_database, opts)

List CommissionRep

Lists all CommissionRep

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRep
  result = api_instance.list_commission_rep(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->list_commission_rep: #{e}"
end
```

#### Using the list_commission_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepListVBAResponse>, Integer, Hash)> list_commission_rep_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionRep
  data, status_code, headers = api_instance.list_commission_rep_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->list_commission_rep_with_http_info: #{e}"
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

[**CommissionRepListVBAResponse**](CommissionRepListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep(vbasoftware_database, commission_rep)

Create or Update Batch CommissionRep

Create or Update multiple CommissionRep at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rep = [Vba::CommissionRep.new({commission_rep_key: 37, email_statement: false})] # Array<CommissionRep> | 

begin
  # Create or Update Batch CommissionRep
  result = api_instance.update_batch_commission_rep(vbasoftware_database, commission_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->update_batch_commission_rep: #{e}"
end
```

#### Using the update_batch_commission_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_with_http_info(vbasoftware_database, commission_rep)

```ruby
begin
  # Create or Update Batch CommissionRep
  data, status_code, headers = api_instance.update_batch_commission_rep_with_http_info(vbasoftware_database, commission_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->update_batch_commission_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rep** | [**Array&lt;CommissionRep&gt;**](CommissionRep.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep

> <CommissionRepVBAResponse> update_commission_rep(vbasoftware_database, comm_rep_key, commission_rep)

Update CommissionRep

Updates a specific CommissionRep.

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

api_instance = Vba::CommissionRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep = Vba::CommissionRep.new({commission_rep_key: 37, email_statement: false}) # CommissionRep | 

begin
  # Update CommissionRep
  result = api_instance.update_commission_rep(vbasoftware_database, comm_rep_key, commission_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->update_commission_rep: #{e}"
end
```

#### Using the update_commission_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepVBAResponse>, Integer, Hash)> update_commission_rep_with_http_info(vbasoftware_database, comm_rep_key, commission_rep)

```ruby
begin
  # Update CommissionRep
  data, status_code, headers = api_instance.update_commission_rep_with_http_info(vbasoftware_database, comm_rep_key, commission_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepsApi->update_commission_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep** | [**CommissionRep**](CommissionRep.md) |  |  |

### Return type

[**CommissionRepVBAResponse**](CommissionRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

