# Vba::ProcedureClustersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_cluster**](ProcedureClustersApi.md#create_procedure_cluster) | **POST** /procedure-clusters | Create ProcedureCluster |
| [**delete_procedure_cluster**](ProcedureClustersApi.md#delete_procedure_cluster) | **DELETE** /procedure-clusters/{procedureCluster} | Delete ProcedureCluster |
| [**get_procedure_cluster**](ProcedureClustersApi.md#get_procedure_cluster) | **GET** /procedure-clusters/{procedureCluster} | Get ProcedureCluster |
| [**list_procedure_cluster**](ProcedureClustersApi.md#list_procedure_cluster) | **GET** /procedure-clusters | List ProcedureCluster |
| [**update_batch_procedure_cluster**](ProcedureClustersApi.md#update_batch_procedure_cluster) | **PUT** /procedure-clusters-batch | Create or Update Batch ProcedureCluster |
| [**update_procedure_cluster**](ProcedureClustersApi.md#update_procedure_cluster) | **PUT** /procedure-clusters/{procedureCluster} | Update ProcedureCluster |


## create_procedure_cluster

> <ProcedureClusterVBAResponse> create_procedure_cluster(vbasoftware_database, procedure_cluster)

Create ProcedureCluster

Creates a new ProcedureCluster

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = Vba::ProcedureCluster.new({procedure_cluster: 'procedure_cluster_example'}) # ProcedureCluster | 

begin
  # Create ProcedureCluster
  result = api_instance.create_procedure_cluster(vbasoftware_database, procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->create_procedure_cluster: #{e}"
end
```

#### Using the create_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterVBAResponse>, Integer, Hash)> create_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)

```ruby
begin
  # Create ProcedureCluster
  data, status_code, headers = api_instance.create_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->create_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | [**ProcedureCluster**](ProcedureCluster.md) |  |  |

### Return type

[**ProcedureClusterVBAResponse**](ProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_cluster

> delete_procedure_cluster(vbasoftware_database, procedure_cluster)

Delete ProcedureCluster

Deletes an ProcedureCluster

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster

begin
  # Delete ProcedureCluster
  api_instance.delete_procedure_cluster(vbasoftware_database, procedure_cluster)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->delete_procedure_cluster: #{e}"
end
```

#### Using the delete_procedure_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)

```ruby
begin
  # Delete ProcedureCluster
  data, status_code, headers = api_instance.delete_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->delete_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_cluster

> <ProcedureClusterVBAResponse> get_procedure_cluster(vbasoftware_database, procedure_cluster)

Get ProcedureCluster

Gets ProcedureCluster

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster

begin
  # Get ProcedureCluster
  result = api_instance.get_procedure_cluster(vbasoftware_database, procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->get_procedure_cluster: #{e}"
end
```

#### Using the get_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterVBAResponse>, Integer, Hash)> get_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)

```ruby
begin
  # Get ProcedureCluster
  data, status_code, headers = api_instance.get_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->get_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |

### Return type

[**ProcedureClusterVBAResponse**](ProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_cluster

> <ProcedureClusterListVBAResponse> list_procedure_cluster(vbasoftware_database, opts)

List ProcedureCluster

Lists all ProcedureCluster

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProcedureCluster
  result = api_instance.list_procedure_cluster(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->list_procedure_cluster: #{e}"
end
```

#### Using the list_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterListVBAResponse>, Integer, Hash)> list_procedure_cluster_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProcedureCluster
  data, status_code, headers = api_instance.list_procedure_cluster_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->list_procedure_cluster_with_http_info: #{e}"
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

[**ProcedureClusterListVBAResponse**](ProcedureClusterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_cluster

> <MultiCodeResponseListVBAResponse> update_batch_procedure_cluster(vbasoftware_database, procedure_cluster)

Create or Update Batch ProcedureCluster

Create or Update multiple ProcedureCluster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = [Vba::ProcedureCluster.new({procedure_cluster: 'procedure_cluster_example'})] # Array<ProcedureCluster> | 

begin
  # Create or Update Batch ProcedureCluster
  result = api_instance.update_batch_procedure_cluster(vbasoftware_database, procedure_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->update_batch_procedure_cluster: #{e}"
end
```

#### Using the update_batch_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)

```ruby
begin
  # Create or Update Batch ProcedureCluster
  data, status_code, headers = api_instance.update_batch_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->update_batch_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | [**Array&lt;ProcedureCluster&gt;**](ProcedureCluster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_cluster

> <ProcedureClusterVBAResponse> update_procedure_cluster(vbasoftware_database, procedure_cluster, procedure_cluster2)

Update ProcedureCluster

Updates a specific ProcedureCluster.

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

api_instance = Vba::ProcedureClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster2 = Vba::ProcedureCluster.new({procedure_cluster: 'procedure_cluster_example'}) # ProcedureCluster | 

begin
  # Update ProcedureCluster
  result = api_instance.update_procedure_cluster(vbasoftware_database, procedure_cluster, procedure_cluster2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->update_procedure_cluster: #{e}"
end
```

#### Using the update_procedure_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterVBAResponse>, Integer, Hash)> update_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster2)

```ruby
begin
  # Update ProcedureCluster
  data, status_code, headers = api_instance.update_procedure_cluster_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClustersApi->update_procedure_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster2** | [**ProcedureCluster**](ProcedureCluster.md) |  |  |

### Return type

[**ProcedureClusterVBAResponse**](ProcedureClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

