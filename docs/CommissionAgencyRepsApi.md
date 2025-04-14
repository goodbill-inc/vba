# Vba::CommissionAgencyRepsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_agency_rep**](CommissionAgencyRepsApi.md#create_commission_agency_rep) | **POST** /commission-agency-reps | Create CommissionAgencyRep |
| [**delete_commission_agency_rep**](CommissionAgencyRepsApi.md#delete_commission_agency_rep) | **DELETE** /commission-agency-reps/{commAgencyRepKey} | Delete CommissionAgencyRep |
| [**get_commission_agency_rep**](CommissionAgencyRepsApi.md#get_commission_agency_rep) | **GET** /commission-agency-reps/{commAgencyRepKey} | Get CommissionAgencyRep |
| [**list_commission_agency_rep**](CommissionAgencyRepsApi.md#list_commission_agency_rep) | **GET** /commission-agency-reps | List Commission Agency Representatives |
| [**update_batch_commission_agency_rep**](CommissionAgencyRepsApi.md#update_batch_commission_agency_rep) | **PUT** /commission-agency-reps-batch | Create or Update Batch CommissionAgencyRep |
| [**update_commission_agency_rep**](CommissionAgencyRepsApi.md#update_commission_agency_rep) | **PUT** /commission-agency-reps/{commAgencyRepKey} | Update CommissionAgencyRep |


## create_commission_agency_rep

> <CommissionAgencyRepVBAResponse> create_commission_agency_rep(vbasoftware_database, commission_agency_rep)

Create CommissionAgencyRep

Creates a new CommissionAgencyRep

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_rep = Vba::CommissionAgencyRep.new({commission_agency_rep_key: 37, commission_agency_key: 37, commission_rep_key: 37}) # CommissionAgencyRep | 

begin
  # Create CommissionAgencyRep
  result = api_instance.create_commission_agency_rep(vbasoftware_database, commission_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->create_commission_agency_rep: #{e}"
end
```

#### Using the create_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepVBAResponse>, Integer, Hash)> create_commission_agency_rep_with_http_info(vbasoftware_database, commission_agency_rep)

```ruby
begin
  # Create CommissionAgencyRep
  data, status_code, headers = api_instance.create_commission_agency_rep_with_http_info(vbasoftware_database, commission_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->create_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_rep** | [**CommissionAgencyRep**](CommissionAgencyRep.md) |  |  |

### Return type

[**CommissionAgencyRepVBAResponse**](CommissionAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_agency_rep

> delete_commission_agency_rep(vbasoftware_database, comm_agency_rep_key)

Delete CommissionAgencyRep

Deletes an CommissionAgencyRep

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_key = 56 # Integer | CommissionAgencyRep Key

begin
  # Delete CommissionAgencyRep
  api_instance.delete_commission_agency_rep(vbasoftware_database, comm_agency_rep_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->delete_commission_agency_rep: #{e}"
end
```

#### Using the delete_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key)

```ruby
begin
  # Delete CommissionAgencyRep
  data, status_code, headers = api_instance.delete_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->delete_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_key** | **Integer** | CommissionAgencyRep Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_agency_rep

> <CommissionAgencyRepVBAResponse> get_commission_agency_rep(vbasoftware_database, comm_agency_rep_key)

Get CommissionAgencyRep

Gets CommissionAgencyRep

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_key = 56 # Integer | CommissionAgencyRep Key

begin
  # Get CommissionAgencyRep
  result = api_instance.get_commission_agency_rep(vbasoftware_database, comm_agency_rep_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->get_commission_agency_rep: #{e}"
end
```

#### Using the get_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepVBAResponse>, Integer, Hash)> get_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key)

```ruby
begin
  # Get CommissionAgencyRep
  data, status_code, headers = api_instance.get_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->get_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_key** | **Integer** | CommissionAgencyRep Key |  |

### Return type

[**CommissionAgencyRepVBAResponse**](CommissionAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_agency_rep

> <CommissionAgencyRepListVBAResponse> list_commission_agency_rep(vbasoftware_database, opts)

List Commission Agency Representatives

Lists all Commission Agency Representatives for the optional Commission Agency key, with pagination.

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  comm_agency_key: 56, # Integer | CommissionAgency Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Commission Agency Representatives
  result = api_instance.list_commission_agency_rep(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->list_commission_agency_rep: #{e}"
end
```

#### Using the list_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepListVBAResponse>, Integer, Hash)> list_commission_agency_rep_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Commission Agency Representatives
  data, status_code, headers = api_instance.list_commission_agency_rep_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->list_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_key** | **Integer** | CommissionAgency Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionAgencyRepListVBAResponse**](CommissionAgencyRepListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_agency_rep

> <MultiCodeResponseListVBAResponse> update_batch_commission_agency_rep(vbasoftware_database, commission_agency_rep)

Create or Update Batch CommissionAgencyRep

Create or Update multiple CommissionAgencyRep at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_rep = [Vba::CommissionAgencyRep.new({commission_agency_rep_key: 37, commission_agency_key: 37, commission_rep_key: 37})] # Array<CommissionAgencyRep> | 

begin
  # Create or Update Batch CommissionAgencyRep
  result = api_instance.update_batch_commission_agency_rep(vbasoftware_database, commission_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->update_batch_commission_agency_rep: #{e}"
end
```

#### Using the update_batch_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_agency_rep_with_http_info(vbasoftware_database, commission_agency_rep)

```ruby
begin
  # Create or Update Batch CommissionAgencyRep
  data, status_code, headers = api_instance.update_batch_commission_agency_rep_with_http_info(vbasoftware_database, commission_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->update_batch_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_rep** | [**Array&lt;CommissionAgencyRep&gt;**](CommissionAgencyRep.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_agency_rep

> <CommissionAgencyRepVBAResponse> update_commission_agency_rep(vbasoftware_database, comm_agency_rep_key, commission_agency_rep)

Update CommissionAgencyRep

Updates a specific CommissionAgencyRep.

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

api_instance = Vba::CommissionAgencyRepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_key = 56 # Integer | CommissionAgencyRep Key
commission_agency_rep = Vba::CommissionAgencyRep.new({commission_agency_rep_key: 37, commission_agency_key: 37, commission_rep_key: 37}) # CommissionAgencyRep | 

begin
  # Update CommissionAgencyRep
  result = api_instance.update_commission_agency_rep(vbasoftware_database, comm_agency_rep_key, commission_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->update_commission_agency_rep: #{e}"
end
```

#### Using the update_commission_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepVBAResponse>, Integer, Hash)> update_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key, commission_agency_rep)

```ruby
begin
  # Update CommissionAgencyRep
  data, status_code, headers = api_instance.update_commission_agency_rep_with_http_info(vbasoftware_database, comm_agency_rep_key, commission_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepsApi->update_commission_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_key** | **Integer** | CommissionAgencyRep Key |  |
| **commission_agency_rep** | [**CommissionAgencyRep**](CommissionAgencyRep.md) |  |  |

### Return type

[**CommissionAgencyRepVBAResponse**](CommissionAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

