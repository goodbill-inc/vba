# Vba::ChecksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checks**](ChecksApi.md#create_checks) | **POST** /checks | Create Checks |
| [**create_withhold_check_batch**](ChecksApi.md#create_withhold_check_batch) | **POST** /accounting-create-withhold-check-batch | Create Withhold Check Run |
| [**delete_checks**](ChecksApi.md#delete_checks) | **DELETE** /checks/{checkID} | Delete Checks |
| [**get_checks**](ChecksApi.md#get_checks) | **GET** /checks/{checkID} | Get Checks |
| [**get_name_on_check**](ChecksApi.md#get_name_on_check) | **POST** /checks-name-on-check | Get Name and Address Information |
| [**list_checks**](ChecksApi.md#list_checks) | **GET** /checks | List Checks |
| [**process_checks**](ChecksApi.md#process_checks) | **POST** /checks-process | Process Checks |
| [**undo_void_check**](ChecksApi.md#undo_void_check) | **POST** /checks-undo-void | Undo Void Check |
| [**update_batch_checks**](ChecksApi.md#update_batch_checks) | **PUT** /checks-batch | Create or Update Batch Checks |
| [**update_checks**](ChecksApi.md#update_checks) | **PUT** /checks/{checkID} | Update Checks |
| [**void_check**](ChecksApi.md#void_check) | **POST** /checks/{checkID}/void | Void Check |
| [**void_distribution_check**](ChecksApi.md#void_distribution_check) | **POST** /checks-void-distribution/{checkId} | Void Premium Distribution Check |


## create_checks

> <ChecksVBAResponse> create_checks(vbasoftware_database, checks)

Create Checks

Creates a new Checks

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
checks = Vba::Checks.new({check_id: 37, generated_835: false}) # Checks | 

begin
  # Create Checks
  result = api_instance.create_checks(vbasoftware_database, checks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->create_checks: #{e}"
end
```

#### Using the create_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> create_checks_with_http_info(vbasoftware_database, checks)

```ruby
begin
  # Create Checks
  data, status_code, headers = api_instance.create_checks_with_http_info(vbasoftware_database, checks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->create_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **checks** | [**Checks**](Checks.md) |  |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_withhold_check_batch

> <Int32VBAResponse> create_withhold_check_batch(vbasoftware_database, accounting_withhold_check_config)

Create Withhold Check Run

Takes Claims with a withhold amount and creates new claims to make payments for that withhold amount.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
accounting_withhold_check_config = Vba::AccountingWithholdCheckConfig.new # AccountingWithholdCheckConfig | 

begin
  # Create Withhold Check Run
  result = api_instance.create_withhold_check_batch(vbasoftware_database, accounting_withhold_check_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->create_withhold_check_batch: #{e}"
end
```

#### Using the create_withhold_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> create_withhold_check_batch_with_http_info(vbasoftware_database, accounting_withhold_check_config)

```ruby
begin
  # Create Withhold Check Run
  data, status_code, headers = api_instance.create_withhold_check_batch_with_http_info(vbasoftware_database, accounting_withhold_check_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->create_withhold_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **accounting_withhold_check_config** | [**AccountingWithholdCheckConfig**](AccountingWithholdCheckConfig.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_checks

> delete_checks(vbasoftware_database, check_id)

Delete Checks

Deletes an Checks

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID

begin
  # Delete Checks
  api_instance.delete_checks(vbasoftware_database, check_id)
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->delete_checks: #{e}"
end
```

#### Using the delete_checks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_checks_with_http_info(vbasoftware_database, check_id)

```ruby
begin
  # Delete Checks
  data, status_code, headers = api_instance.delete_checks_with_http_info(vbasoftware_database, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->delete_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_checks

> <ChecksVBAResponse> get_checks(vbasoftware_database, check_id)

Get Checks

Gets Checks

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID

begin
  # Get Checks
  result = api_instance.get_checks(vbasoftware_database, check_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->get_checks: #{e}"
end
```

#### Using the get_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> get_checks_with_http_info(vbasoftware_database, check_id)

```ruby
begin
  # Get Checks
  data, status_code, headers = api_instance.get_checks_with_http_info(vbasoftware_database, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->get_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_name_on_check

> <FundingNameOnCheckVBAResponse> get_name_on_check(vbasoftware_database, funding_name_on_check)

Get Name and Address Information

Using Send Check To and a dynamic Pay To ID, get the delivery information for a potential check.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_name_on_check = Vba::FundingNameOnCheck.new({send_check_to: 'send_check_to_example', pay_to_id: 'pay_to_id_example'}) # FundingNameOnCheck | 

begin
  # Get Name and Address Information
  result = api_instance.get_name_on_check(vbasoftware_database, funding_name_on_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->get_name_on_check: #{e}"
end
```

#### Using the get_name_on_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingNameOnCheckVBAResponse>, Integer, Hash)> get_name_on_check_with_http_info(vbasoftware_database, funding_name_on_check)

```ruby
begin
  # Get Name and Address Information
  data, status_code, headers = api_instance.get_name_on_check_with_http_info(vbasoftware_database, funding_name_on_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingNameOnCheckVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->get_name_on_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_name_on_check** | [**FundingNameOnCheck**](FundingNameOnCheck.md) |  |  |

### Return type

[**FundingNameOnCheckVBAResponse**](FundingNameOnCheckVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## list_checks

> <ChecksListVBAResponse> list_checks(vbasoftware_database, opts)

List Checks

Lists all Checks

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Checks
  result = api_instance.list_checks(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->list_checks: #{e}"
end
```

#### Using the list_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksListVBAResponse>, Integer, Hash)> list_checks_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Checks
  data, status_code, headers = api_instance.list_checks_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->list_checks_with_http_info: #{e}"
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

[**ChecksListVBAResponse**](ChecksListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## process_checks

> <Int32VBAResponse> process_checks(vbasoftware_database, funding_process_check)

Process Checks

Initiates the process of Check Processing. If the request is valid, the system will generate the necessary actions to process checks and respond with a success status code of 202 Accepted, along with the generated process key.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_process_check = Vba::FundingProcessCheck.new # FundingProcessCheck | 

begin
  # Process Checks
  result = api_instance.process_checks(vbasoftware_database, funding_process_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->process_checks: #{e}"
end
```

#### Using the process_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> process_checks_with_http_info(vbasoftware_database, funding_process_check)

```ruby
begin
  # Process Checks
  data, status_code, headers = api_instance.process_checks_with_http_info(vbasoftware_database, funding_process_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->process_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_process_check** | [**FundingProcessCheck**](FundingProcessCheck.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## undo_void_check

> <Int32VBAResponse> undo_void_check(vbasoftware_database, check_id)

Undo Void Check

Undo a previously voided check by Check ID.  Returns the VBAProcess Key for log review and verification.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID

begin
  # Undo Void Check
  result = api_instance.undo_void_check(vbasoftware_database, check_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->undo_void_check: #{e}"
end
```

#### Using the undo_void_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> undo_void_check_with_http_info(vbasoftware_database, check_id)

```ruby
begin
  # Undo Void Check
  data, status_code, headers = api_instance.undo_void_check_with_http_info(vbasoftware_database, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->undo_void_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_checks

> <MultiCodeResponseListVBAResponse> update_batch_checks(vbasoftware_database, checks)

Create or Update Batch Checks

Create or Update multiple Checks at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
checks = [Vba::Checks.new({check_id: 37, generated_835: false})] # Array<Checks> | 

begin
  # Create or Update Batch Checks
  result = api_instance.update_batch_checks(vbasoftware_database, checks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->update_batch_checks: #{e}"
end
```

#### Using the update_batch_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_checks_with_http_info(vbasoftware_database, checks)

```ruby
begin
  # Create or Update Batch Checks
  data, status_code, headers = api_instance.update_batch_checks_with_http_info(vbasoftware_database, checks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->update_batch_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **checks** | [**Array&lt;Checks&gt;**](Checks.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_checks

> <ChecksVBAResponse> update_checks(vbasoftware_database, check_id, checks)

Update Checks

Updates a specific Checks.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
checks = Vba::Checks.new({check_id: 37, generated_835: false}) # Checks | 

begin
  # Update Checks
  result = api_instance.update_checks(vbasoftware_database, check_id, checks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->update_checks: #{e}"
end
```

#### Using the update_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> update_checks_with_http_info(vbasoftware_database, check_id, checks)

```ruby
begin
  # Update Checks
  data, status_code, headers = api_instance.update_checks_with_http_info(vbasoftware_database, check_id, checks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->update_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **checks** | [**Checks**](Checks.md) |  |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## void_check

> <ChecksVBAResponse> void_check(vbasoftware_database, check_id, funding_void_check)

Void Check

Voids an existing Check

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
funding_void_check = Vba::FundingVoidCheck.new # FundingVoidCheck | 

begin
  # Void Check
  result = api_instance.void_check(vbasoftware_database, check_id, funding_void_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->void_check: #{e}"
end
```

#### Using the void_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> void_check_with_http_info(vbasoftware_database, check_id, funding_void_check)

```ruby
begin
  # Void Check
  data, status_code, headers = api_instance.void_check_with_http_info(vbasoftware_database, check_id, funding_void_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->void_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **funding_void_check** | [**FundingVoidCheck**](FundingVoidCheck.md) |  |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## void_distribution_check

> <ChecksVBAResponse> void_distribution_check(vbasoftware_database, check_id)

Void Premium Distribution Check

Voids a Premium Distribution Check by Check ID and all associated distribution records.

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

api_instance = Vba::ChecksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID

begin
  # Void Premium Distribution Check
  result = api_instance.void_distribution_check(vbasoftware_database, check_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->void_distribution_check: #{e}"
end
```

#### Using the void_distribution_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> void_distribution_check_with_http_info(vbasoftware_database, check_id)

```ruby
begin
  # Void Premium Distribution Check
  data, status_code, headers = api_instance.void_distribution_check_with_http_info(vbasoftware_database, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChecksApi->void_distribution_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

