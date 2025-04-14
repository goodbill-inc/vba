# Vba::ReinsuranceContractTemplatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_template**](ReinsuranceContractTemplatesApi.md#create_reins_contract_template) | **POST** /reinsurance-contracts/{contractKey}/templates | Create ReinsContractTemplate |
| [**delete_reins_contract_template**](ReinsuranceContractTemplatesApi.md#delete_reins_contract_template) | **DELETE** /reinsurance-contracts/{contractKey}/templates/{templateContractKey} | Delete ReinsContractTemplate |
| [**get_reins_contract_template**](ReinsuranceContractTemplatesApi.md#get_reins_contract_template) | **GET** /reinsurance-contracts/{contractKey}/templates/{templateContractKey} | Get ReinsContractTemplate |
| [**list_reins_contract_template**](ReinsuranceContractTemplatesApi.md#list_reins_contract_template) | **GET** /reinsurance-contracts/{contractKey}/templates | List ReinsContractTemplate |
| [**update_batch_reins_contract_template**](ReinsuranceContractTemplatesApi.md#update_batch_reins_contract_template) | **PUT** /reinsurance-contracts/{contractKey}/templates-batch | Create Batch ReinsContractTemplate |


## create_reins_contract_template

> <ReinsContractTemplateVBAResponse> create_reins_contract_template(vbasoftware_database, contract_key, reins_contract_template)

Create ReinsContractTemplate

Creates a new ReinsContractTemplate

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

api_instance = Vba::ReinsuranceContractTemplatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_key = 56 # Integer | Contract Key
reins_contract_template = Vba::ReinsContractTemplate.new({template_contract_key: 37, contract_key: 37}) # ReinsContractTemplate | 

begin
  # Create ReinsContractTemplate
  result = api_instance.create_reins_contract_template(vbasoftware_database, contract_key, reins_contract_template)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->create_reins_contract_template: #{e}"
end
```

#### Using the create_reins_contract_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTemplateVBAResponse>, Integer, Hash)> create_reins_contract_template_with_http_info(vbasoftware_database, contract_key, reins_contract_template)

```ruby
begin
  # Create ReinsContractTemplate
  data, status_code, headers = api_instance.create_reins_contract_template_with_http_info(vbasoftware_database, contract_key, reins_contract_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTemplateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->create_reins_contract_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_key** | **Integer** | Contract Key |  |
| **reins_contract_template** | [**ReinsContractTemplate**](ReinsContractTemplate.md) |  |  |

### Return type

[**ReinsContractTemplateVBAResponse**](ReinsContractTemplateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_template

> delete_reins_contract_template(vbasoftware_database, contract_key, template_contract_key)

Delete ReinsContractTemplate

Deletes an ReinsContractTemplate

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

api_instance = Vba::ReinsuranceContractTemplatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_key = 56 # Integer | Contract Key
template_contract_key = 56 # Integer | TemplateContract Key

begin
  # Delete ReinsContractTemplate
  api_instance.delete_reins_contract_template(vbasoftware_database, contract_key, template_contract_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->delete_reins_contract_template: #{e}"
end
```

#### Using the delete_reins_contract_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_template_with_http_info(vbasoftware_database, contract_key, template_contract_key)

```ruby
begin
  # Delete ReinsContractTemplate
  data, status_code, headers = api_instance.delete_reins_contract_template_with_http_info(vbasoftware_database, contract_key, template_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->delete_reins_contract_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_key** | **Integer** | Contract Key |  |
| **template_contract_key** | **Integer** | TemplateContract Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_template

> <ReinsContractTemplateVBAResponse> get_reins_contract_template(vbasoftware_database, contract_key, template_contract_key)

Get ReinsContractTemplate

Gets ReinsContractTemplate

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

api_instance = Vba::ReinsuranceContractTemplatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_key = 56 # Integer | Contract Key
template_contract_key = 56 # Integer | TemplateContract Key

begin
  # Get ReinsContractTemplate
  result = api_instance.get_reins_contract_template(vbasoftware_database, contract_key, template_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->get_reins_contract_template: #{e}"
end
```

#### Using the get_reins_contract_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTemplateVBAResponse>, Integer, Hash)> get_reins_contract_template_with_http_info(vbasoftware_database, contract_key, template_contract_key)

```ruby
begin
  # Get ReinsContractTemplate
  data, status_code, headers = api_instance.get_reins_contract_template_with_http_info(vbasoftware_database, contract_key, template_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTemplateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->get_reins_contract_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_key** | **Integer** | Contract Key |  |
| **template_contract_key** | **Integer** | TemplateContract Key |  |

### Return type

[**ReinsContractTemplateVBAResponse**](ReinsContractTemplateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_template

> <ReinsContractTemplateListVBAResponse> list_reins_contract_template(vbasoftware_database, contract_key, opts)

List ReinsContractTemplate

Lists all ReinsContractTemplate for the given contractKey

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

api_instance = Vba::ReinsuranceContractTemplatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_key = 56 # Integer | Contract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTemplate
  result = api_instance.list_reins_contract_template(vbasoftware_database, contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->list_reins_contract_template: #{e}"
end
```

#### Using the list_reins_contract_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTemplateListVBAResponse>, Integer, Hash)> list_reins_contract_template_with_http_info(vbasoftware_database, contract_key, opts)

```ruby
begin
  # List ReinsContractTemplate
  data, status_code, headers = api_instance.list_reins_contract_template_with_http_info(vbasoftware_database, contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTemplateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->list_reins_contract_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_key** | **Integer** | Contract Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractTemplateListVBAResponse**](ReinsContractTemplateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_template

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_template(vbasoftware_database, contract_key, reins_contract_template)

Create Batch ReinsContractTemplate

Create multiple ReinsContractTemplate at once.  If the entity exists, an error message will be returned for the item.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTemplatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_key = 56 # Integer | Contract Key
reins_contract_template = [Vba::ReinsContractTemplate.new({template_contract_key: 37, contract_key: 37})] # Array<ReinsContractTemplate> | 

begin
  # Create Batch ReinsContractTemplate
  result = api_instance.update_batch_reins_contract_template(vbasoftware_database, contract_key, reins_contract_template)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->update_batch_reins_contract_template: #{e}"
end
```

#### Using the update_batch_reins_contract_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_template_with_http_info(vbasoftware_database, contract_key, reins_contract_template)

```ruby
begin
  # Create Batch ReinsContractTemplate
  data, status_code, headers = api_instance.update_batch_reins_contract_template_with_http_info(vbasoftware_database, contract_key, reins_contract_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTemplatesApi->update_batch_reins_contract_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_key** | **Integer** | Contract Key |  |
| **reins_contract_template** | [**Array&lt;ReinsContractTemplate&gt;**](ReinsContractTemplate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

