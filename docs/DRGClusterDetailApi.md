# Vba::DRGClusterDetailApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drg_cluster_detail**](DRGClusterDetailApi.md#create_drg_cluster_detail) | **POST** /drg-clusters/{drgCluster}/details | Create DRGClusterDetail |
| [**delete_drg_cluster_detail**](DRGClusterDetailApi.md#delete_drg_cluster_detail) | **DELETE** /drg-clusters/{drgCluster}/details/{drgClusterDetailKey} | Delete DRGClusterDetail |
| [**get_drg_cluster_detail**](DRGClusterDetailApi.md#get_drg_cluster_detail) | **GET** /drg-clusters/{drgCluster}/details/{drgClusterDetailKey} | Get DRGClusterDetail |
| [**list_drg_cluster_detail**](DRGClusterDetailApi.md#list_drg_cluster_detail) | **GET** /drg-clusters/{drgCluster}/details | List DRGClusterDetail |
| [**update_batch_drg_cluster_detail**](DRGClusterDetailApi.md#update_batch_drg_cluster_detail) | **PUT** /drg-clusters/{drgCluster}/details-batch | Create or Update Batch DRGClusterDetail |
| [**update_drg_cluster_detail**](DRGClusterDetailApi.md#update_drg_cluster_detail) | **PUT** /drg-clusters/{drgCluster}/details/{drgClusterDetailKey} | Update DRGClusterDetail |


## create_drg_cluster_detail

> <DRGClusterDetailVBAResponse> create_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail)

Create DRGClusterDetail

Creates a new DRGClusterDetail

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster_detail = Vba::DRGClusterDetail.new({drg_cluster_detail_key: 37, dr_g_cluster: 'dr_g_cluster_example'}) # DRGClusterDetail | 

begin
  # Create DRGClusterDetail
  result = api_instance.create_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->create_drg_cluster_detail: #{e}"
end
```

#### Using the create_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterDetailVBAResponse>, Integer, Hash)> create_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail)

```ruby
begin
  # Create DRGClusterDetail
  data, status_code, headers = api_instance.create_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->create_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster_detail** | [**DRGClusterDetail**](DRGClusterDetail.md) |  |  |

### Return type

[**DRGClusterDetailVBAResponse**](DRGClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drg_cluster_detail

> delete_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key)

Delete DRGClusterDetail

Deletes an DRGClusterDetail

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster_detail_key = 56 # Integer | DRGClusterDetail Key

begin
  # Delete DRGClusterDetail
  api_instance.delete_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->delete_drg_cluster_detail: #{e}"
end
```

#### Using the delete_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key)

```ruby
begin
  # Delete DRGClusterDetail
  data, status_code, headers = api_instance.delete_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->delete_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster_detail_key** | **Integer** | DRGClusterDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drg_cluster_detail

> <DRGClusterDetailVBAResponse> get_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key)

Get DRGClusterDetail

Gets DRGClusterDetail

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster_detail_key = 56 # Integer | DRGClusterDetail Key

begin
  # Get DRGClusterDetail
  result = api_instance.get_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->get_drg_cluster_detail: #{e}"
end
```

#### Using the get_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterDetailVBAResponse>, Integer, Hash)> get_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key)

```ruby
begin
  # Get DRGClusterDetail
  data, status_code, headers = api_instance.get_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->get_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster_detail_key** | **Integer** | DRGClusterDetail Key |  |

### Return type

[**DRGClusterDetailVBAResponse**](DRGClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drg_cluster_detail

> <DRGClusterDetailListVBAResponse> list_drg_cluster_detail(vbasoftware_database, drg_cluster, opts)

List DRGClusterDetail

Lists all DRGClusterDetail for the given drgCluster

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DRGClusterDetail
  result = api_instance.list_drg_cluster_detail(vbasoftware_database, drg_cluster, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->list_drg_cluster_detail: #{e}"
end
```

#### Using the list_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterDetailListVBAResponse>, Integer, Hash)> list_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, opts)

```ruby
begin
  # List DRGClusterDetail
  data, status_code, headers = api_instance.list_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->list_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**DRGClusterDetailListVBAResponse**](DRGClusterDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drg_cluster_detail

> <MultiCodeResponseListVBAResponse> update_batch_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail)

Create or Update Batch DRGClusterDetail

Create or Update multiple DRGClusterDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster_detail = [Vba::DRGClusterDetail.new({drg_cluster_detail_key: 37, dr_g_cluster: 'dr_g_cluster_example'})] # Array<DRGClusterDetail> | 

begin
  # Create or Update Batch DRGClusterDetail
  result = api_instance.update_batch_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->update_batch_drg_cluster_detail: #{e}"
end
```

#### Using the update_batch_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail)

```ruby
begin
  # Create or Update Batch DRGClusterDetail
  data, status_code, headers = api_instance.update_batch_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->update_batch_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster_detail** | [**Array&lt;DRGClusterDetail&gt;**](DRGClusterDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drg_cluster_detail

> <DRGClusterDetailVBAResponse> update_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key, drg_cluster_detail)

Update DRGClusterDetail

Updates a specific DRGClusterDetail.

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

api_instance = Vba::DRGClusterDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_cluster = 'drg_cluster_example' # String | DRG Cluster
drg_cluster_detail_key = 56 # Integer | DRGClusterDetail Key
drg_cluster_detail = Vba::DRGClusterDetail.new({drg_cluster_detail_key: 37, dr_g_cluster: 'dr_g_cluster_example'}) # DRGClusterDetail | 

begin
  # Update DRGClusterDetail
  result = api_instance.update_drg_cluster_detail(vbasoftware_database, drg_cluster, drg_cluster_detail_key, drg_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->update_drg_cluster_detail: #{e}"
end
```

#### Using the update_drg_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGClusterDetailVBAResponse>, Integer, Hash)> update_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key, drg_cluster_detail)

```ruby
begin
  # Update DRGClusterDetail
  data, status_code, headers = api_instance.update_drg_cluster_detail_with_http_info(vbasoftware_database, drg_cluster, drg_cluster_detail_key, drg_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGClusterDetailApi->update_drg_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_cluster** | **String** | DRG Cluster |  |
| **drg_cluster_detail_key** | **Integer** | DRGClusterDetail Key |  |
| **drg_cluster_detail** | [**DRGClusterDetail**](DRGClusterDetail.md) |  |  |

### Return type

[**DRGClusterDetailVBAResponse**](DRGClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

