# Vba::CommissionRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_rate**](CommissionRatesApi.md#copy_rate) | **POST** /commission-rate-copy/{commRateKey} | Copies CommissionRate from Rate |
| [**create_commission_rate**](CommissionRatesApi.md#create_commission_rate) | **POST** /commission-rates | Create CommissionRate |
| [**create_commission_rate_from_cluster**](CommissionRatesApi.md#create_commission_rate_from_cluster) | **POST** /commission-rates-cluster/{commRateCluster}/commission-rates-group/{groupId} | Create CommissionRate from Rate Cluster |
| [**create_commission_rate_from_template**](CommissionRatesApi.md#create_commission_rate_from_template) | **POST** /commission-rates/{commRateKey}/commission-rates-group/{groupId} | Create CommissionRate from Template |
| [**delete_commission_rate**](CommissionRatesApi.md#delete_commission_rate) | **DELETE** /commission-rates/{commRateKey} | Delete CommissionRate |
| [**get_commission_rate**](CommissionRatesApi.md#get_commission_rate) | **GET** /commission-rates/{commRateKey} | Get CommissionRate |
| [**list_commission_rate**](CommissionRatesApi.md#list_commission_rate) | **GET** /commission-rates | List CommissionRate |
| [**list_commission_rate_nested**](CommissionRatesApi.md#list_commission_rate_nested) | **GET** /commission-rates-nested | List Commission Rates nested by Division/Plan |
| [**update_batch_commission_rate**](CommissionRatesApi.md#update_batch_commission_rate) | **PUT** /commission-rates-batch | Create or Update Batch CommissionRate |
| [**update_commission_rate**](CommissionRatesApi.md#update_commission_rate) | **PUT** /commission-rates/{commRateKey} | Update CommissionRate |


## copy_rate

> <CommissionRateVBAResponse> copy_rate(vbasoftware_database, comm_rate_key)

Copies CommissionRate from Rate

Creates a new CommissionRate from a given CommissionRate.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key

begin
  # Copies CommissionRate from Rate
  result = api_instance.copy_rate(vbasoftware_database, comm_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->copy_rate: #{e}"
end
```

#### Using the copy_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> copy_rate_with_http_info(vbasoftware_database, comm_rate_key)

```ruby
begin
  # Copies CommissionRate from Rate
  data, status_code, headers = api_instance.copy_rate_with_http_info(vbasoftware_database, comm_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->copy_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## create_commission_rate

> <CommissionRateVBAResponse> create_commission_rate(vbasoftware_database, commission_rate)

Create CommissionRate

Creates a new CommissionRate

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate = Vba::CommissionRate.new({commission_rate_key: 37, pre_payment_rate: false, scale_exclude_header_adjustments: false, use_initial_premium: false}) # CommissionRate | 

begin
  # Create CommissionRate
  result = api_instance.create_commission_rate(vbasoftware_database, commission_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate: #{e}"
end
```

#### Using the create_commission_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> create_commission_rate_with_http_info(vbasoftware_database, commission_rate)

```ruby
begin
  # Create CommissionRate
  data, status_code, headers = api_instance.create_commission_rate_with_http_info(vbasoftware_database, commission_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate** | [**CommissionRate**](CommissionRate.md) |  |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_commission_rate_from_cluster

> <CommissionRateVBAResponse> create_commission_rate_from_cluster(vbasoftware_database, comm_rate_cluster, group_id)

Create CommissionRate from Rate Cluster

Creates a new CommissionRate records from a cluster of templated rates.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_cluster = 'comm_rate_cluster_example' # String | Rate Cluster
group_id = 'group_id_example' # String | Group ID

begin
  # Create CommissionRate from Rate Cluster
  result = api_instance.create_commission_rate_from_cluster(vbasoftware_database, comm_rate_cluster, group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate_from_cluster: #{e}"
end
```

#### Using the create_commission_rate_from_cluster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> create_commission_rate_from_cluster_with_http_info(vbasoftware_database, comm_rate_cluster, group_id)

```ruby
begin
  # Create CommissionRate from Rate Cluster
  data, status_code, headers = api_instance.create_commission_rate_from_cluster_with_http_info(vbasoftware_database, comm_rate_cluster, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate_from_cluster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_cluster** | **String** | Rate Cluster |  |
| **group_id** | **String** | Group ID |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## create_commission_rate_from_template

> <CommissionRateVBAResponse> create_commission_rate_from_template(vbasoftware_database, comm_rate_key, group_id)

Create CommissionRate from Template

Creates a new CommissionRate from a template CommissionRate.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
group_id = 'group_id_example' # String | Group ID

begin
  # Create CommissionRate from Template
  result = api_instance.create_commission_rate_from_template(vbasoftware_database, comm_rate_key, group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate_from_template: #{e}"
end
```

#### Using the create_commission_rate_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> create_commission_rate_from_template_with_http_info(vbasoftware_database, comm_rate_key, group_id)

```ruby
begin
  # Create CommissionRate from Template
  data, status_code, headers = api_instance.create_commission_rate_from_template_with_http_info(vbasoftware_database, comm_rate_key, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->create_commission_rate_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **group_id** | **String** | Group ID |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_commission_rate

> delete_commission_rate(vbasoftware_database, comm_rate_key)

Delete CommissionRate

Deletes an CommissionRate

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key

begin
  # Delete CommissionRate
  api_instance.delete_commission_rate(vbasoftware_database, comm_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->delete_commission_rate: #{e}"
end
```

#### Using the delete_commission_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rate_with_http_info(vbasoftware_database, comm_rate_key)

```ruby
begin
  # Delete CommissionRate
  data, status_code, headers = api_instance.delete_commission_rate_with_http_info(vbasoftware_database, comm_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->delete_commission_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rate

> <CommissionRateVBAResponse> get_commission_rate(vbasoftware_database, comm_rate_key)

Get CommissionRate

Gets CommissionRate

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key

begin
  # Get CommissionRate
  result = api_instance.get_commission_rate(vbasoftware_database, comm_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->get_commission_rate: #{e}"
end
```

#### Using the get_commission_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> get_commission_rate_with_http_info(vbasoftware_database, comm_rate_key)

```ruby
begin
  # Get CommissionRate
  data, status_code, headers = api_instance.get_commission_rate_with_http_info(vbasoftware_database, comm_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->get_commission_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate

> <CommissionRateListVBAResponse> list_commission_rate(vbasoftware_database, opts)

List CommissionRate

Lists all CommissionRate

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRate
  result = api_instance.list_commission_rate(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->list_commission_rate: #{e}"
end
```

#### Using the list_commission_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateListVBAResponse>, Integer, Hash)> list_commission_rate_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionRate
  data, status_code, headers = api_instance.list_commission_rate_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->list_commission_rate_with_http_info: #{e}"
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

[**CommissionRateListVBAResponse**](CommissionRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate_nested

> <CommissionRateNestedListVBAResponse> list_commission_rate_nested(vbasoftware_database, opts)

List Commission Rates nested by Division/Plan

Lists all Commission Rates for the given groupID and have it nested by Division, then by Plan.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example' # String | Group ID
}

begin
  # List Commission Rates nested by Division/Plan
  result = api_instance.list_commission_rate_nested(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->list_commission_rate_nested: #{e}"
end
```

#### Using the list_commission_rate_nested_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateNestedListVBAResponse>, Integer, Hash)> list_commission_rate_nested_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Commission Rates nested by Division/Plan
  data, status_code, headers = api_instance.list_commission_rate_nested_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateNestedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->list_commission_rate_nested_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |

### Return type

[**CommissionRateNestedListVBAResponse**](CommissionRateNestedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rate

> <MultiCodeResponseListVBAResponse> update_batch_commission_rate(vbasoftware_database, commission_rate)

Create or Update Batch CommissionRate

Create or Update multiple CommissionRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate = [Vba::CommissionRate.new({commission_rate_key: 37, pre_payment_rate: false, scale_exclude_header_adjustments: false, use_initial_premium: false})] # Array<CommissionRate> | 

begin
  # Create or Update Batch CommissionRate
  result = api_instance.update_batch_commission_rate(vbasoftware_database, commission_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->update_batch_commission_rate: #{e}"
end
```

#### Using the update_batch_commission_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rate_with_http_info(vbasoftware_database, commission_rate)

```ruby
begin
  # Create or Update Batch CommissionRate
  data, status_code, headers = api_instance.update_batch_commission_rate_with_http_info(vbasoftware_database, commission_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->update_batch_commission_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate** | [**Array&lt;CommissionRate&gt;**](CommissionRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rate

> <CommissionRateVBAResponse> update_commission_rate(vbasoftware_database, comm_rate_key, commission_rate)

Update CommissionRate

Updates a specific CommissionRate.

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

api_instance = Vba::CommissionRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rate_key = 56 # Integer | CommissionRate Key
commission_rate = Vba::CommissionRate.new({commission_rate_key: 37, pre_payment_rate: false, scale_exclude_header_adjustments: false, use_initial_premium: false}) # CommissionRate | 

begin
  # Update CommissionRate
  result = api_instance.update_commission_rate(vbasoftware_database, comm_rate_key, commission_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->update_commission_rate: #{e}"
end
```

#### Using the update_commission_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateVBAResponse>, Integer, Hash)> update_commission_rate_with_http_info(vbasoftware_database, comm_rate_key, commission_rate)

```ruby
begin
  # Update CommissionRate
  data, status_code, headers = api_instance.update_commission_rate_with_http_info(vbasoftware_database, comm_rate_key, commission_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRatesApi->update_commission_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rate_key** | **Integer** | CommissionRate Key |  |
| **commission_rate** | [**CommissionRate**](CommissionRate.md) |  |  |

### Return type

[**CommissionRateVBAResponse**](CommissionRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

