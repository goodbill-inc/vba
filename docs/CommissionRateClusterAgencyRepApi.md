# Vba::CommissionRateClusterAgencyRepApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#create_commission_rate_cluster_agency_rep) | **POST** /commission-rate-cluster-agency-reps | Create CommissionRateClusterAgencyRep |
| [**delete_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#delete_commission_rate_cluster_agency_rep) | **DELETE** /commission-rate-cluster-agency-reps/{CommissionRateClusterAgencyRep_Key} | Delete CommissionRateClusterAgencyRep |
| [**get_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#get_commission_rate_cluster_agency_rep) | **GET** /commission-rate-cluster-agency-reps/{CommissionRateClusterAgencyRep_Key} | Get CommissionRateClusterAgencyRep |
| [**list_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#list_commission_rate_cluster_agency_rep) | **GET** /commission-rate-cluster-agency-reps | List CommissionRateClusterAgencyRep |
| [**update_batch_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#update_batch_commission_rate_cluster_agency_rep) | **PUT** /commission-rate-cluster-agency-reps-batch | Create or Update Batch CommissionRateClusterAgencyRep |
| [**update_commission_rate_cluster_agency_rep**](CommissionRateClusterAgencyRepApi.md#update_commission_rate_cluster_agency_rep) | **PUT** /commission-rate-cluster-agency-reps/{CommissionRateClusterAgencyRep_Key} | Update CommissionRateClusterAgencyRep |


## create_commission_rate_cluster_agency_rep

> <CommissionRateClusterAgencyRepVBAResponse> create_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep)

Create CommissionRateClusterAgencyRep

Creates a new CommissionRateClusterAgencyRep

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster_agency_rep = Vba::CommissionRateClusterAgencyRep.new({commission_rate_cluster_agency_rep_key: 37}) # CommissionRateClusterAgencyRep | 

begin
  # Create CommissionRateClusterAgencyRep
  result = api_instance.create_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->create_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the create_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterAgencyRepVBAResponse>, Integer, Hash)> create_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep)

```ruby
begin
  # Create CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.create_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->create_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster_agency_rep** | [**CommissionRateClusterAgencyRep**](CommissionRateClusterAgencyRep.md) |  |  |

### Return type

[**CommissionRateClusterAgencyRepVBAResponse**](CommissionRateClusterAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rate_cluster_agency_rep

> delete_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key)

Delete CommissionRateClusterAgencyRep

Deletes an CommissionRateClusterAgencyRep

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster_agency_rep_key = 56 # Integer | CommissionRateClusterAgencyRep Key

begin
  # Delete CommissionRateClusterAgencyRep
  api_instance.delete_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->delete_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the delete_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key)

```ruby
begin
  # Delete CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.delete_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->delete_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster_agency_rep_key** | **Integer** | CommissionRateClusterAgencyRep Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rate_cluster_agency_rep

> <CommissionRateClusterAgencyRepVBAResponse> get_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key)

Get CommissionRateClusterAgencyRep

Gets CommissionRateClusterAgencyRep

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster_agency_rep_key = 56 # Integer | CommissionRateClusterAgencyRep Key

begin
  # Get CommissionRateClusterAgencyRep
  result = api_instance.get_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->get_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the get_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterAgencyRepVBAResponse>, Integer, Hash)> get_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key)

```ruby
begin
  # Get CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.get_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->get_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster_agency_rep_key** | **Integer** | CommissionRateClusterAgencyRep Key |  |

### Return type

[**CommissionRateClusterAgencyRepVBAResponse**](CommissionRateClusterAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rate_cluster_agency_rep

> <CommissionRateClusterAgencyRepListVBAResponse> list_commission_rate_cluster_agency_rep(vbasoftware_database, opts)

List CommissionRateClusterAgencyRep

Lists all CommissionRateClusterAgencyRep

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List CommissionRateClusterAgencyRep
  result = api_instance.list_commission_rate_cluster_agency_rep(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->list_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the list_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterAgencyRepListVBAResponse>, Integer, Hash)> list_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.list_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterAgencyRepListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->list_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**CommissionRateClusterAgencyRepListVBAResponse**](CommissionRateClusterAgencyRepListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rate_cluster_agency_rep

> <MultiCodeResponseListVBAResponse> update_batch_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep)

Create or Update Batch CommissionRateClusterAgencyRep

Create or Update multiple CommissionRateClusterAgencyRep at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster_agency_rep = [Vba::CommissionRateClusterAgencyRep.new({commission_rate_cluster_agency_rep_key: 37})] # Array<CommissionRateClusterAgencyRep> | 

begin
  # Create or Update Batch CommissionRateClusterAgencyRep
  result = api_instance.update_batch_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->update_batch_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the update_batch_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep)

```ruby
begin
  # Create or Update Batch CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.update_batch_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->update_batch_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster_agency_rep** | [**Array&lt;CommissionRateClusterAgencyRep&gt;**](CommissionRateClusterAgencyRep.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rate_cluster_agency_rep

> <CommissionRateClusterAgencyRepVBAResponse> update_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key, commission_rate_cluster_agency_rep)

Update CommissionRateClusterAgencyRep

Updates a specific CommissionRateClusterAgencyRep.

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

api_instance = Vba::CommissionRateClusterAgencyRepApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_rate_cluster_agency_rep_key = 56 # Integer | CommissionRateClusterAgencyRep Key
commission_rate_cluster_agency_rep = Vba::CommissionRateClusterAgencyRep.new({commission_rate_cluster_agency_rep_key: 37}) # CommissionRateClusterAgencyRep | 

begin
  # Update CommissionRateClusterAgencyRep
  result = api_instance.update_commission_rate_cluster_agency_rep(vbasoftware_database, commission_rate_cluster_agency_rep_key, commission_rate_cluster_agency_rep)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->update_commission_rate_cluster_agency_rep: #{e}"
end
```

#### Using the update_commission_rate_cluster_agency_rep_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRateClusterAgencyRepVBAResponse>, Integer, Hash)> update_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key, commission_rate_cluster_agency_rep)

```ruby
begin
  # Update CommissionRateClusterAgencyRep
  data, status_code, headers = api_instance.update_commission_rate_cluster_agency_rep_with_http_info(vbasoftware_database, commission_rate_cluster_agency_rep_key, commission_rate_cluster_agency_rep)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRateClusterAgencyRepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRateClusterAgencyRepApi->update_commission_rate_cluster_agency_rep_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_rate_cluster_agency_rep_key** | **Integer** | CommissionRateClusterAgencyRep Key |  |
| **commission_rate_cluster_agency_rep** | [**CommissionRateClusterAgencyRep**](CommissionRateClusterAgencyRep.md) |  |  |

### Return type

[**CommissionRateClusterAgencyRepVBAResponse**](CommissionRateClusterAgencyRepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

