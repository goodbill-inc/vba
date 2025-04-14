# Vba::NetworkProcedureClustersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_procedure_cluster**](NetworkProcedureClustersApi.md#create_network_procedure_cluster) | **POST** /networks/{networkID}/procedure-clusters | Create NetworkProcedureCluster |
| [**delete_network_procedure_cluster**](NetworkProcedureClustersApi.md#delete_network_procedure_cluster) | **DELETE** /networks/{networkID}/procedure-clusters/{procedureCluster}/{effectiveDate} | Delete NetworkProcedureCluster |
| [**get_network_procedure_cluster**](NetworkProcedureClustersApi.md#get_network_procedure_cluster) | **GET** /networks/{networkID}/procedure-clusters/{procedureCluster}/{effectiveDate} | Get NetworkProcedureCluster |
| [**list_network_procedure_cluster**](NetworkProcedureClustersApi.md#list_network_procedure_cluster) | **GET** /networks/{networkID}/procedure-clusters | List NetworkProcedureCluster |
| [**update_batch_network_procedure_cluster**](NetworkProcedureClustersApi.md#update_batch_network_procedure_cluster) | **PUT** /networks/{networkID}/procedure-clusters-batch | Create or Update Batch NetworkProcedureCluster |
| [**update_network_procedure_cluster**](NetworkProcedureClustersApi.md#update_network_procedure_cluster) | **PUT** /networks/{networkID}/procedure-clusters/{procedureCluster}/{effectiveDate} | Update NetworkProcedureCluster |


## create_network_procedure_cluster

> <NetworkProcedureClusterVBAResponse> create_network_procedure_cluster(vbasoftware_database, network_id, network_procedure_cluster)

Create NetworkProcedureCluster

Creates a new NetworkProcedureCluster

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_procedure_cluster = Vba::NetworkProcedureCluster.new({network_id: 'network_id_example', procedure_cluster: 'procedure_cluster_example', effective_date: Time.now, context4_fg: false}) # NetworkProcedureCluster | 

begin
  # Create NetworkProcedureCluster
  result = api_instance.create_network_procedure_cluster(vbasoftware_database, network_id, network_procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->create_network_procedure_cluster: #{e}"
end
```

#### Using the create_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProcedureClusterVBAResponse>, Integer, Hash)> create_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, network_procedure_cluster)

```ruby
begin
  # Create NetworkProcedureCluster
  data, status_code, headers = api_instance.create_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, network_procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->create_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_procedure_cluster** | [**NetworkProcedureCluster**](NetworkProcedureCluster.md) |  |  |

### Return type

[**NetworkProcedureClusterVBAResponse**](NetworkProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_procedure_cluster

> delete_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date)

Delete NetworkProcedureCluster

Deletes an NetworkProcedureCluster

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete NetworkProcedureCluster
  api_instance.delete_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->delete_network_procedure_cluster: #{e}"
end
```

#### Using the delete_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date)

```ruby
begin
  # Delete NetworkProcedureCluster
  data, status_code, headers = api_instance.delete_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->delete_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_procedure_cluster

> <NetworkProcedureClusterVBAResponse> get_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date)

Get NetworkProcedureCluster

Gets NetworkProcedureCluster

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get NetworkProcedureCluster
  result = api_instance.get_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->get_network_procedure_cluster: #{e}"
end
```

#### Using the get_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProcedureClusterVBAResponse>, Integer, Hash)> get_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date)

```ruby
begin
  # Get NetworkProcedureCluster
  data, status_code, headers = api_instance.get_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->get_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**NetworkProcedureClusterVBAResponse**](NetworkProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_procedure_cluster

> <NetworkProcedureClusterListVBAResponse> list_network_procedure_cluster(vbasoftware_database, network_id, opts)

List NetworkProcedureCluster

Lists all NetworkProcedureCluster for the given networkID

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NetworkProcedureCluster
  result = api_instance.list_network_procedure_cluster(vbasoftware_database, network_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->list_network_procedure_cluster: #{e}"
end
```

#### Using the list_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProcedureClusterListVBAResponse>, Integer, Hash)> list_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, opts)

```ruby
begin
  # List NetworkProcedureCluster
  data, status_code, headers = api_instance.list_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProcedureClusterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->list_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**NetworkProcedureClusterListVBAResponse**](NetworkProcedureClusterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_procedure_cluster

> <MultiCodeResponseListVBAResponse> update_batch_network_procedure_cluster(vbasoftware_database, network_id, network_procedure_cluster)

Create or Update Batch NetworkProcedureCluster

Create or Update multiple NetworkProcedureCluster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_procedure_cluster = [Vba::NetworkProcedureCluster.new({network_id: 'network_id_example', procedure_cluster: 'procedure_cluster_example', effective_date: Time.now, context4_fg: false})] # Array<NetworkProcedureCluster> | 

begin
  # Create or Update Batch NetworkProcedureCluster
  result = api_instance.update_batch_network_procedure_cluster(vbasoftware_database, network_id, network_procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->update_batch_network_procedure_cluster: #{e}"
end
```

#### Using the update_batch_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, network_procedure_cluster)

```ruby
begin
  # Create or Update Batch NetworkProcedureCluster
  data, status_code, headers = api_instance.update_batch_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, network_procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->update_batch_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_procedure_cluster** | [**Array&lt;NetworkProcedureCluster&gt;**](NetworkProcedureCluster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_procedure_cluster

> <NetworkProcedureClusterVBAResponse> update_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date, network_procedure_cluster)

Update NetworkProcedureCluster

Updates a specific NetworkProcedureCluster.

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

api_instance = Vba::NetworkProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
network_procedure_cluster = Vba::NetworkProcedureCluster.new({network_id: 'network_id_example', procedure_cluster: 'procedure_cluster_example', effective_date: Time.now, context4_fg: false}) # NetworkProcedureCluster | 

begin
  # Update NetworkProcedureCluster
  result = api_instance.update_network_procedure_cluster(vbasoftware_database, network_id, procedure_cluster, effective_date, network_procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->update_network_procedure_cluster: #{e}"
end
```

#### Using the update_network_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProcedureClusterVBAResponse>, Integer, Hash)> update_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date, network_procedure_cluster)

```ruby
begin
  # Update NetworkProcedureCluster
  data, status_code, headers = api_instance.update_network_procedure_cluster_with_http_info(vbasoftware_database, network_id, procedure_cluster, effective_date, network_procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProcedureClustersApi->update_network_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **effective_date** | **Time** | Effective Date |  |
| **network_procedure_cluster** | [**NetworkProcedureCluster**](NetworkProcedureCluster.md) |  |  |

### Return type

[**NetworkProcedureClusterVBAResponse**](NetworkProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

