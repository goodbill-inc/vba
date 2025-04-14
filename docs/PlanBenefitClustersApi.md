# Vba::PlanBenefitClustersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefit_cluster**](PlanBenefitClustersApi.md#create_plan_benefit_cluster) | **POST** /plan-benefit-clusters | Create PlanBenefitCluster |
| [**delete_plan_benefit_cluster**](PlanBenefitClustersApi.md#delete_plan_benefit_cluster) | **DELETE** /plan-benefit-clusters/{planBenefitClusterKey} | Delete PlanBenefitCluster |
| [**get_plan_benefit_cluster**](PlanBenefitClustersApi.md#get_plan_benefit_cluster) | **GET** /plan-benefit-clusters/{planBenefitClusterKey} | Get PlanBenefitCluster |
| [**list_plan_benefit_cluster**](PlanBenefitClustersApi.md#list_plan_benefit_cluster) | **GET** /plan-benefit-clusters | List PlanBenefitCluster |
| [**update_batch_plan_benefit_cluster**](PlanBenefitClustersApi.md#update_batch_plan_benefit_cluster) | **PUT** /plan-benefit-clusters-batch | Create or Update Batch PlanBenefitCluster |
| [**update_plan_benefit_cluster**](PlanBenefitClustersApi.md#update_plan_benefit_cluster) | **PUT** /plan-benefit-clusters/{planBenefitClusterKey} | Update PlanBenefitCluster |


## create_plan_benefit_cluster

> <PlanBenefitClusterVBAResponse> create_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster)

Create PlanBenefitCluster

Creates a new PlanBenefitCluster

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_benefit_cluster = Vba::PlanBenefitCluster.new({plan_benefit_cluster_key: 37, benefit_code: 'benefit_code_example', plan_id: 'plan_id_example'}) # PlanBenefitCluster | 

begin
  # Create PlanBenefitCluster
  result = api_instance.create_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->create_plan_benefit_cluster: #{e}"
end
```

#### Using the create_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitClusterVBAResponse>, Integer, Hash)> create_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster)

```ruby
begin
  # Create PlanBenefitCluster
  data, status_code, headers = api_instance.create_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->create_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_benefit_cluster** | [**PlanBenefitCluster**](PlanBenefitCluster.md) |  |  |

### Return type

[**PlanBenefitClusterVBAResponse**](PlanBenefitClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefit_cluster

> delete_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key)

Delete PlanBenefitCluster

Deletes an PlanBenefitCluster

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_benefit_cluster_key = 56 # Integer | PlanBenefitCluster Key

begin
  # Delete PlanBenefitCluster
  api_instance.delete_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->delete_plan_benefit_cluster: #{e}"
end
```

#### Using the delete_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key)

```ruby
begin
  # Delete PlanBenefitCluster
  data, status_code, headers = api_instance.delete_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->delete_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_benefit_cluster_key** | **Integer** | PlanBenefitCluster Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefit_cluster

> <PlanBenefitClusterVBAResponse> get_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key)

Get PlanBenefitCluster

Gets PlanBenefitCluster

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_benefit_cluster_key = 56 # Integer | PlanBenefitCluster Key

begin
  # Get PlanBenefitCluster
  result = api_instance.get_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->get_plan_benefit_cluster: #{e}"
end
```

#### Using the get_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitClusterVBAResponse>, Integer, Hash)> get_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key)

```ruby
begin
  # Get PlanBenefitCluster
  data, status_code, headers = api_instance.get_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->get_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_benefit_cluster_key** | **Integer** | PlanBenefitCluster Key |  |

### Return type

[**PlanBenefitClusterVBAResponse**](PlanBenefitClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_cluster

> <PlanBenefitClusterListVBAResponse> list_plan_benefit_cluster(vbasoftware_database, opts)

List PlanBenefitCluster

Lists all PlanBenefitCluster

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  plan_id: 'plan_id_example', # String | Plan ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PlanBenefitCluster
  result = api_instance.list_plan_benefit_cluster(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->list_plan_benefit_cluster: #{e}"
end
```

#### Using the list_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitClusterListVBAResponse>, Integer, Hash)> list_plan_benefit_cluster_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PlanBenefitCluster
  data, status_code, headers = api_instance.list_plan_benefit_cluster_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitClusterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->list_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PlanBenefitClusterListVBAResponse**](PlanBenefitClusterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefit_cluster

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster)

Create or Update Batch PlanBenefitCluster

Create or Update multiple PlanBenefitCluster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_benefit_cluster = [Vba::PlanBenefitCluster.new({plan_benefit_cluster_key: 37, benefit_code: 'benefit_code_example', plan_id: 'plan_id_example'})] # Array<PlanBenefitCluster> | 

begin
  # Create or Update Batch PlanBenefitCluster
  result = api_instance.update_batch_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->update_batch_plan_benefit_cluster: #{e}"
end
```

#### Using the update_batch_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster)

```ruby
begin
  # Create or Update Batch PlanBenefitCluster
  data, status_code, headers = api_instance.update_batch_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->update_batch_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_benefit_cluster** | [**Array&lt;PlanBenefitCluster&gt;**](PlanBenefitCluster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefit_cluster

> <PlanBenefitClusterVBAResponse> update_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key, plan_benefit_cluster)

Update PlanBenefitCluster

Updates a specific PlanBenefitCluster.

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

api_instance = Vba::PlanBenefitClustersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_benefit_cluster_key = 56 # Integer | PlanBenefitCluster Key
plan_benefit_cluster = Vba::PlanBenefitCluster.new({plan_benefit_cluster_key: 37, benefit_code: 'benefit_code_example', plan_id: 'plan_id_example'}) # PlanBenefitCluster | 

begin
  # Update PlanBenefitCluster
  result = api_instance.update_plan_benefit_cluster(vbasoftware_database, plan_benefit_cluster_key, plan_benefit_cluster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->update_plan_benefit_cluster: #{e}"
end
```

#### Using the update_plan_benefit_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitClusterVBAResponse>, Integer, Hash)> update_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key, plan_benefit_cluster)

```ruby
begin
  # Update PlanBenefitCluster
  data, status_code, headers = api_instance.update_plan_benefit_cluster_with_http_info(vbasoftware_database, plan_benefit_cluster_key, plan_benefit_cluster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitClusterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitClustersApi->update_plan_benefit_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_benefit_cluster_key** | **Integer** | PlanBenefitCluster Key |  |
| **plan_benefit_cluster** | [**PlanBenefitCluster**](PlanBenefitCluster.md) |  |  |

### Return type

[**PlanBenefitClusterVBAResponse**](PlanBenefitClusterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

