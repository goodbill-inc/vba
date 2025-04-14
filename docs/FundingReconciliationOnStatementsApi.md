# Vba::FundingReconciliationOnStatementsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#create_funding_reconcile_on_statement) | **POST** /funding-reconciliations/{reconcileKey}/on-statements | Create FundingReconcileOnStatement |
| [**delete_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#delete_funding_reconcile_on_statement) | **DELETE** /funding-reconciliations/{reconcileKey}/on-statements/{onStatementKey} | Delete FundingReconcileOnStatement |
| [**get_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#get_funding_reconcile_on_statement) | **GET** /funding-reconciliations/{reconcileKey}/on-statements/{onStatementKey} | Get FundingReconcileOnStatement |
| [**list_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#list_funding_reconcile_on_statement) | **GET** /funding-reconciliations/{reconcileKey}/on-statements | List FundingReconcileOnStatement |
| [**update_batch_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#update_batch_funding_reconcile_on_statement) | **PUT** /funding-reconciliations/{reconcileKey}/on-statements-batch | Create or Update Batch FundingReconcileOnStatement |
| [**update_funding_reconcile_on_statement**](FundingReconciliationOnStatementsApi.md#update_funding_reconcile_on_statement) | **PUT** /funding-reconciliations/{reconcileKey}/on-statements/{onStatementKey} | Update FundingReconcileOnStatement |


## create_funding_reconcile_on_statement

> <FundingReconcileOnStatementVBAResponse> create_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)

Create FundingReconcileOnStatement

Creates a new FundingReconcileOnStatement

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_on_statement = Vba::FundingReconcileOnStatement.new({on_statement_key: 37, reconcile_key: 37, selected: false}) # FundingReconcileOnStatement | 

begin
  # Create FundingReconcileOnStatement
  result = api_instance.create_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->create_funding_reconcile_on_statement: #{e}"
end
```

#### Using the create_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileOnStatementVBAResponse>, Integer, Hash)> create_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)

```ruby
begin
  # Create FundingReconcileOnStatement
  data, status_code, headers = api_instance.create_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileOnStatementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->create_funding_reconcile_on_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_on_statement** | [**FundingReconcileOnStatement**](FundingReconcileOnStatement.md) |  |  |

### Return type

[**FundingReconcileOnStatementVBAResponse**](FundingReconcileOnStatementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reconcile_on_statement

> delete_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key)

Delete FundingReconcileOnStatement

Deletes an FundingReconcileOnStatement

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
on_statement_key = 56 # Integer | On Statement Key

begin
  # Delete FundingReconcileOnStatement
  api_instance.delete_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->delete_funding_reconcile_on_statement: #{e}"
end
```

#### Using the delete_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key)

```ruby
begin
  # Delete FundingReconcileOnStatement
  data, status_code, headers = api_instance.delete_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->delete_funding_reconcile_on_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **on_statement_key** | **Integer** | On Statement Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reconcile_on_statement

> <FundingReconcileOnStatementVBAResponse> get_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key)

Get FundingReconcileOnStatement

Gets FundingReconcileOnStatement

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
on_statement_key = 56 # Integer | On Statement Key

begin
  # Get FundingReconcileOnStatement
  result = api_instance.get_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->get_funding_reconcile_on_statement: #{e}"
end
```

#### Using the get_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileOnStatementVBAResponse>, Integer, Hash)> get_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key)

```ruby
begin
  # Get FundingReconcileOnStatement
  data, status_code, headers = api_instance.get_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileOnStatementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->get_funding_reconcile_on_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **on_statement_key** | **Integer** | On Statement Key |  |

### Return type

[**FundingReconcileOnStatementVBAResponse**](FundingReconcileOnStatementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reconcile_on_statement

> <FundingReconcileOnStatementListVBAResponse> list_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, opts)

List FundingReconcileOnStatement

Lists all FundingReconcileOnStatement for the given reconcileKey

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReconcileOnStatement
  result = api_instance.list_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->list_funding_reconcile_on_statement: #{e}"
end
```

#### Using the list_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileOnStatementListVBAResponse>, Integer, Hash)> list_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, opts)

```ruby
begin
  # List FundingReconcileOnStatement
  data, status_code, headers = api_instance.list_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileOnStatementListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->list_funding_reconcile_on_statement_with_http_info: #{e}"
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

[**FundingReconcileOnStatementListVBAResponse**](FundingReconcileOnStatementListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reconcile_on_statement

> <MultiCodeResponseListVBAResponse> update_batch_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)

Create or Update Batch FundingReconcileOnStatement

Create or Update multiple FundingReconcileOnStatement at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile_on_statement = [Vba::FundingReconcileOnStatement.new({on_statement_key: 37, reconcile_key: 37, selected: false})] # Array<FundingReconcileOnStatement> | 

begin
  # Create or Update Batch FundingReconcileOnStatement
  result = api_instance.update_batch_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->update_batch_funding_reconcile_on_statement: #{e}"
end
```

#### Using the update_batch_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)

```ruby
begin
  # Create or Update Batch FundingReconcileOnStatement
  data, status_code, headers = api_instance.update_batch_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile_on_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->update_batch_funding_reconcile_on_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile_on_statement** | [**Array&lt;FundingReconcileOnStatement&gt;**](FundingReconcileOnStatement.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reconcile_on_statement

> <FundingReconcileOnStatementVBAResponse> update_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key, funding_reconcile_on_statement)

Update FundingReconcileOnStatement

Updates a specific FundingReconcileOnStatement.

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

api_instance = Vba::FundingReconciliationOnStatementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
on_statement_key = 56 # Integer | On Statement Key
funding_reconcile_on_statement = Vba::FundingReconcileOnStatement.new({on_statement_key: 37, reconcile_key: 37, selected: false}) # FundingReconcileOnStatement | 

begin
  # Update FundingReconcileOnStatement
  result = api_instance.update_funding_reconcile_on_statement(vbasoftware_database, reconcile_key, on_statement_key, funding_reconcile_on_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->update_funding_reconcile_on_statement: #{e}"
end
```

#### Using the update_funding_reconcile_on_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileOnStatementVBAResponse>, Integer, Hash)> update_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key, funding_reconcile_on_statement)

```ruby
begin
  # Update FundingReconcileOnStatement
  data, status_code, headers = api_instance.update_funding_reconcile_on_statement_with_http_info(vbasoftware_database, reconcile_key, on_statement_key, funding_reconcile_on_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileOnStatementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationOnStatementsApi->update_funding_reconcile_on_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **on_statement_key** | **Integer** | On Statement Key |  |
| **funding_reconcile_on_statement** | [**FundingReconcileOnStatement**](FundingReconcileOnStatement.md) |  |  |

### Return type

[**FundingReconcileOnStatementVBAResponse**](FundingReconcileOnStatementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

