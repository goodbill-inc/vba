# Vba::FundingReconciliationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_reconciliation**](FundingReconciliationsApi.md#add_reconciliation) | **POST** /funding-reconciliation-add | Add Reconciliation |
| [**create_funding_reconcile**](FundingReconciliationsApi.md#create_funding_reconcile) | **POST** /funding-reconciliations | Create FundingReconcile |
| [**delete_funding_reconcile**](FundingReconciliationsApi.md#delete_funding_reconcile) | **DELETE** /funding-reconciliations/{reconcileKey} | Delete FundingReconcile |
| [**get_funding_reconcile**](FundingReconciliationsApi.md#get_funding_reconcile) | **GET** /funding-reconciliations/{reconcileKey} | Get FundingReconcile |
| [**list_funding_reconcile**](FundingReconciliationsApi.md#list_funding_reconcile) | **GET** /funding-reconciliations | List FundingReconcile |
| [**reconcile_funds**](FundingReconciliationsApi.md#reconcile_funds) | **POST** /funding-reconciliation-reconcile-funds | Reconcile Funds |
| [**update_batch_funding_reconcile**](FundingReconciliationsApi.md#update_batch_funding_reconcile) | **PUT** /funding-reconciliations-batch | Create or Update Batch FundingReconcile |
| [**update_funding_reconcile**](FundingReconciliationsApi.md#update_funding_reconcile) | **PUT** /funding-reconciliations/{reconcileKey} | Update FundingReconcile |


## add_reconciliation

> <FundingReconcileVBAResponse> add_reconciliation(vbasoftware_database, funding_statement)

Add Reconciliation

Creates a new FundingReconcile along with attaching any Checks/Deposits identified.

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement = Vba::FundingStatement.new # FundingStatement | 

begin
  # Add Reconciliation
  result = api_instance.add_reconciliation(vbasoftware_database, funding_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->add_reconciliation: #{e}"
end
```

#### Using the add_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> add_reconciliation_with_http_info(vbasoftware_database, funding_statement)

```ruby
begin
  # Add Reconciliation
  data, status_code, headers = api_instance.add_reconciliation_with_http_info(vbasoftware_database, funding_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->add_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement** | [**FundingStatement**](FundingStatement.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_funding_reconcile

> <FundingReconcileVBAResponse> create_funding_reconcile(vbasoftware_database, funding_reconcile)

Create FundingReconcile

Creates a new FundingReconcile

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_reconcile = Vba::FundingReconcile.new({reconcile_key: 37, account_key: 37, electronic_statement: false, reconcile_date: Time.now, reconcile_user: 'reconcile_user_example'}) # FundingReconcile | 

begin
  # Create FundingReconcile
  result = api_instance.create_funding_reconcile(vbasoftware_database, funding_reconcile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->create_funding_reconcile: #{e}"
end
```

#### Using the create_funding_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> create_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile)

```ruby
begin
  # Create FundingReconcile
  data, status_code, headers = api_instance.create_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->create_funding_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_reconcile** | [**FundingReconcile**](FundingReconcile.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_reconcile

> delete_funding_reconcile(vbasoftware_database, reconcile_key)

Delete FundingReconcile

Deletes an FundingReconcile

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key

begin
  # Delete FundingReconcile
  api_instance.delete_funding_reconcile(vbasoftware_database, reconcile_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->delete_funding_reconcile: #{e}"
end
```

#### Using the delete_funding_reconcile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key)

```ruby
begin
  # Delete FundingReconcile
  data, status_code, headers = api_instance.delete_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->delete_funding_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_reconcile

> <FundingReconcileVBAResponse> get_funding_reconcile(vbasoftware_database, reconcile_key)

Get FundingReconcile

Gets FundingReconcile

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key

begin
  # Get FundingReconcile
  result = api_instance.get_funding_reconcile(vbasoftware_database, reconcile_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->get_funding_reconcile: #{e}"
end
```

#### Using the get_funding_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> get_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key)

```ruby
begin
  # Get FundingReconcile
  data, status_code, headers = api_instance.get_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->get_funding_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_reconcile

> <FundingReconcileListVBAResponse> list_funding_reconcile(vbasoftware_database, opts)

List FundingReconcile

Lists all FundingReconcile

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingReconcile
  result = api_instance.list_funding_reconcile(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->list_funding_reconcile: #{e}"
end
```

#### Using the list_funding_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileListVBAResponse>, Integer, Hash)> list_funding_reconcile_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingReconcile
  data, status_code, headers = api_instance.list_funding_reconcile_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->list_funding_reconcile_with_http_info: #{e}"
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

[**FundingReconcileListVBAResponse**](FundingReconcileListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## reconcile_funds

> <FundingReconcileVBAResponse> reconcile_funds(vbasoftware_database, funding_statement)

Reconcile Funds

Reconcile all Deposits, Checks, and Funding associated with this Reconciliation as well as creating offset debits and credits.

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement = Vba::FundingStatement.new # FundingStatement | 

begin
  # Reconcile Funds
  result = api_instance.reconcile_funds(vbasoftware_database, funding_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->reconcile_funds: #{e}"
end
```

#### Using the reconcile_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> reconcile_funds_with_http_info(vbasoftware_database, funding_statement)

```ruby
begin
  # Reconcile Funds
  data, status_code, headers = api_instance.reconcile_funds_with_http_info(vbasoftware_database, funding_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->reconcile_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement** | [**FundingStatement**](FundingStatement.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_reconcile

> <MultiCodeResponseListVBAResponse> update_batch_funding_reconcile(vbasoftware_database, funding_reconcile)

Create or Update Batch FundingReconcile

Create or Update multiple FundingReconcile at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_reconcile = [Vba::FundingReconcile.new({reconcile_key: 37, account_key: 37, electronic_statement: false, reconcile_date: Time.now, reconcile_user: 'reconcile_user_example'})] # Array<FundingReconcile> | 

begin
  # Create or Update Batch FundingReconcile
  result = api_instance.update_batch_funding_reconcile(vbasoftware_database, funding_reconcile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->update_batch_funding_reconcile: #{e}"
end
```

#### Using the update_batch_funding_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile)

```ruby
begin
  # Create or Update Batch FundingReconcile
  data, status_code, headers = api_instance.update_batch_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->update_batch_funding_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_reconcile** | [**Array&lt;FundingReconcile&gt;**](FundingReconcile.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_reconcile

> <FundingReconcileVBAResponse> update_funding_reconcile(vbasoftware_database, reconcile_key, funding_reconcile)

Update FundingReconcile

Updates a specific FundingReconcile.

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

api_instance = Vba::FundingReconciliationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reconcile_key = 56 # Integer | Reconcile Key
funding_reconcile = Vba::FundingReconcile.new({reconcile_key: 37, account_key: 37, electronic_statement: false, reconcile_date: Time.now, reconcile_user: 'reconcile_user_example'}) # FundingReconcile | 

begin
  # Update FundingReconcile
  result = api_instance.update_funding_reconcile(vbasoftware_database, reconcile_key, funding_reconcile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->update_funding_reconcile: #{e}"
end
```

#### Using the update_funding_reconcile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> update_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile)

```ruby
begin
  # Update FundingReconcile
  data, status_code, headers = api_instance.update_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingReconciliationsApi->update_funding_reconcile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reconcile_key** | **Integer** | Reconcile Key |  |
| **funding_reconcile** | [**FundingReconcile**](FundingReconcile.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

