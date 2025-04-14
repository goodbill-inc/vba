# Vba::CommissionRateClustersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rate_cluster**](CommissionRateClustersApi.md#create_commission_rate_cluster) | **POST** /commission-rate-clusters | Create CommissionRateCluster |
| [**delete_commission_rate_cluster**](CommissionRateClustersApi.md#delete_commission_rate_cluster) | **DELETE** /commission-rate-clusters/{rateCluster} | Delete CommissionRateCluster |
| [**get_commission_rate_cluster**](CommissionRateClustersApi.md#get_commission_rate_cluster) | **GET** /commission-rate-clusters/{rateCluster} | Get CommissionRateCluster |
| [**list_commission_rate_cluster**](CommissionRateClustersApi.md#list_commission_rate_cluster) | **GET** /commission-rate-clusters | List CommissionRateCluster |
| [**update_batch_commission_rate_cluster**](CommissionRateClustersApi.md#update_batch_commission_rate_cluster) | **PUT** /commission-rate-clusters-batch | Create or Update Batch CommissionRateCluster |
| [**update_commission_rate_cluster**](CommissionRateClustersApi.md#update_commission_rate_cluster) | **PUT** /commission-rate-clusters/{rateCluster} | Update CommissionRateCluster |


## create_commission_rate_cluster

> <CommissionRateClusterVBAResponse> create_commission_rate_cluster(vbasoftware_database, commission_rate_cluster)

Create CommissionRateCluster

Creates a new CommissionRateCluster

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster = Vba::CommissionRateCluster.new({rate_cluster: 'rate_cluster_example'}) # CommissionRateCluster | 

begin
  # Create CommissionRateCluster
  result = api_instance.create_commission_rate_cluster(vbasoftware_database, commission_rate_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->create_commission_rate_cluster: #{e}"
end
```

#### Using the create_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterVBAResponse>, Integer, Hash)> create_commission_rate_cluster_with_http_info(vbasoftware_database, commission_rate_cluster)

```ruby
begin
  # Create CommissionRateCluster
  data, status_code, headers = api_instance.create_commission_rate_cluster_with_http_info(vbasoftware_database, commission_rate_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->create_commission_rate_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster** | [**CommissionRateCluster**](CommissionRateCluster.md) |  |  |

### Return type

[**CommissionRateClusterVBAResponse**](CommissionRateClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rate_cluster

> delete_commission_rate_cluster(vbasoftware_database, rate_cluster)

Delete CommissionRateCluster

Deletes an CommissionRateCluster

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster

begin
  # Delete CommissionRateCluster
  api_instance.delete_commission_rate_cluster(vbasoftware_database, rate_cluster)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->delete_commission_rate_cluster: #{e}"
end
```

#### Using the delete_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster)

```ruby
begin
  # Delete CommissionRateCluster
  data, status_code, headers = api_instance.delete_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->delete_commission_rate_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rate_cluster

> <CommissionRateClusterVBAResponse> get_commission_rate_cluster(vbasoftware_database, rate_cluster)

Get CommissionRateCluster

Gets CommissionRateCluster

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster

begin
  # Get CommissionRateCluster
  result = api_instance.get_commission_rate_cluster(vbasoftware_database, rate_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->get_commission_rate_cluster: #{e}"
end
```

#### Using the get_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterVBAResponse>, Integer, Hash)> get_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster)

```ruby
begin
  # Get CommissionRateCluster
  data, status_code, headers = api_instance.get_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->get_commission_rate_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |

### Return type

[**CommissionRateClusterVBAResponse**](CommissionRateClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate_cluster

> <CommissionRateClusterListVBAResponse> list_commission_rate_cluster(vbasoftware_database, opts)

List CommissionRateCluster

Lists all CommissionRateCluster

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRateCluster
  result = api_instance.list_commission_rate_cluster(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->list_commission_rate_cluster: #{e}"
end
```

#### Using the list_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterListVBAResponse>, Integer, Hash)> list_commission_rate_cluster_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionRateCluster
  data, status_code, headers = api_instance.list_commission_rate_cluster_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->list_commission_rate_cluster_with_http_info: #{e}"
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

[**CommissionRateClusterListVBAResponse**](CommissionRateClusterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rate_cluster

> <MultiCodeResponseListVBAResponse> update_batch_commission_rate_cluster(vbasoftware_database, commission_rate_cluster)

Create or Update Batch CommissionRateCluster

Create or Update multiple CommissionRateCluster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster = [Vba::CommissionRateCluster.new({rate_cluster: 'rate_cluster_example'})] # Array<CommissionRateCluster> | 

begin
  # Create or Update Batch CommissionRateCluster
  result = api_instance.update_batch_commission_rate_cluster(vbasoftware_database, commission_rate_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->update_batch_commission_rate_cluster: #{e}"
end
```

#### Using the update_batch_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rate_cluster_with_http_info(vbasoftware_database, commission_rate_cluster)

```ruby
begin
  # Create or Update Batch CommissionRateCluster
  data, status_code, headers = api_instance.update_batch_commission_rate_cluster_with_http_info(vbasoftware_database, commission_rate_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->update_batch_commission_rate_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster** | [**Array&lt;CommissionRateCluster&gt;**](CommissionRateCluster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rate_cluster

> <CommissionRateClusterVBAResponse> update_commission_rate_cluster(vbasoftware_database, rate_cluster, commission_rate_cluster)

Update CommissionRateCluster

Updates a specific CommissionRateCluster.

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

api_instance = Vba::CommissionRateClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_cluster = 'rate_cluster_example' # String | Rate Cluster
commission_rate_cluster = Vba::CommissionRateCluster.new({rate_cluster: 'rate_cluster_example'}) # CommissionRateCluster | 

begin
  # Update CommissionRateCluster
  result = api_instance.update_commission_rate_cluster(vbasoftware_database, rate_cluster, commission_rate_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->update_commission_rate_cluster: #{e}"
end
```

#### Using the update_commission_rate_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterVBAResponse>, Integer, Hash)> update_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster)

```ruby
begin
  # Update CommissionRateCluster
  data, status_code, headers = api_instance.update_commission_rate_cluster_with_http_info(vbasoftware_database, rate_cluster, commission_rate_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClustersApi->update_commission_rate_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_cluster** | **String** | Rate Cluster |  |
| **commission_rate_cluster** | [**CommissionRateCluster**](CommissionRateCluster.md) |  |  |

### Return type

[**CommissionRateClusterVBAResponse**](CommissionRateClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

