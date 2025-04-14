# Vba::CommissionAgencyRepRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#create_commission_agency_rep_rate) | **POST** /commission-agency-rep-rates | Create CommissionAgencyRepRate |
| [**delete_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#delete_commission_agency_rep_rate) | **DELETE** /commission-agency-rep-rates/{commAgencyRepRateKey} | Delete CommissionAgencyRepRate |
| [**delete_commission_agency_rep_rate_by_agent**](CommissionAgencyRepRatesApi.md#delete_commission_agency_rep_rate_by_agent) | **DELETE** /commission-agency-rep-rates | Delete CommissionAgencyRepRate by Agent |
| [**get_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#get_commission_agency_rep_rate) | **GET** /commission-agency-rep-rates/{commAgencyRepRateKey} | Get CommissionAgencyRepRate |
| [**list_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#list_commission_agency_rep_rate) | **GET** /commission-rates/{commRateKey}/commission-agency-rep-rates | List CommissionAgencyRepRate |
| [**update_batch_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#update_batch_commission_agency_rep_rate) | **PUT** /commission-rates/{commRateKey}/commission-agency-rep-rates-batch | Create or Update Batch CommissionAgencyRepRate |
| [**update_commission_agency_rep_rate**](CommissionAgencyRepRatesApi.md#update_commission_agency_rep_rate) | **PUT** /commission-agency-rep-rates/{commAgencyRepRateKey} | Update CommissionAgencyRepRate |


## create_commission_agency_rep_rate

> <CommissionAgencyRepRateVBAResponse> create_commission_agency_rep_rate(vbasoftware_database, commission_agency_rep_rate)

Create CommissionAgencyRepRate

Creates a new CommissionAgencyRepRate

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_rep_rate = Vba::CommissionAgencyRepRate.new({commission_agency_rep_rate_key: 37, commission_agency_rep_key: 37, commission_rate_key: 37}) # CommissionAgencyRepRate | 

begin
  # Create CommissionAgencyRepRate
  result = api_instance.create_commission_agency_rep_rate(vbasoftware_database, commission_agency_rep_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->create_commission_agency_rep_rate: #{e}"
end
```

#### Using the create_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepRateVBAResponse>, Integer, Hash)> create_commission_agency_rep_rate_with_http_info(vbasoftware_database, commission_agency_rep_rate)

```ruby
begin
  # Create CommissionAgencyRepRate
  data, status_code, headers = api_instance.create_commission_agency_rep_rate_with_http_info(vbasoftware_database, commission_agency_rep_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->create_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_rep_rate** | [**CommissionAgencyRepRate**](CommissionAgencyRepRate.md) |  |  |

### Return type

[**CommissionAgencyRepRateVBAResponse**](CommissionAgencyRepRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_agency_rep_rate

> delete_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key)

Delete CommissionAgencyRepRate

Deletes an CommissionAgencyRepRate

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_rate_key = 56 # Integer | CommissionAgencyRepRate Key

begin
  # Delete CommissionAgencyRepRate
  api_instance.delete_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->delete_commission_agency_rep_rate: #{e}"
end
```

#### Using the delete_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key)

```ruby
begin
  # Delete CommissionAgencyRepRate
  data, status_code, headers = api_instance.delete_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->delete_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_rate_key** | **Integer** | CommissionAgencyRepRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_commission_agency_rep_rate_by_agent

> delete_commission_agency_rep_rate_by_agent(vbasoftware_database, commission_agency_rep_key)

Delete CommissionAgencyRepRate by Agent

Deletes an CommissionAgencyRepRate by Agent

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_rep_key = 56 # Integer | CommissionAgencyRep Key

begin
  # Delete CommissionAgencyRepRate by Agent
  api_instance.delete_commission_agency_rep_rate_by_agent(vbasoftware_database, commission_agency_rep_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->delete_commission_agency_rep_rate_by_agent: #{e}"
end
```

#### Using the delete_commission_agency_rep_rate_by_agent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_agency_rep_rate_by_agent_with_http_info(vbasoftware_database, commission_agency_rep_key)

```ruby
begin
  # Delete CommissionAgencyRepRate by Agent
  data, status_code, headers = api_instance.delete_commission_agency_rep_rate_by_agent_with_http_info(vbasoftware_database, commission_agency_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->delete_commission_agency_rep_rate_by_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_rep_key** | **Integer** | CommissionAgencyRep Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_agency_rep_rate

> <CommissionAgencyRepRateVBAResponse> get_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key)

Get CommissionAgencyRepRate

Gets CommissionAgencyRepRate

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_rate_key = 56 # Integer | CommissionAgencyRepRate Key

begin
  # Get CommissionAgencyRepRate
  result = api_instance.get_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->get_commission_agency_rep_rate: #{e}"
end
```

#### Using the get_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepRateVBAResponse>, Integer, Hash)> get_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key)

```ruby
begin
  # Get CommissionAgencyRepRate
  data, status_code, headers = api_instance.get_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->get_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_rate_key** | **Integer** | CommissionAgencyRepRate Key |  |

### Return type

[**CommissionAgencyRepRateVBAResponse**](CommissionAgencyRepRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_agency_rep_rate

> <CommissionAgencyRepRateListVBAResponse> list_commission_agency_rep_rate(vbasoftware_database, comm_rate_key, opts)

List CommissionAgencyRepRate

Lists all CommissionAgencyRepRate for the given commRateKey

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAgencyRepRate
  result = api_instance.list_commission_agency_rep_rate(vbasoftware_database, comm_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->list_commission_agency_rep_rate: #{e}"
end
```

#### Using the list_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepRateListVBAResponse>, Integer, Hash)> list_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_rate_key, opts)

```ruby
begin
  # List CommissionAgencyRepRate
  data, status_code, headers = api_instance.list_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->list_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionAgencyRepRateListVBAResponse**](CommissionAgencyRepRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_agency_rep_rate

> <MultiCodeResponseListVBAResponse> update_batch_commission_agency_rep_rate(vbasoftware_database, comm_rate_key, commission_agency_rep_rate)

Create or Update Batch CommissionAgencyRepRate

Create or Update multiple CommissionAgencyRepRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
commission_agency_rep_rate = [Vba::CommissionAgencyRepRate.new({commission_agency_rep_rate_key: 37, commission_agency_rep_key: 37, commission_rate_key: 37})] # Array<CommissionAgencyRepRate> | 

begin
  # Create or Update Batch CommissionAgencyRepRate
  result = api_instance.update_batch_commission_agency_rep_rate(vbasoftware_database, comm_rate_key, commission_agency_rep_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->update_batch_commission_agency_rep_rate: #{e}"
end
```

#### Using the update_batch_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_rate_key, commission_agency_rep_rate)

```ruby
begin
  # Create or Update Batch CommissionAgencyRepRate
  data, status_code, headers = api_instance.update_batch_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_rate_key, commission_agency_rep_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->update_batch_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **commission_agency_rep_rate** | [**Array&lt;CommissionAgencyRepRate&gt;**](CommissionAgencyRepRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_agency_rep_rate

> <CommissionAgencyRepRateVBAResponse> update_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key, commission_agency_rep_rate)

Update CommissionAgencyRepRate

Updates a specific CommissionAgencyRepRate.

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

api_instance = Vba::CommissionAgencyRepRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_agency_rep_rate_key = 56 # Integer | CommissionAgencyRepRate Key
commission_agency_rep_rate = Vba::CommissionAgencyRepRate.new({commission_agency_rep_rate_key: 37, commission_agency_rep_key: 37, commission_rate_key: 37}) # CommissionAgencyRepRate | 

begin
  # Update CommissionAgencyRepRate
  result = api_instance.update_commission_agency_rep_rate(vbasoftware_database, comm_agency_rep_rate_key, commission_agency_rep_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->update_commission_agency_rep_rate: #{e}"
end
```

#### Using the update_commission_agency_rep_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyRepRateVBAResponse>, Integer, Hash)> update_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key, commission_agency_rep_rate)

```ruby
begin
  # Update CommissionAgencyRepRate
  data, status_code, headers = api_instance.update_commission_agency_rep_rate_with_http_info(vbasoftware_database, comm_agency_rep_rate_key, commission_agency_rep_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyRepRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyRepRatesApi->update_commission_agency_rep_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_agency_rep_rate_key** | **Integer** | CommissionAgencyRepRate Key |  |
| **commission_agency_rep_rate** | [**CommissionAgencyRepRate**](CommissionAgencyRepRate.md) |  |  |

### Return type

[**CommissionAgencyRepRateVBAResponse**](CommissionAgencyRepRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

