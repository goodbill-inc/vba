# Vba::ProcedureClusterDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#create_procedure_cluster_detail) | **POST** /procedure-clusters/{procedureCluster}/details | Create ProcedureClusterDetail |
| [**delete_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#delete_procedure_cluster_detail) | **DELETE** /procedure-clusters/{procedureCluster}/details/{procedureClusterDetailKey} | Delete ProcedureClusterDetail |
| [**get_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#get_procedure_cluster_detail) | **GET** /procedure-clusters/{procedureCluster}/details/{procedureClusterDetailKey} | Get ProcedureClusterDetail |
| [**list_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#list_procedure_cluster_detail) | **GET** /procedure-clusters/{procedureCluster}/details | List ProcedureClusterDetail |
| [**update_batch_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#update_batch_procedure_cluster_detail) | **PUT** /procedure-clusters/{procedureCluster}/details-batch | Create or Update Batch ProcedureClusterDetail |
| [**update_procedure_cluster_detail**](ProcedureClusterDetailsApi.md#update_procedure_cluster_detail) | **PUT** /procedure-clusters/{procedureCluster}/details/{procedureClusterDetailKey} | Update ProcedureClusterDetail |


## create_procedure_cluster_detail

> <ProcedureClusterDetailVBAResponse> create_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail)

Create ProcedureClusterDetail

Creates a new ProcedureClusterDetail

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster_detail = Vba::ProcedureClusterDetail.new({procedure_cluster_detail_key: 37, procedure_cluster: 'procedure_cluster_example', procedure_code1: false, procedure_code2: false}) # ProcedureClusterDetail | 

begin
  # Create ProcedureClusterDetail
  result = api_instance.create_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->create_procedure_cluster_detail: #{e}"
end
```

#### Using the create_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterDetailVBAResponse>, Integer, Hash)> create_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail)

```ruby
begin
  # Create ProcedureClusterDetail
  data, status_code, headers = api_instance.create_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->create_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster_detail** | [**ProcedureClusterDetail**](ProcedureClusterDetail.md) |  |  |

### Return type

[**ProcedureClusterDetailVBAResponse**](ProcedureClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_cluster_detail

> delete_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)

Delete ProcedureClusterDetail

Deletes an ProcedureClusterDetail

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster_detail_key = 56 # Integer | ProcedureClusterDetail Key

begin
  # Delete ProcedureClusterDetail
  api_instance.delete_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->delete_procedure_cluster_detail: #{e}"
end
```

#### Using the delete_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)

```ruby
begin
  # Delete ProcedureClusterDetail
  data, status_code, headers = api_instance.delete_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->delete_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster_detail_key** | **Integer** | ProcedureClusterDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_cluster_detail

> <ProcedureClusterDetailVBAResponse> get_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)

Get ProcedureClusterDetail

Gets ProcedureClusterDetail

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster_detail_key = 56 # Integer | ProcedureClusterDetail Key

begin
  # Get ProcedureClusterDetail
  result = api_instance.get_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->get_procedure_cluster_detail: #{e}"
end
```

#### Using the get_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterDetailVBAResponse>, Integer, Hash)> get_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)

```ruby
begin
  # Get ProcedureClusterDetail
  data, status_code, headers = api_instance.get_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->get_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster_detail_key** | **Integer** | ProcedureClusterDetail Key |  |

### Return type

[**ProcedureClusterDetailVBAResponse**](ProcedureClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_cluster_detail

> <ProcedureClusterDetailListVBAResponse> list_procedure_cluster_detail(vbasoftware_database, procedure_cluster, opts)

List ProcedureClusterDetail

Lists all ProcedureClusterDetail for the given procedureCluster

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProcedureClusterDetail
  result = api_instance.list_procedure_cluster_detail(vbasoftware_database, procedure_cluster, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->list_procedure_cluster_detail: #{e}"
end
```

#### Using the list_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterDetailListVBAResponse>, Integer, Hash)> list_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, opts)

```ruby
begin
  # List ProcedureClusterDetail
  data, status_code, headers = api_instance.list_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->list_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProcedureClusterDetailListVBAResponse**](ProcedureClusterDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_cluster_detail

> <MultiCodeResponseListVBAResponse> update_batch_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail)

Create or Update Batch ProcedureClusterDetail

Create or Update multiple ProcedureClusterDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster_detail = [Vba::ProcedureClusterDetail.new({procedure_cluster_detail_key: 37, procedure_cluster: 'procedure_cluster_example', procedure_code1: false, procedure_code2: false})] # Array<ProcedureClusterDetail> | 

begin
  # Create or Update Batch ProcedureClusterDetail
  result = api_instance.update_batch_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->update_batch_procedure_cluster_detail: #{e}"
end
```

#### Using the update_batch_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail)

```ruby
begin
  # Create or Update Batch ProcedureClusterDetail
  data, status_code, headers = api_instance.update_batch_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->update_batch_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster_detail** | [**Array&lt;ProcedureClusterDetail&gt;**](ProcedureClusterDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_cluster_detail

> <ProcedureClusterDetailVBAResponse> update_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key, procedure_cluster_detail)

Update ProcedureClusterDetail

Updates a specific ProcedureClusterDetail.

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

api_instance = Vba::ProcedureClusterDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_cluster = 'procedure_cluster_example' # String | Procedure Cluster
procedure_cluster_detail_key = 56 # Integer | ProcedureClusterDetail Key
procedure_cluster_detail = Vba::ProcedureClusterDetail.new({procedure_cluster_detail_key: 37, procedure_cluster: 'procedure_cluster_example', procedure_code1: false, procedure_code2: false}) # ProcedureClusterDetail | 

begin
  # Update ProcedureClusterDetail
  result = api_instance.update_procedure_cluster_detail(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key, procedure_cluster_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->update_procedure_cluster_detail: #{e}"
end
```

#### Using the update_procedure_cluster_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureClusterDetailVBAResponse>, Integer, Hash)> update_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key, procedure_cluster_detail)

```ruby
begin
  # Update ProcedureClusterDetail
  data, status_code, headers = api_instance.update_procedure_cluster_detail_with_http_info(vbasoftware_database, procedure_cluster, procedure_cluster_detail_key, procedure_cluster_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureClusterDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureClusterDetailsApi->update_procedure_cluster_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_cluster** | **String** | Procedure Cluster |  |
| **procedure_cluster_detail_key** | **Integer** | ProcedureClusterDetail Key |  |
| **procedure_cluster_detail** | [**ProcedureClusterDetail**](ProcedureClusterDetail.md) |  |  |

### Return type

[**ProcedureClusterDetailVBAResponse**](ProcedureClusterDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

