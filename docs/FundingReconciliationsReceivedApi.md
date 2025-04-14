# Vba::FundingReconciliationsReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#create_funding_reconcile_received) | **POST** /funding-reconciliations/{reconcileKey}/deposits | Create FundingReconcileReceived |
| [**delete_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#delete_funding_reconcile_received) | **DELETE** /funding-reconciliations/{reconcileKey}/deposits/{depositKey} | Delete FundingReconcileReceived |
| [**get_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#get_funding_reconcile_received) | **GET** /funding-reconciliations/{reconcileKey}/deposits/{depositKey} | Get FundingReconcileReceived |
| [**list_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#list_funding_reconcile_received) | **GET** /funding-reconciliations/{reconcileKey}/deposits | List FundingReconcileReceived |
| [**update_batch_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#update_batch_funding_reconcile_received) | **PUT** /funding-reconciliations/{reconcileKey}/deposits-batch | Create or Update Batch FundingReconcileReceived |
| [**update_funding_reconcile_received**](FundingReconciliationsReceivedApi.md#update_funding_reconcile_received) | **PUT** /funding-reconciliations/{reconcileKey}/deposits/{depositKey} | Update FundingReconcileReceived |


## create_funding_reconcile_received

> <FundingReconcileReceivedVBAResponse> create_funding_reconcile_received(vbasoftware_database, reconcile_key, funding_reconcile_received)

Create FundingReconcileReceived

Creates a new FundingReconcileReceived

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_received = Vba::FundingReconcileReceived.new({reconcile_key: 37, deposit_key: 37, selected: false}) # FundingReconcileReceived | 

begin
  # Create FundingReconcileReceived
  result = api_instance.create_funding_reconcile_received(vbasoftware_database, reconcile_key, funding_reconcile_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->create_funding_reconcile_received: #{e}"
end
```

#### Using the create_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileReceivedVBAResponse>, Integer, Hash)> create_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_received)

```ruby
begin
  # Create FundingReconcileReceived
  data, status_code, headers = api_instance.create_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->create_funding_reconcile_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_received** | [**FundingReconcileReceived**](FundingReconcileReceived.md) |  |  |

### Return type

[**FundingReconcileReceivedVBAResponse**](FundingReconcileReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reconcile_received

> delete_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key)

Delete FundingReconcileReceived

Deletes an FundingReconcileReceived

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
deposit_key = 56 # Integer | Deposit Key

begin
  # Delete FundingReconcileReceived
  api_instance.delete_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->delete_funding_reconcile_received: #{e}"
end
```

#### Using the delete_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key)

```ruby
begin
  # Delete FundingReconcileReceived
  data, status_code, headers = api_instance.delete_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->delete_funding_reconcile_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **deposit_key** | **Integer** | Deposit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reconcile_received

> <FundingReconcileReceivedVBAResponse> get_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key)

Get FundingReconcileReceived

Gets FundingReconcileReceived

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
deposit_key = 56 # Integer | Deposit Key

begin
  # Get FundingReconcileReceived
  result = api_instance.get_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->get_funding_reconcile_received: #{e}"
end
```

#### Using the get_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileReceivedVBAResponse>, Integer, Hash)> get_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key)

```ruby
begin
  # Get FundingReconcileReceived
  data, status_code, headers = api_instance.get_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->get_funding_reconcile_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **deposit_key** | **Integer** | Deposit Key |  |

### Return type

[**FundingReconcileReceivedVBAResponse**](FundingReconcileReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reconcile_received

> <FundingReconcileReceivedListVBAResponse> list_funding_reconcile_received(vbasoftware_database, reconcile_key, opts)

List FundingReconcileReceived

Lists all FundingReconcileReceived for the given reconcileKey

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReconcileReceived
  result = api_instance.list_funding_reconcile_received(vbasoftware_database, reconcile_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->list_funding_reconcile_received: #{e}"
end
```

#### Using the list_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileReceivedListVBAResponse>, Integer, Hash)> list_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, opts)

```ruby
begin
  # List FundingReconcileReceived
  data, status_code, headers = api_instance.list_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->list_funding_reconcile_received_with_http_info: #{e}"
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

[**FundingReconcileReceivedListVBAResponse**](FundingReconcileReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reconcile_received

> <MultiCodeResponseListVBAResponse> update_batch_funding_reconcile_received(vbasoftware_database, reconcile_key, funding_reconcile_received)

Create or Update Batch FundingReconcileReceived

Create or Update multiple FundingReconcileReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_received = [Vba::FundingReconcileReceived.new({reconcile_key: 37, deposit_key: 37, selected: false})] # Array<FundingReconcileReceived> | 

begin
  # Create or Update Batch FundingReconcileReceived
  result = api_instance.update_batch_funding_reconcile_received(vbasoftware_database, reconcile_key, funding_reconcile_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->update_batch_funding_reconcile_received: #{e}"
end
```

#### Using the update_batch_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_received)

```ruby
begin
  # Create or Update Batch FundingReconcileReceived
  data, status_code, headers = api_instance.update_batch_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->update_batch_funding_reconcile_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_received** | [**Array&lt;FundingReconcileReceived&gt;**](FundingReconcileReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reconcile_received

> <FundingReconcileReceivedVBAResponse> update_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key, funding_reconcile_received)

Update FundingReconcileReceived

Updates a specific FundingReconcileReceived.

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

api_instance = Vba::FundingReconciliationsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
deposit_key = 56 # Integer | Deposit Key
funding_reconcile_received = Vba::FundingReconcileReceived.new({reconcile_key: 37, deposit_key: 37, selected: false}) # FundingReconcileReceived | 

begin
  # Update FundingReconcileReceived
  result = api_instance.update_funding_reconcile_received(vbasoftware_database, reconcile_key, deposit_key, funding_reconcile_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->update_funding_reconcile_received: #{e}"
end
```

#### Using the update_funding_reconcile_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileReceivedVBAResponse>, Integer, Hash)> update_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key, funding_reconcile_received)

```ruby
begin
  # Update FundingReconcileReceived
  data, status_code, headers = api_instance.update_funding_reconcile_received_with_http_info(vbasoftware_database, reconcile_key, deposit_key, funding_reconcile_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsReceivedApi->update_funding_reconcile_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **deposit_key** | **Integer** | Deposit Key |  |
| **funding_reconcile_received** | [**FundingReconcileReceived**](FundingReconcileReceived.md) |  |  |

### Return type

[**FundingReconcileReceivedVBAResponse**](FundingReconcileReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

