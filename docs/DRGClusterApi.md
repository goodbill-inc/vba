# Vba::DRGClusterApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drg_cluster**](DRGClusterApi.md#create_drg_cluster) | **POST** /drg-clusters | Create DRGCluster |
| [**delete_drg_cluster**](DRGClusterApi.md#delete_drg_cluster) | **DELETE** /drg-clusters/{drgCluster} | Delete DRGCluster |
| [**get_drg_cluster**](DRGClusterApi.md#get_drg_cluster) | **GET** /drg-clusters/{drgCluster} | Get DRGCluster |
| [**list_drg_cluster**](DRGClusterApi.md#list_drg_cluster) | **GET** /drg-clusters | List DRGCluster |
| [**update_batch_drg_cluster**](DRGClusterApi.md#update_batch_drg_cluster) | **PUT** /drg-clusters-batch | Update Batch DRGCluster |
| [**update_drg_cluster**](DRGClusterApi.md#update_drg_cluster) | **PUT** /drg-clusters/{drgCluster} | Update DRGCluster |


## create_drg_cluster

> <DRGClusterVBAResponse> create_drg_cluster(vbasoftware_database, drg_cluster)

Create DRGCluster

Creates a new DRGCluster

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = Vba::DRGCluster.new({dr_g_cluster: 'dr_g_cluster_example'}) # DRGCluster | 

begin
  # Create DRGCluster
  result = api_instance.create_drg_cluster(vbasoftware_database, drg_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->create_drg_cluster: #{e}"
end
```

#### Using the create_drg_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterVBAResponse>, Integer, Hash)> create_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)

```ruby
begin
  # Create DRGCluster
  data, status_code, headers = api_instance.create_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->create_drg_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | [**DRGCluster**](DRGCluster.md) |  |  |

### Return type

[**DRGClusterVBAResponse**](DRGClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drg_cluster

> delete_drg_cluster(vbasoftware_database, drg_cluster)

Delete DRGCluster

Deletes an DRGCluster

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster

begin
  # Delete DRGCluster
  api_instance.delete_drg_cluster(vbasoftware_database, drg_cluster)
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->delete_drg_cluster: #{e}"
end
```

#### Using the delete_drg_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)

```ruby
begin
  # Delete DRGCluster
  data, status_code, headers = api_instance.delete_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->delete_drg_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drg_cluster

> <DRGClusterVBAResponse> get_drg_cluster(vbasoftware_database, drg_cluster)

Get DRGCluster

Gets DRGCluster

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster

begin
  # Get DRGCluster
  result = api_instance.get_drg_cluster(vbasoftware_database, drg_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->get_drg_cluster: #{e}"
end
```

#### Using the get_drg_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterVBAResponse>, Integer, Hash)> get_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)

```ruby
begin
  # Get DRGCluster
  data, status_code, headers = api_instance.get_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->get_drg_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |

### Return type

[**DRGClusterVBAResponse**](DRGClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drg_cluster

> <DRGClusterListVBAResponse> list_drg_cluster(vbasoftware_database, opts)

List DRGCluster

List all DRGCluster

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DRGCluster
  result = api_instance.list_drg_cluster(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->list_drg_cluster: #{e}"
end
```

#### Using the list_drg_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterListVBAResponse>, Integer, Hash)> list_drg_cluster_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DRGCluster
  data, status_code, headers = api_instance.list_drg_cluster_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->list_drg_cluster_with_http_info: #{e}"
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

[**DRGClusterListVBAResponse**](DRGClusterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drg_cluster

> <MultiCodeResponseListVBAResponse> update_batch_drg_cluster(vbasoftware_database, drg_cluster)

Update Batch DRGCluster

Updates multiple DRGClusters

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = [Vba::DRGCluster.new({dr_g_cluster: 'dr_g_cluster_example'})] # Array<DRGCluster> | 

begin
  # Update Batch DRGCluster
  result = api_instance.update_batch_drg_cluster(vbasoftware_database, drg_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->update_batch_drg_cluster: #{e}"
end
```

#### Using the update_batch_drg_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)

```ruby
begin
  # Update Batch DRGCluster
  data, status_code, headers = api_instance.update_batch_drg_cluster_with_http_info(vbasoftware_database, drg_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->update_batch_drg_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | [**Array&lt;DRGCluster&gt;**](DRGCluster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drg_cluster

> <DRGClusterVBAResponse> update_drg_cluster(vbasoftware_database, drg_cluster, drg_cluster2)

Update DRGCluster

Updates a specific DRGCluster.

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

api_instance = Vba::DRGClusterApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster2 = Vba::DRGCluster.new({dr_g_cluster: 'dr_g_cluster_example'}) # DRGCluster | 

begin
  # Update DRGCluster
  result = api_instance.update_drg_cluster(vbasoftware_database, drg_cluster, drg_cluster2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->update_drg_cluster: #{e}"
end
```

#### Using the update_drg_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterVBAResponse>, Integer, Hash)> update_drg_cluster_with_http_info(vbasoftware_database, drg_cluster, drg_cluster2)

```ruby
begin
  # Update DRGCluster
  data, status_code, headers = api_instance.update_drg_cluster_with_http_info(vbasoftware_database, drg_cluster, drg_cluster2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterApi->update_drg_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster2** | [**DRGCluster**](DRGCluster.md) |  |  |

### Return type

[**DRGClusterVBAResponse**](DRGClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

