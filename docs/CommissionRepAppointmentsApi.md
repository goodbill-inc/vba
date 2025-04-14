# Vba::CommissionRepAppointmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_appoint**](CommissionRepAppointmentsApi.md#create_commission_rep_appoint) | **POST** /commission-reps/{commRepKey}/commission-rep-appoints | Create CommissionRepAppoint |
| [**delete_commission_rep_appoint**](CommissionRepAppointmentsApi.md#delete_commission_rep_appoint) | **DELETE** /commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey} | Delete CommissionRepAppoint |
| [**get_commission_rep_appoint**](CommissionRepAppointmentsApi.md#get_commission_rep_appoint) | **GET** /commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey} | Get CommissionRepAppoint |
| [**list_commission_rep_appoint**](CommissionRepAppointmentsApi.md#list_commission_rep_appoint) | **GET** /commission-reps/{commRepKey}/commission-rep-appoints | List CommissionRepAppoint |
| [**update_batch_commission_rep_appoint**](CommissionRepAppointmentsApi.md#update_batch_commission_rep_appoint) | **PUT** /commission-reps/{commRepKey}/commission-rep-appoints-batch | Create or Update Batch CommissionRepAppoint |
| [**update_commission_rep_appoint**](CommissionRepAppointmentsApi.md#update_commission_rep_appoint) | **PUT** /commission-reps/{commRepKey}/commission-rep-appoints/{commRepAppointKey} | Update CommissionRepAppoint |


## create_commission_rep_appoint

> <CommissionRepAppointVBAResponse> create_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint)

Create CommissionRepAppoint

Creates a new CommissionRepAppoint

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_appoint = Vba::CommissionRepAppoint.new({commission_rep_appoint_key: 37, commission_rep_key: 37}) # CommissionRepAppoint | 

begin
  # Create CommissionRepAppoint
  result = api_instance.create_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->create_commission_rep_appoint: #{e}"
end
```

#### Using the create_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAppointVBAResponse>, Integer, Hash)> create_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint)

```ruby
begin
  # Create CommissionRepAppoint
  data, status_code, headers = api_instance.create_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAppointVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->create_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_appoint** | [**CommissionRepAppoint**](CommissionRepAppoint.md) |  |  |

### Return type

[**CommissionRepAppointVBAResponse**](CommissionRepAppointVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_appoint

> delete_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)

Delete CommissionRepAppoint

Deletes an CommissionRepAppoint

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_appoint_key = 56 # Integer | CommissionRepAppoint Key

begin
  # Delete CommissionRepAppoint
  api_instance.delete_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->delete_commission_rep_appoint: #{e}"
end
```

#### Using the delete_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)

```ruby
begin
  # Delete CommissionRepAppoint
  data, status_code, headers = api_instance.delete_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->delete_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_appoint_key** | **Integer** | CommissionRepAppoint Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_appoint

> <CommissionRepAppointVBAResponse> get_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)

Get CommissionRepAppoint

Gets CommissionRepAppoint

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_appoint_key = 56 # Integer | CommissionRepAppoint Key

begin
  # Get CommissionRepAppoint
  result = api_instance.get_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->get_commission_rep_appoint: #{e}"
end
```

#### Using the get_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAppointVBAResponse>, Integer, Hash)> get_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)

```ruby
begin
  # Get CommissionRepAppoint
  data, status_code, headers = api_instance.get_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAppointVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->get_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_appoint_key** | **Integer** | CommissionRepAppoint Key |  |

### Return type

[**CommissionRepAppointVBAResponse**](CommissionRepAppointVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_appoint

> <CommissionRepAppointListVBAResponse> list_commission_rep_appoint(vbasoftware_database, comm_rep_key, opts)

List CommissionRepAppoint

Lists all CommissionRepAppoint for the given commRepKey

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepAppoint
  result = api_instance.list_commission_rep_appoint(vbasoftware_database, comm_rep_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->list_commission_rep_appoint: #{e}"
end
```

#### Using the list_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAppointListVBAResponse>, Integer, Hash)> list_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, opts)

```ruby
begin
  # List CommissionRepAppoint
  data, status_code, headers = api_instance.list_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAppointListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->list_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRepAppointListVBAResponse**](CommissionRepAppointListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_appoint

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint)

Create or Update Batch CommissionRepAppoint

Create or Update multiple CommissionRepAppoint at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_appoint = [Vba::CommissionRepAppoint.new({commission_rep_appoint_key: 37, commission_rep_key: 37})] # Array<CommissionRepAppoint> | 

begin
  # Create or Update Batch CommissionRepAppoint
  result = api_instance.update_batch_commission_rep_appoint(vbasoftware_database, comm_rep_key, commission_rep_appoint)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->update_batch_commission_rep_appoint: #{e}"
end
```

#### Using the update_batch_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint)

```ruby
begin
  # Create or Update Batch CommissionRepAppoint
  data, status_code, headers = api_instance.update_batch_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_appoint)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->update_batch_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_appoint** | [**Array&lt;CommissionRepAppoint&gt;**](CommissionRepAppoint.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_appoint

> <CommissionRepAppointVBAResponse> update_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint)

Update CommissionRepAppoint

Updates a specific CommissionRepAppoint.

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

api_instance = Vba::CommissionRepAppointmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_appoint_key = 56 # Integer | CommissionRepAppoint Key
commission_rep_appoint = Vba::CommissionRepAppoint.new({commission_rep_appoint_key: 37, commission_rep_key: 37}) # CommissionRepAppoint | 

begin
  # Update CommissionRepAppoint
  result = api_instance.update_commission_rep_appoint(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->update_commission_rep_appoint: #{e}"
end
```

#### Using the update_commission_rep_appoint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAppointVBAResponse>, Integer, Hash)> update_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint)

```ruby
begin
  # Update CommissionRepAppoint
  data, status_code, headers = api_instance.update_commission_rep_appoint_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_appoint_key, commission_rep_appoint)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAppointVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAppointmentsApi->update_commission_rep_appoint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_appoint_key** | **Integer** | CommissionRepAppoint Key |  |
| **commission_rep_appoint** | [**CommissionRepAppoint**](CommissionRepAppoint.md) |  |  |

### Return type

[**CommissionRepAppointVBAResponse**](CommissionRepAppointVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

