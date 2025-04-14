# Vba::CommissionAgenciesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_agency**](CommissionAgenciesApi.md#create_commission_agency) | **POST** /commission-agencies | Create CommissionAgency |
| [**delete_commission_agency**](CommissionAgenciesApi.md#delete_commission_agency) | **DELETE** /commission-agencies/{commAgencyKey} | Delete CommissionAgency |
| [**get_commission_agency**](CommissionAgenciesApi.md#get_commission_agency) | **GET** /commission-agencies/{commAgencyKey} | Get CommissionAgency |
| [**list_commission_agency**](CommissionAgenciesApi.md#list_commission_agency) | **GET** /commission-agencies | List CommissionAgency |
| [**update_batch_commission_agency**](CommissionAgenciesApi.md#update_batch_commission_agency) | **PUT** /commission-agencies-batch | Create or Update Batch CommissionAgency |
| [**update_commission_agency**](CommissionAgenciesApi.md#update_commission_agency) | **PUT** /commission-agencies/{commAgencyKey} | Update CommissionAgency |


## create_commission_agency

> <CommissionAgencyVBAResponse> create_commission_agency(vbasoftware_database, commission_agency)

Create CommissionAgency

Creates a new CommissionAgency

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency = Vba::CommissionAgency.new({commission_agency_key: 37}) # CommissionAgency | 

begin
  # Create CommissionAgency
  result = api_instance.create_commission_agency(vbasoftware_database, commission_agency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->create_commission_agency: #{e}"
end
```

#### Using the create_commission_agency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyVBAResponse>, Integer, Hash)> create_commission_agency_with_http_info(vbasoftware_database, commission_agency)

```ruby
begin
  # Create CommissionAgency
  data, status_code, headers = api_instance.create_commission_agency_with_http_info(vbasoftware_database, commission_agency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->create_commission_agency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency** | [**CommissionAgency**](CommissionAgency.md) |  |  |

### Return type

[**CommissionAgencyVBAResponse**](CommissionAgencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_agency

> delete_commission_agency(vbasoftware_database, comm_agency_key)

Delete CommissionAgency

Deletes an CommissionAgency

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_key = 56 # Integer | CommissionAgency Key

begin
  # Delete CommissionAgency
  api_instance.delete_commission_agency(vbasoftware_database, comm_agency_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->delete_commission_agency: #{e}"
end
```

#### Using the delete_commission_agency_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_agency_with_http_info(vbasoftware_database, comm_agency_key)

```ruby
begin
  # Delete CommissionAgency
  data, status_code, headers = api_instance.delete_commission_agency_with_http_info(vbasoftware_database, comm_agency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->delete_commission_agency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_key** | **Integer** | CommissionAgency Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_agency

> <CommissionAgencyVBAResponse> get_commission_agency(vbasoftware_database, comm_agency_key)

Get CommissionAgency

Gets CommissionAgency

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_key = 56 # Integer | CommissionAgency Key

begin
  # Get CommissionAgency
  result = api_instance.get_commission_agency(vbasoftware_database, comm_agency_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->get_commission_agency: #{e}"
end
```

#### Using the get_commission_agency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyVBAResponse>, Integer, Hash)> get_commission_agency_with_http_info(vbasoftware_database, comm_agency_key)

```ruby
begin
  # Get CommissionAgency
  data, status_code, headers = api_instance.get_commission_agency_with_http_info(vbasoftware_database, comm_agency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->get_commission_agency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_key** | **Integer** | CommissionAgency Key |  |

### Return type

[**CommissionAgencyVBAResponse**](CommissionAgencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_agency

> <CommissionAgencyListVBAResponse> list_commission_agency(vbasoftware_database, opts)

List CommissionAgency

Lists all CommissionAgency

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAgency
  result = api_instance.list_commission_agency(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->list_commission_agency: #{e}"
end
```

#### Using the list_commission_agency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyListVBAResponse>, Integer, Hash)> list_commission_agency_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionAgency
  data, status_code, headers = api_instance.list_commission_agency_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->list_commission_agency_with_http_info: #{e}"
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

[**CommissionAgencyListVBAResponse**](CommissionAgencyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_agency

> <MultiCodeResponseListVBAResponse> update_batch_commission_agency(vbasoftware_database, commission_agency)

Create or Update Batch CommissionAgency

Create or Update multiple CommissionAgency at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency = [Vba::CommissionAgency.new({commission_agency_key: 37})] # Array<CommissionAgency> | 

begin
  # Create or Update Batch CommissionAgency
  result = api_instance.update_batch_commission_agency(vbasoftware_database, commission_agency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->update_batch_commission_agency: #{e}"
end
```

#### Using the update_batch_commission_agency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_agency_with_http_info(vbasoftware_database, commission_agency)

```ruby
begin
  # Create or Update Batch CommissionAgency
  data, status_code, headers = api_instance.update_batch_commission_agency_with_http_info(vbasoftware_database, commission_agency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->update_batch_commission_agency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency** | [**Array&lt;CommissionAgency&gt;**](CommissionAgency.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_agency

> <CommissionAgencyVBAResponse> update_commission_agency(vbasoftware_database, comm_agency_key, commission_agency)

Update CommissionAgency

Updates a specific CommissionAgency.

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

api_instance = Vba::CommissionAgenciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_key = 56 # Integer | CommissionAgency Key
commission_agency = Vba::CommissionAgency.new({commission_agency_key: 37}) # CommissionAgency | 

begin
  # Update CommissionAgency
  result = api_instance.update_commission_agency(vbasoftware_database, comm_agency_key, commission_agency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->update_commission_agency: #{e}"
end
```

#### Using the update_commission_agency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyVBAResponse>, Integer, Hash)> update_commission_agency_with_http_info(vbasoftware_database, comm_agency_key, commission_agency)

```ruby
begin
  # Update CommissionAgency
  data, status_code, headers = api_instance.update_commission_agency_with_http_info(vbasoftware_database, comm_agency_key, commission_agency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgenciesApi->update_commission_agency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_key** | **Integer** | CommissionAgency Key |  |
| **commission_agency** | [**CommissionAgency**](CommissionAgency.md) |  |  |

### Return type

[**CommissionAgencyVBAResponse**](CommissionAgencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

