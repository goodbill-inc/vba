# Vba::CapitationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capitation_generate**](CapitationsApi.md#capitation_generate) | **POST** /capitation-generate | Capitation Generate |
| [**capitation_generate_assign**](CapitationsApi.md#capitation_generate_assign) | **POST** /capitation-generate-assign | Capitation Generate Assign |
| [**capitation_generate_set_unassigned**](CapitationsApi.md#capitation_generate_set_unassigned) | **POST** /capitation-generate-set-unassigned | Capitation Generate Set Unassigned |
| [**create_capitation**](CapitationsApi.md#create_capitation) | **POST** /capitation-transactions/{capitationTransactionKey}/capitations | Create Capitation |
| [**delete_capitation**](CapitationsApi.md#delete_capitation) | **DELETE** /capitation-transactions/{capitationTransactionKey}/capitations/{capitationKey} | Delete Capitation |
| [**get_capitation**](CapitationsApi.md#get_capitation) | **GET** /capitation-transactions/{capitationTransactionKey}/capitations/{capitationKey} | Get Capitation |
| [**list_capitation**](CapitationsApi.md#list_capitation) | **GET** /capitation-transactions/{capitationTransactionKey}/capitations | List Capitation |
| [**list_unassigned_capitation**](CapitationsApi.md#list_unassigned_capitation) | **GET** /unassigned-capitations | List Unassigned Capitation |
| [**update_batch_capitation**](CapitationsApi.md#update_batch_capitation) | **PUT** /capitation-transactions/{capitationTransactionKey}/capitations-batch | Create or Update Batch Capitation |
| [**update_capitation**](CapitationsApi.md#update_capitation) | **PUT** /capitation-transactions/{capitationTransactionKey}/capitations/{capitationKey} | Update Capitation |


## capitation_generate

> capitation_generate(vbasoftware_database, capitation_generate)

Capitation Generate

Generates Capitation records and attaches those to a new Capitation Transaction based on entered criteria.

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate
  api_instance.capitation_generate(vbasoftware_database, capitation_generate)
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate: #{e}"
end
```

#### Using the capitation_generate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capitation_generate_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate
  data, status_code, headers = api_instance.capitation_generate_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## capitation_generate_assign

> <CapitationTransactionVBAResponse> capitation_generate_assign(vbasoftware_database, capitation_generate)

Capitation Generate Assign

Takes selected unassigned list of CapitationKeys and a valid Payee, and attaches them to a newly created Capitation Transaction.

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate Assign
  result = api_instance.capitation_generate_assign(vbasoftware_database, capitation_generate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate_assign: #{e}"
end
```

#### Using the capitation_generate_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionVBAResponse>, Integer, Hash)> capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate Assign
  data, status_code, headers = api_instance.capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

[**CapitationTransactionVBAResponse**](CapitationTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## capitation_generate_set_unassigned

> capitation_generate_set_unassigned(vbasoftware_database, capitation_generate)

Capitation Generate Set Unassigned

Takes existing unassigned capitation records and attaches them to the chosen Provider on a newly created Capitation Transaction.

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate Set Unassigned
  api_instance.capitation_generate_set_unassigned(vbasoftware_database, capitation_generate)
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate_set_unassigned: #{e}"
end
```

#### Using the capitation_generate_set_unassigned_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate Set Unassigned
  data, status_code, headers = api_instance.capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->capitation_generate_set_unassigned_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_capitation

> <CapitationVBAResponse> create_capitation(vbasoftware_database, capitation_transaction_key, capitation)

Create Capitation

Creates a new Capitation

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation = Vba::Capitation.new({capitation_key: 37}) # Capitation | 

begin
  # Create Capitation
  result = api_instance.create_capitation(vbasoftware_database, capitation_transaction_key, capitation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->create_capitation: #{e}"
end
```

#### Using the create_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationVBAResponse>, Integer, Hash)> create_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation)

```ruby
begin
  # Create Capitation
  data, status_code, headers = api_instance.create_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->create_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation** | [**Capitation**](Capitation.md) |  |  |

### Return type

[**CapitationVBAResponse**](CapitationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation

> delete_capitation(vbasoftware_database, capitation_transaction_key, capitation_key)

Delete Capitation

Deletes an Capitation

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation_key = 56 # Integer | Capitation Key

begin
  # Delete Capitation
  api_instance.delete_capitation(vbasoftware_database, capitation_transaction_key, capitation_key)
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->delete_capitation: #{e}"
end
```

#### Using the delete_capitation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key)

```ruby
begin
  # Delete Capitation
  data, status_code, headers = api_instance.delete_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->delete_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation_key** | **Integer** | Capitation Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation

> <CapitationVBAResponse> get_capitation(vbasoftware_database, capitation_transaction_key, capitation_key)

Get Capitation

Gets Capitation

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation_key = 56 # Integer | Capitation Key

begin
  # Get Capitation
  result = api_instance.get_capitation(vbasoftware_database, capitation_transaction_key, capitation_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->get_capitation: #{e}"
end
```

#### Using the get_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationVBAResponse>, Integer, Hash)> get_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key)

```ruby
begin
  # Get Capitation
  data, status_code, headers = api_instance.get_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->get_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation_key** | **Integer** | Capitation Key |  |

### Return type

[**CapitationVBAResponse**](CapitationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation

> <CapitationListVBAResponse> list_capitation(vbasoftware_database, capitation_transaction_key, opts)

List Capitation

Lists all Capitation for the given capitationTransactionKey

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Capitation
  result = api_instance.list_capitation(vbasoftware_database, capitation_transaction_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->list_capitation: #{e}"
end
```

#### Using the list_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationListVBAResponse>, Integer, Hash)> list_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, opts)

```ruby
begin
  # List Capitation
  data, status_code, headers = api_instance.list_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->list_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationListVBAResponse**](CapitationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_unassigned_capitation

> <CapitationListVBAResponse> list_unassigned_capitation(vbasoftware_database, opts)

List Unassigned Capitation

Lists all Capitation that is currently not assigned to a Capitation Transaction

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Unassigned Capitation
  result = api_instance.list_unassigned_capitation(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->list_unassigned_capitation: #{e}"
end
```

#### Using the list_unassigned_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationListVBAResponse>, Integer, Hash)> list_unassigned_capitation_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Unassigned Capitation
  data, status_code, headers = api_instance.list_unassigned_capitation_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->list_unassigned_capitation_with_http_info: #{e}"
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

[**CapitationListVBAResponse**](CapitationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation

> <MultiCodeResponseListVBAResponse> update_batch_capitation(vbasoftware_database, capitation_transaction_key, capitation)

Create or Update Batch Capitation

Create or Update multiple Capitation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation = [Vba::Capitation.new({capitation_key: 37})] # Array<Capitation> | 

begin
  # Create or Update Batch Capitation
  result = api_instance.update_batch_capitation(vbasoftware_database, capitation_transaction_key, capitation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->update_batch_capitation: #{e}"
end
```

#### Using the update_batch_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation)

```ruby
begin
  # Create or Update Batch Capitation
  data, status_code, headers = api_instance.update_batch_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->update_batch_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation** | [**Array&lt;Capitation&gt;**](Capitation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation

> <CapitationVBAResponse> update_capitation(vbasoftware_database, capitation_transaction_key, capitation_key, capitation)

Update Capitation

Updates a specific Capitation.

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

api_instance = Vba::CapitationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation_key = 56 # Integer | Capitation Key
capitation = Vba::Capitation.new({capitation_key: 37}) # Capitation | 

begin
  # Update Capitation
  result = api_instance.update_capitation(vbasoftware_database, capitation_transaction_key, capitation_key, capitation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->update_capitation: #{e}"
end
```

#### Using the update_capitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationVBAResponse>, Integer, Hash)> update_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key, capitation)

```ruby
begin
  # Update Capitation
  data, status_code, headers = api_instance.update_capitation_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_key, capitation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationsApi->update_capitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation_key** | **Integer** | Capitation Key |  |
| **capitation** | [**Capitation**](Capitation.md) |  |  |

### Return type

[**CapitationVBAResponse**](CapitationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

