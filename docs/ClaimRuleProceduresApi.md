# Vba::ClaimRuleProceduresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_procedure**](ClaimRuleProceduresApi.md#create_claim_rule_procedure) | **POST** /claim-rules/{claimRuleKey}/procedures | Create ClaimRuleProcedure |
| [**delete_claim_rule_procedure**](ClaimRuleProceduresApi.md#delete_claim_rule_procedure) | **DELETE** /claim-rules/{claimRuleKey}/procedures/{fromProcedure} | Delete ClaimRuleProcedure |
| [**get_claim_rule_procedure**](ClaimRuleProceduresApi.md#get_claim_rule_procedure) | **GET** /claim-rules/{claimRuleKey}/procedures/{fromProcedure} | Get ClaimRuleProcedure |
| [**list_claim_rule_procedure**](ClaimRuleProceduresApi.md#list_claim_rule_procedure) | **GET** /claim-rules/{claimRuleKey}/procedures | List ClaimRuleProcedure |
| [**update_batch_claim_rule_procedure**](ClaimRuleProceduresApi.md#update_batch_claim_rule_procedure) | **PUT** /claim-rules/{claimRuleKey}/procedures-batch | Create or Update Batch ClaimRuleProcedure |
| [**update_claim_rule_procedure**](ClaimRuleProceduresApi.md#update_claim_rule_procedure) | **PUT** /claim-rules/{claimRuleKey}/procedures/{fromProcedure} | Update ClaimRuleProcedure |


## create_claim_rule_procedure

> <ClaimRuleProcedureVBAResponse> create_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure)

Create ClaimRuleProcedure

Creates a new ClaimRuleProcedure

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_procedure = Vba::ClaimRuleProcedure.new({claim_rule_key: 37, from_procedure: 'from_procedure_example', exclude: false, thru_procedure: 'thru_procedure_example'}) # ClaimRuleProcedure | 

begin
  # Create ClaimRuleProcedure
  result = api_instance.create_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->create_claim_rule_procedure: #{e}"
end
```

#### Using the create_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProcedureVBAResponse>, Integer, Hash)> create_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure)

```ruby
begin
  # Create ClaimRuleProcedure
  data, status_code, headers = api_instance.create_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->create_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_procedure** | [**ClaimRuleProcedure**](ClaimRuleProcedure.md) |  |  |

### Return type

[**ClaimRuleProcedureVBAResponse**](ClaimRuleProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_procedure

> delete_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure)

Delete ClaimRuleProcedure

Deletes an ClaimRuleProcedure

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Delete ClaimRuleProcedure
  api_instance.delete_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->delete_claim_rule_procedure: #{e}"
end
```

#### Using the delete_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure)

```ruby
begin
  # Delete ClaimRuleProcedure
  data, status_code, headers = api_instance.delete_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->delete_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_procedure

> <ClaimRuleProcedureVBAResponse> get_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure)

Get ClaimRuleProcedure

Gets ClaimRuleProcedure

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Get ClaimRuleProcedure
  result = api_instance.get_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->get_claim_rule_procedure: #{e}"
end
```

#### Using the get_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProcedureVBAResponse>, Integer, Hash)> get_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure)

```ruby
begin
  # Get ClaimRuleProcedure
  data, status_code, headers = api_instance.get_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->get_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

[**ClaimRuleProcedureVBAResponse**](ClaimRuleProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_procedure

> <ClaimRuleProcedureListVBAResponse> list_claim_rule_procedure(vbasoftware_database, claim_rule_key, opts)

List ClaimRuleProcedure

Lists all ClaimRuleProcedure for the given claimRuleKey

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleProcedure
  result = api_instance.list_claim_rule_procedure(vbasoftware_database, claim_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->list_claim_rule_procedure: #{e}"
end
```

#### Using the list_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProcedureListVBAResponse>, Integer, Hash)> list_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, opts)

```ruby
begin
  # List ClaimRuleProcedure
  data, status_code, headers = api_instance.list_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->list_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimRuleProcedureListVBAResponse**](ClaimRuleProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_procedure

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure)

Create or Update Batch ClaimRuleProcedure

Create or Update multiple ClaimRuleProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_procedure = [Vba::ClaimRuleProcedure.new({claim_rule_key: 37, from_procedure: 'from_procedure_example', exclude: false, thru_procedure: 'thru_procedure_example'})] # Array<ClaimRuleProcedure> | 

begin
  # Create or Update Batch ClaimRuleProcedure
  result = api_instance.update_batch_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->update_batch_claim_rule_procedure: #{e}"
end
```

#### Using the update_batch_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure)

```ruby
begin
  # Create or Update Batch ClaimRuleProcedure
  data, status_code, headers = api_instance.update_batch_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->update_batch_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_procedure** | [**Array&lt;ClaimRuleProcedure&gt;**](ClaimRuleProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule_procedure

> <ClaimRuleProcedureVBAResponse> update_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure)

Update ClaimRuleProcedure

Updates a specific ClaimRuleProcedure.

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

api_instance = Vba::ClaimRuleProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
from_procedure = 'from_procedure_example' # String | From Procedure
claim_rule_procedure = Vba::ClaimRuleProcedure.new({claim_rule_key: 37, from_procedure: 'from_procedure_example', exclude: false, thru_procedure: 'thru_procedure_example'}) # ClaimRuleProcedure | 

begin
  # Update ClaimRuleProcedure
  result = api_instance.update_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->update_claim_rule_procedure: #{e}"
end
```

#### Using the update_claim_rule_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProcedureVBAResponse>, Integer, Hash)> update_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure)

```ruby
begin
  # Update ClaimRuleProcedure
  data, status_code, headers = api_instance.update_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProceduresApi->update_claim_rule_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **from_procedure** | **String** | From Procedure |  |
| **claim_rule_procedure** | [**ClaimRuleProcedure**](ClaimRuleProcedure.md) |  |  |

### Return type

[**ClaimRuleProcedureVBAResponse**](ClaimRuleProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

