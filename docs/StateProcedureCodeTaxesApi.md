# Vba::StateProcedureCodeTaxesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#create_state_procedure_code_tax) | **POST** /state-procedure-code-taxes | Create StateProcedureCodeTax |
| [**delete_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#delete_state_procedure_code_tax) | **DELETE** /state-procedure-code-taxes/{state}/{procedureCode} | Delete StateProcedureCodeTax |
| [**get_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#get_state_procedure_code_tax) | **GET** /state-procedure-code-taxes/{state}/{procedureCode} | Get StateProcedureCodeTax |
| [**list_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#list_state_procedure_code_tax) | **GET** /state-procedure-code-taxes | List StateProcedureCodeTax |
| [**update_batch_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#update_batch_state_procedure_code_tax) | **PUT** /state-procedure-code-taxes-batch | Create or Update Batch StateProcedureCodeTax |
| [**update_state_procedure_code_tax**](StateProcedureCodeTaxesApi.md#update_state_procedure_code_tax) | **PUT** /state-procedure-code-taxes/{state}/{procedureCode} | Update StateProcedureCodeTax |


## create_state_procedure_code_tax

> <StateProcedureCodeTaxVBAResponse> create_state_procedure_code_tax(vbasoftware_database, state_procedure_code_tax)

Create StateProcedureCodeTax

Creates a new StateProcedureCodeTax

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_procedure_code_tax = Vba::StateProcedureCodeTax.new({state: 'state_example', procedure_code: 'procedure_code_example', apply_state_tax: false, below_limit_flag: false, default_percentage_election: 3.56, non_taxable_limit: 3.56, use_percentage_election: false}) # StateProcedureCodeTax | 

begin
  # Create StateProcedureCodeTax
  result = api_instance.create_state_procedure_code_tax(vbasoftware_database, state_procedure_code_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->create_state_procedure_code_tax: #{e}"
end
```

#### Using the create_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateProcedureCodeTaxVBAResponse>, Integer, Hash)> create_state_procedure_code_tax_with_http_info(vbasoftware_database, state_procedure_code_tax)

```ruby
begin
  # Create StateProcedureCodeTax
  data, status_code, headers = api_instance.create_state_procedure_code_tax_with_http_info(vbasoftware_database, state_procedure_code_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateProcedureCodeTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->create_state_procedure_code_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_procedure_code_tax** | [**StateProcedureCodeTax**](StateProcedureCodeTax.md) |  |  |

### Return type

[**StateProcedureCodeTaxVBAResponse**](StateProcedureCodeTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_state_procedure_code_tax

> delete_state_procedure_code_tax(vbasoftware_database, state, procedure_code)

Delete StateProcedureCodeTax

Deletes an StateProcedureCodeTax

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state = 'state_example' # String | State
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Delete StateProcedureCodeTax
  api_instance.delete_state_procedure_code_tax(vbasoftware_database, state, procedure_code)
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->delete_state_procedure_code_tax: #{e}"
end
```

#### Using the delete_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code)

```ruby
begin
  # Delete StateProcedureCodeTax
  data, status_code, headers = api_instance.delete_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->delete_state_procedure_code_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state** | **String** | State |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_state_procedure_code_tax

> <StateProcedureCodeTaxVBAResponse> get_state_procedure_code_tax(vbasoftware_database, state, procedure_code)

Get StateProcedureCodeTax

Gets StateProcedureCodeTax

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state = 'state_example' # String | State
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Get StateProcedureCodeTax
  result = api_instance.get_state_procedure_code_tax(vbasoftware_database, state, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->get_state_procedure_code_tax: #{e}"
end
```

#### Using the get_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateProcedureCodeTaxVBAResponse>, Integer, Hash)> get_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code)

```ruby
begin
  # Get StateProcedureCodeTax
  data, status_code, headers = api_instance.get_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateProcedureCodeTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->get_state_procedure_code_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state** | **String** | State |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

[**StateProcedureCodeTaxVBAResponse**](StateProcedureCodeTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_state_procedure_code_tax

> <StateProcedureCodeTaxListVBAResponse> list_state_procedure_code_tax(vbasoftware_database, opts)

List StateProcedureCodeTax

Lists all StateProcedureCodeTax

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List StateProcedureCodeTax
  result = api_instance.list_state_procedure_code_tax(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->list_state_procedure_code_tax: #{e}"
end
```

#### Using the list_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateProcedureCodeTaxListVBAResponse>, Integer, Hash)> list_state_procedure_code_tax_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List StateProcedureCodeTax
  data, status_code, headers = api_instance.list_state_procedure_code_tax_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateProcedureCodeTaxListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->list_state_procedure_code_tax_with_http_info: #{e}"
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

[**StateProcedureCodeTaxListVBAResponse**](StateProcedureCodeTaxListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_state_procedure_code_tax

> <MultiCodeResponseListVBAResponse> update_batch_state_procedure_code_tax(vbasoftware_database, state_procedure_code_tax)

Create or Update Batch StateProcedureCodeTax

Create or Update multiple StateProcedureCodeTax at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_procedure_code_tax = [Vba::StateProcedureCodeTax.new({state: 'state_example', procedure_code: 'procedure_code_example', apply_state_tax: false, below_limit_flag: false, default_percentage_election: 3.56, non_taxable_limit: 3.56, use_percentage_election: false})] # Array<StateProcedureCodeTax> | 

begin
  # Create or Update Batch StateProcedureCodeTax
  result = api_instance.update_batch_state_procedure_code_tax(vbasoftware_database, state_procedure_code_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->update_batch_state_procedure_code_tax: #{e}"
end
```

#### Using the update_batch_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_state_procedure_code_tax_with_http_info(vbasoftware_database, state_procedure_code_tax)

```ruby
begin
  # Create or Update Batch StateProcedureCodeTax
  data, status_code, headers = api_instance.update_batch_state_procedure_code_tax_with_http_info(vbasoftware_database, state_procedure_code_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->update_batch_state_procedure_code_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_procedure_code_tax** | [**Array&lt;StateProcedureCodeTax&gt;**](StateProcedureCodeTax.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_state_procedure_code_tax

> <StateProcedureCodeTaxVBAResponse> update_state_procedure_code_tax(vbasoftware_database, state, procedure_code, state_procedure_code_tax)

Update StateProcedureCodeTax

Updates a specific StateProcedureCodeTax.

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

api_instance = Vba::StateProcedureCodeTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state = 'state_example' # String | State
procedure_code = 'procedure_code_example' # String | Procedure Code
state_procedure_code_tax = Vba::StateProcedureCodeTax.new({state: 'state_example', procedure_code: 'procedure_code_example', apply_state_tax: false, below_limit_flag: false, default_percentage_election: 3.56, non_taxable_limit: 3.56, use_percentage_election: false}) # StateProcedureCodeTax | 

begin
  # Update StateProcedureCodeTax
  result = api_instance.update_state_procedure_code_tax(vbasoftware_database, state, procedure_code, state_procedure_code_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->update_state_procedure_code_tax: #{e}"
end
```

#### Using the update_state_procedure_code_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateProcedureCodeTaxVBAResponse>, Integer, Hash)> update_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code, state_procedure_code_tax)

```ruby
begin
  # Update StateProcedureCodeTax
  data, status_code, headers = api_instance.update_state_procedure_code_tax_with_http_info(vbasoftware_database, state, procedure_code, state_procedure_code_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateProcedureCodeTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateProcedureCodeTaxesApi->update_state_procedure_code_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state** | **String** | State |  |
| **procedure_code** | **String** | Procedure Code |  |
| **state_procedure_code_tax** | [**StateProcedureCodeTax**](StateProcedureCodeTax.md) |  |  |

### Return type

[**StateProcedureCodeTaxVBAResponse**](StateProcedureCodeTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

