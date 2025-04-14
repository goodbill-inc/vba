# Vba::FundingReconciliationStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_reconcile_status**](FundingReconciliationStatusesApi.md#create_funding_reconcile_status) | **POST** /funding-reconciliation-statuses | Create FundingReconcileStatus |
| [**delete_funding_reconcile_status**](FundingReconciliationStatusesApi.md#delete_funding_reconcile_status) | **DELETE** /funding-reconciliation-statuses/{reconcileStatus} | Delete FundingReconcileStatus |
| [**get_funding_reconcile_status**](FundingReconciliationStatusesApi.md#get_funding_reconcile_status) | **GET** /funding-reconciliation-statuses/{reconcileStatus} | Get FundingReconcileStatus |
| [**list_funding_reconcile_status**](FundingReconciliationStatusesApi.md#list_funding_reconcile_status) | **GET** /funding-reconciliation-statuses | List FundingReconcileStatus |
| [**update_batch_funding_reconcile_status**](FundingReconciliationStatusesApi.md#update_batch_funding_reconcile_status) | **PUT** /funding-reconciliation-statuses-batch | Create or Update Batch FundingReconcileStatus |
| [**update_funding_reconcile_status**](FundingReconciliationStatusesApi.md#update_funding_reconcile_status) | **PUT** /funding-reconciliation-statuses/{reconcileStatus} | Update FundingReconcileStatus |


## create_funding_reconcile_status

> <FundingReconcileStatusVBAResponse> create_funding_reconcile_status(vbasoftware_database, funding_reconcile_status)

Create FundingReconcileStatus

Creates a new FundingReconcileStatus

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_reconcile_status = Vba::FundingReconcileStatus.new({reconcile_status: 'reconcile_status_example'}) # FundingReconcileStatus | 

begin
  # Create FundingReconcileStatus
  result = api_instance.create_funding_reconcile_status(vbasoftware_database, funding_reconcile_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->create_funding_reconcile_status: #{e}"
end
```

#### Using the create_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileStatusVBAResponse>, Integer, Hash)> create_funding_reconcile_status_with_http_info(vbasoftware_database, funding_reconcile_status)

```ruby
begin
  # Create FundingReconcileStatus
  data, status_code, headers = api_instance.create_funding_reconcile_status_with_http_info(vbasoftware_database, funding_reconcile_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->create_funding_reconcile_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_reconcile_status** | [**FundingReconcileStatus**](FundingReconcileStatus.md) |  |  |

### Return type

[**FundingReconcileStatusVBAResponse**](FundingReconcileStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reconcile_status

> delete_funding_reconcile_status(vbasoftware_database, reconcile_status)

Delete FundingReconcileStatus

Deletes an FundingReconcileStatus

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_status = 'reconcile_status_example' # String | Reconcile Status

begin
  # Delete FundingReconcileStatus
  api_instance.delete_funding_reconcile_status(vbasoftware_database, reconcile_status)
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->delete_funding_reconcile_status: #{e}"
end
```

#### Using the delete_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status)

```ruby
begin
  # Delete FundingReconcileStatus
  data, status_code, headers = api_instance.delete_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->delete_funding_reconcile_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_status** | **String** | Reconcile Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reconcile_status

> <FundingReconcileStatusVBAResponse> get_funding_reconcile_status(vbasoftware_database, reconcile_status)

Get FundingReconcileStatus

Gets FundingReconcileStatus

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_status = 'reconcile_status_example' # String | Reconcile Status

begin
  # Get FundingReconcileStatus
  result = api_instance.get_funding_reconcile_status(vbasoftware_database, reconcile_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->get_funding_reconcile_status: #{e}"
end
```

#### Using the get_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileStatusVBAResponse>, Integer, Hash)> get_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status)

```ruby
begin
  # Get FundingReconcileStatus
  data, status_code, headers = api_instance.get_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->get_funding_reconcile_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_status** | **String** | Reconcile Status |  |

### Return type

[**FundingReconcileStatusVBAResponse**](FundingReconcileStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reconcile_status

> <FundingReconcileStatusListVBAResponse> list_funding_reconcile_status(vbasoftware_database, opts)

List FundingReconcileStatus

Lists all FundingReconcileStatus for the given reconcileStatus

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReconcileStatus
  result = api_instance.list_funding_reconcile_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->list_funding_reconcile_status: #{e}"
end
```

#### Using the list_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileStatusListVBAResponse>, Integer, Hash)> list_funding_reconcile_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingReconcileStatus
  data, status_code, headers = api_instance.list_funding_reconcile_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->list_funding_reconcile_status_with_http_info: #{e}"
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

[**FundingReconcileStatusListVBAResponse**](FundingReconcileStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reconcile_status

> <MultiCodeResponseListVBAResponse> update_batch_funding_reconcile_status(vbasoftware_database, funding_reconcile_status)

Create or Update Batch FundingReconcileStatus

Create or Update multiple FundingReconcileStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_reconcile_status = [Vba::FundingReconcileStatus.new({reconcile_status: 'reconcile_status_example'})] # Array<FundingReconcileStatus> | 

begin
  # Create or Update Batch FundingReconcileStatus
  result = api_instance.update_batch_funding_reconcile_status(vbasoftware_database, funding_reconcile_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->update_batch_funding_reconcile_status: #{e}"
end
```

#### Using the update_batch_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reconcile_status_with_http_info(vbasoftware_database, funding_reconcile_status)

```ruby
begin
  # Create or Update Batch FundingReconcileStatus
  data, status_code, headers = api_instance.update_batch_funding_reconcile_status_with_http_info(vbasoftware_database, funding_reconcile_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->update_batch_funding_reconcile_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_reconcile_status** | [**Array&lt;FundingReconcileStatus&gt;**](FundingReconcileStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reconcile_status

> <FundingReconcileStatusVBAResponse> update_funding_reconcile_status(vbasoftware_database, reconcile_status, funding_reconcile_status)

Update FundingReconcileStatus

Updates a specific FundingReconcileStatus.

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

api_instance = Vba::FundingReconciliationStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_status = 'reconcile_status_example' # String | Reconcile Status
funding_reconcile_status = Vba::FundingReconcileStatus.new({reconcile_status: 'reconcile_status_example'}) # FundingReconcileStatus | 

begin
  # Update FundingReconcileStatus
  result = api_instance.update_funding_reconcile_status(vbasoftware_database, reconcile_status, funding_reconcile_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->update_funding_reconcile_status: #{e}"
end
```

#### Using the update_funding_reconcile_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileStatusVBAResponse>, Integer, Hash)> update_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status, funding_reconcile_status)

```ruby
begin
  # Update FundingReconcileStatus
  data, status_code, headers = api_instance.update_funding_reconcile_status_with_http_info(vbasoftware_database, reconcile_status, funding_reconcile_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationStatusesApi->update_funding_reconcile_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_status** | **String** | Reconcile Status |  |
| **funding_reconcile_status** | [**FundingReconcileStatus**](FundingReconcileStatus.md) |  |  |

### Return type

[**FundingReconcileStatusVBAResponse**](FundingReconcileStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

