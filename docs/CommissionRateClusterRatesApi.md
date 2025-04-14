# Vba::CommissionRateClusterRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#create_commission_rate_cluster_rate) | **POST** /commission-rate-clusters/{rateCluster}/commission-rates | Create CommissionRateClusterRate |
| [**delete_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#delete_commission_rate_cluster_rate) | **DELETE** /commission-rate-clusters/{rateCluster}/commission-rates/{commRateKey} | Delete CommissionRateClusterRate |
| [**get_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#get_commission_rate_cluster_rate) | **GET** /commission-rate-clusters/{rateCluster}/commission-rates/{commRateKey} | Get CommissionRateClusterRate |
| [**list_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#list_commission_rate_cluster_rate) | **GET** /commission-rate-clusters/{rateCluster}/commission-rates | List CommissionRateClusterRate |
| [**update_batch_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#update_batch_commission_rate_cluster_rate) | **PUT** /commission-rate-clusters/{rateCluster}/commission-rates-batch | Create or Update Batch CommissionRateClusterRate |
| [**update_commission_rate_cluster_rate**](CommissionRateClusterRatesApi.md#update_commission_rate_cluster_rate) | **PUT** /commission-rate-clusters/{rateCluster}/commission-rates/{commRateKey} | Update CommissionRateClusterRate |


## create_commission_rate_cluster_rate

> <CommissionRateClusterRateVBAResponse> create_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)

Create CommissionRateClusterRate

Creates a new CommissionRateClusterRate

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
commission_rate_cluster_rate = Vba::CommissionRateClusterRate.new({rate_cluster: 'rate_cluster_example', commission_rate_key: 37}) # CommissionRateClusterRate | 

begin
  # Create CommissionRateClusterRate
  result = api_instance.create_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->create_commission_rate_cluster_rate: #{e}"
end
```

#### Using the create_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterRateVBAResponse>, Integer, Hash)> create_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)

```ruby
begin
  # Create CommissionRateClusterRate
  data, status_code, headers = api_instance.create_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->create_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **commission_rate_cluster_rate** | [**CommissionRateClusterRate**](CommissionRateClusterRate.md) |  |  |

### Return type

[**CommissionRateClusterRateVBAResponse**](CommissionRateClusterRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rate_cluster_rate

> delete_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key)

Delete CommissionRateClusterRate

Deletes an CommissionRateClusterRate

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
comm_rate_key = 56 # Integer | CommissionRate Key

begin
  # Delete CommissionRateClusterRate
  api_instance.delete_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->delete_commission_rate_cluster_rate: #{e}"
end
```

#### Using the delete_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key)

```ruby
begin
  # Delete CommissionRateClusterRate
  data, status_code, headers = api_instance.delete_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->delete_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rate_cluster_rate

> <CommissionRateClusterRateVBAResponse> get_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key)

Get CommissionRateClusterRate

Gets CommissionRateClusterRate

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
comm_rate_key = 56 # Integer | CommissionRate Key

begin
  # Get CommissionRateClusterRate
  result = api_instance.get_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->get_commission_rate_cluster_rate: #{e}"
end
```

#### Using the get_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterRateVBAResponse>, Integer, Hash)> get_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key)

```ruby
begin
  # Get CommissionRateClusterRate
  data, status_code, headers = api_instance.get_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->get_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |

### Return type

[**CommissionRateClusterRateVBAResponse**](CommissionRateClusterRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate_cluster_rate

> <CommissionRateClusterRateListVBAResponse> list_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, opts)

List CommissionRateClusterRate

Lists all CommissionRateClusterRate for the given rateCluster

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRateClusterRate
  result = api_instance.list_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->list_commission_rate_cluster_rate: #{e}"
end
```

#### Using the list_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterRateListVBAResponse>, Integer, Hash)> list_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, opts)

```ruby
begin
  # List CommissionRateClusterRate
  data, status_code, headers = api_instance.list_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->list_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRateClusterRateListVBAResponse**](CommissionRateClusterRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rate_cluster_rate

> <MultiCodeResponseListVBAResponse> update_batch_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)

Create or Update Batch CommissionRateClusterRate

Create or Update multiple CommissionRateClusterRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
commission_rate_cluster_rate = [Vba::CommissionRateClusterRate.new({rate_cluster: 'rate_cluster_example', commission_rate_key: 37})] # Array<CommissionRateClusterRate> | 

begin
  # Create or Update Batch CommissionRateClusterRate
  result = api_instance.update_batch_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->update_batch_commission_rate_cluster_rate: #{e}"
end
```

#### Using the update_batch_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)

```ruby
begin
  # Create or Update Batch CommissionRateClusterRate
  data, status_code, headers = api_instance.update_batch_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->update_batch_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **commission_rate_cluster_rate** | [**Array&lt;CommissionRateClusterRate&gt;**](CommissionRateClusterRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rate_cluster_rate

> <CommissionRateClusterRateVBAResponse> update_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key, commission_rate_cluster_rate)

Update CommissionRateClusterRate

Updates a specific CommissionRateClusterRate.

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

api_instance = Vba::CommissionRateClusterRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
comm_rate_key = 56 # Integer | CommissionRate Key
commission_rate_cluster_rate = Vba::CommissionRateClusterRate.new({rate_cluster: 'rate_cluster_example', commission_rate_key: 37}) # CommissionRateClusterRate | 

begin
  # Update CommissionRateClusterRate
  result = api_instance.update_commission_rate_cluster_rate(vbasoftware_database, rate_cluster, comm_rate_key, commission_rate_cluster_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->update_commission_rate_cluster_rate: #{e}"
end
```

#### Using the update_commission_rate_cluster_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterRateVBAResponse>, Integer, Hash)> update_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key, commission_rate_cluster_rate)

```ruby
begin
  # Update CommissionRateClusterRate
  data, status_code, headers = api_instance.update_commission_rate_cluster_rate_with_http_info(vbasoftware_database, rate_cluster, comm_rate_key, commission_rate_cluster_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterRatesApi->update_commission_rate_cluster_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **commission_rate_cluster_rate** | [**CommissionRateClusterRate**](CommissionRateClusterRate.md) |  |  |

### Return type

[**CommissionRateClusterRateVBAResponse**](CommissionRateClusterRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

