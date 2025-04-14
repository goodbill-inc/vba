# Vba::FundingReconciliationDisbursementsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#create_funding_reconcile_disbursed) | **POST** /funding-reconciliations/{reconcileKey}/disbursements | Create FundingReconcileDisbursed |
| [**delete_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#delete_funding_reconcile_disbursed) | **DELETE** /funding-reconciliations/{reconcileKey}/disbursements/{checkID} | Delete FundingReconcileDisbursed |
| [**get_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#get_funding_reconcile_disbursed) | **GET** /funding-reconciliations/{reconcileKey}/disbursements/{checkID} | Get FundingReconcileDisbursed |
| [**list_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#list_funding_reconcile_disbursed) | **GET** /funding-reconciliations/{reconcileKey}/disbursements | List FundingReconcileDisbursed |
| [**update_batch_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#update_batch_funding_reconcile_disbursed) | **PUT** /funding-reconciliations/{reconcileKey}/disbursements-batch | Create or Update Batch FundingReconcileDisbursed |
| [**update_funding_reconcile_disbursed**](FundingReconciliationDisbursementsApi.md#update_funding_reconcile_disbursed) | **PUT** /funding-reconciliations/{reconcileKey}/disbursements/{checkID} | Update FundingReconcileDisbursed |


## create_funding_reconcile_disbursed

> <FundingReconcileDisbursedVBAResponse> create_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)

Create FundingReconcileDisbursed

Creates a new FundingReconcileDisbursed

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_disbursed = Vba::FundingReconcileDisbursed.new({reconcile_key: 37, check_id: 37, selected: false}) # FundingReconcileDisbursed | 

begin
  # Create FundingReconcileDisbursed
  result = api_instance.create_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->create_funding_reconcile_disbursed: #{e}"
end
```

#### Using the create_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileDisbursedVBAResponse>, Integer, Hash)> create_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)

```ruby
begin
  # Create FundingReconcileDisbursed
  data, status_code, headers = api_instance.create_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileDisbursedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->create_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_disbursed** | [**FundingReconcileDisbursed**](FundingReconcileDisbursed.md) |  |  |

### Return type

[**FundingReconcileDisbursedVBAResponse**](FundingReconcileDisbursedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reconcile_disbursed

> delete_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id)

Delete FundingReconcileDisbursed

Deletes an FundingReconcileDisbursed

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
check_id = 56 # Integer | Check ID

begin
  # Delete FundingReconcileDisbursed
  api_instance.delete_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id)
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->delete_funding_reconcile_disbursed: #{e}"
end
```

#### Using the delete_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id)

```ruby
begin
  # Delete FundingReconcileDisbursed
  data, status_code, headers = api_instance.delete_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->delete_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reconcile_disbursed

> <FundingReconcileDisbursedVBAResponse> get_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id)

Get FundingReconcileDisbursed

Gets FundingReconcileDisbursed

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
check_id = 56 # Integer | Check ID

begin
  # Get FundingReconcileDisbursed
  result = api_instance.get_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->get_funding_reconcile_disbursed: #{e}"
end
```

#### Using the get_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileDisbursedVBAResponse>, Integer, Hash)> get_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id)

```ruby
begin
  # Get FundingReconcileDisbursed
  data, status_code, headers = api_instance.get_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileDisbursedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->get_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

[**FundingReconcileDisbursedVBAResponse**](FundingReconcileDisbursedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reconcile_disbursed

> <FundingReconcileDisbursedListVBAResponse> list_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, opts)

List FundingReconcileDisbursed

Lists all FundingReconcileDisbursed for the given reconcileKey

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReconcileDisbursed
  result = api_instance.list_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->list_funding_reconcile_disbursed: #{e}"
end
```

#### Using the list_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileDisbursedListVBAResponse>, Integer, Hash)> list_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, opts)

```ruby
begin
  # List FundingReconcileDisbursed
  data, status_code, headers = api_instance.list_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileDisbursedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->list_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FundingReconcileDisbursedListVBAResponse**](FundingReconcileDisbursedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reconcile_disbursed

> <MultiCodeResponseListVBAResponse> update_batch_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)

Create or Update Batch FundingReconcileDisbursed

Create or Update multiple FundingReconcileDisbursed at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_disbursed = [Vba::FundingReconcileDisbursed.new({reconcile_key: 37, check_id: 37, selected: false})] # Array<FundingReconcileDisbursed> | 

begin
  # Create or Update Batch FundingReconcileDisbursed
  result = api_instance.update_batch_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->update_batch_funding_reconcile_disbursed: #{e}"
end
```

#### Using the update_batch_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)

```ruby
begin
  # Create or Update Batch FundingReconcileDisbursed
  data, status_code, headers = api_instance.update_batch_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_disbursed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->update_batch_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_disbursed** | [**Array&lt;FundingReconcileDisbursed&gt;**](FundingReconcileDisbursed.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reconcile_disbursed

> <FundingReconcileDisbursedVBAResponse> update_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id, funding_reconcile_disbursed)

Update FundingReconcileDisbursed

Updates a specific FundingReconcileDisbursed.

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

api_instance = Vba::FundingReconciliationDisbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
check_id = 56 # Integer | Check ID
funding_reconcile_disbursed = Vba::FundingReconcileDisbursed.new({reconcile_key: 37, check_id: 37, selected: false}) # FundingReconcileDisbursed | 

begin
  # Update FundingReconcileDisbursed
  result = api_instance.update_funding_reconcile_disbursed(vbasoftware_database, reconcile_key, check_id, funding_reconcile_disbursed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->update_funding_reconcile_disbursed: #{e}"
end
```

#### Using the update_funding_reconcile_disbursed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileDisbursedVBAResponse>, Integer, Hash)> update_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id, funding_reconcile_disbursed)

```ruby
begin
  # Update FundingReconcileDisbursed
  data, status_code, headers = api_instance.update_funding_reconcile_disbursed_with_http_info(vbasoftware_database, reconcile_key, check_id, funding_reconcile_disbursed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileDisbursedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationDisbursementsApi->update_funding_reconcile_disbursed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **check_id** | **Integer** | Check ID |  |
| **funding_reconcile_disbursed** | [**FundingReconcileDisbursed**](FundingReconcileDisbursed.md) |  |  |

### Return type

[**FundingReconcileDisbursedVBAResponse**](FundingReconcileDisbursedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

