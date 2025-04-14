# Vba::IDCodeValuesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_code_value**](IDCodeValuesApi.md#create_id_code_value) | **POST** /id-types/{type}/id-codes/{idCode}/id-code-values | Create IDCodeValue |
| [**delete_id_code_value**](IDCodeValuesApi.md#delete_id_code_value) | **DELETE** /id-types/{type}/id-codes/{idCode}/id-code-values/{idCodeValueKey} | Delete IDCodeValue |
| [**get_id_code_value**](IDCodeValuesApi.md#get_id_code_value) | **GET** /id-types/{type}/id-codes/{idCode}/id-code-values/{idCodeValueKey} | Get IDCodeValue |
| [**list_id_code_value**](IDCodeValuesApi.md#list_id_code_value) | **GET** /id-types/{type}/id-codes/{idCode}/id-code-values | List IDCodeValue |
| [**list_id_code_value_by_source**](IDCodeValuesApi.md#list_id_code_value_by_source) | **GET** /id-code-values-by-source | List IDCodeValue based on Source |
| [**update_batch_id_code_value**](IDCodeValuesApi.md#update_batch_id_code_value) | **PUT** /id-types/{type}/id-codes/{idCode}/id-code-values-batch | Create or Update Batch IDCodeValue |
| [**update_id_code_value**](IDCodeValuesApi.md#update_id_code_value) | **PUT** /id-types/{type}/id-codes/{idCode}/id-code-values/{idCodeValueKey} | Update IDCodeValue |


## create_id_code_value

> <IDCodeValueVBAResponse> create_id_code_value(vbasoftware_database, type, id_code, id_code_value)

Create IDCodeValue

Creates a new IDCodeValue

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_value = Vba::IDCodeValue.new({id_code_value_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'}) # IDCodeValue | 

begin
  # Create IDCodeValue
  result = api_instance.create_id_code_value(vbasoftware_database, type, id_code, id_code_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->create_id_code_value: #{e}"
end
```

#### Using the create_id_code_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeValueVBAResponse>, Integer, Hash)> create_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value)

```ruby
begin
  # Create IDCodeValue
  data, status_code, headers = api_instance.create_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->create_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_value** | [**IDCodeValue**](IDCodeValue.md) |  |  |

### Return type

[**IDCodeValueVBAResponse**](IDCodeValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_id_code_value

> delete_id_code_value(vbasoftware_database, type, id_code, id_code_value_key)

Delete IDCodeValue

Deletes an IDCodeValue

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_value_key = 56 # Integer | IDCodeValue Key

begin
  # Delete IDCodeValue
  api_instance.delete_id_code_value(vbasoftware_database, type, id_code, id_code_value_key)
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->delete_id_code_value: #{e}"
end
```

#### Using the delete_id_code_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key)

```ruby
begin
  # Delete IDCodeValue
  data, status_code, headers = api_instance.delete_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->delete_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_value_key** | **Integer** | IDCodeValue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_id_code_value

> <IDCodeValueVBAResponse> get_id_code_value(vbasoftware_database, type, id_code, id_code_value_key)

Get IDCodeValue

Gets IDCodeValue

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_value_key = 56 # Integer | IDCodeValue Key

begin
  # Get IDCodeValue
  result = api_instance.get_id_code_value(vbasoftware_database, type, id_code, id_code_value_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->get_id_code_value: #{e}"
end
```

#### Using the get_id_code_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeValueVBAResponse>, Integer, Hash)> get_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key)

```ruby
begin
  # Get IDCodeValue
  data, status_code, headers = api_instance.get_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->get_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_value_key** | **Integer** | IDCodeValue Key |  |

### Return type

[**IDCodeValueVBAResponse**](IDCodeValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_id_code_value

> <IDCodeValueListVBAResponse> list_id_code_value(vbasoftware_database, type, id_code, opts)

List IDCodeValue

Lists all IDCodeValue for the given type and idCode

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IDCodeValue
  result = api_instance.list_id_code_value(vbasoftware_database, type, id_code, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->list_id_code_value: #{e}"
end
```

#### Using the list_id_code_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeValueListVBAResponse>, Integer, Hash)> list_id_code_value_with_http_info(vbasoftware_database, type, id_code, opts)

```ruby
begin
  # List IDCodeValue
  data, status_code, headers = api_instance.list_id_code_value_with_http_info(vbasoftware_database, type, id_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeValueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->list_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**IDCodeValueListVBAResponse**](IDCodeValueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_id_code_value_by_source

> <IDCodeValueResultBySourceListVBAResponse> list_id_code_value_by_source(vbasoftware_database, type, column_name1, key_value1, opts)

List IDCodeValue based on Source

Lists all IDCodeValue for the given type and specific source               Based on IDCodeType we will return different values.                 AUTH                @SourceColumn1 = auth_number                 BENEFIT                @SourceColumn1 = benefit_code                 CAREPLAN                @SourceColumn1 = case_key                 CARRIER                @SourceColumn1 = carrier_key                 CASE                @SourceColumn1 = case_key                 CLAIM                @SourceColumn1 = batch_number                @SourceColumn2 = batch_claim                 CLMBTCH                @SourceColumn1 = batch_number                 COMMAGENCY                @SourceColumn1 = commissionagency_key                 COMMREP                @SourceColumn1 = commissionrep_key                 COMPANYDATA                @SourceColumn1 = key_value                 CONTRACTRIDER                @SourceColumn1 = group_id                @SourceColumn2 = division_id                @SourceColumn3 = coverage_start                @SourceColumn4 = plan_id                @SourceColumn5 = benefit_code                 CREDQUESTION                @SourceColumn1 = credattestationquestion_key                 DISREASON                @SourceColumn1 = reason_id                 FUNDINGACCOUNT                @SourceColumn1 = account_key                 GRIEV                @SourceColumn1 = grievance_key                 GROUP                @SourceColumn1 = group_id                 GROUPDIVISION                @SourceColumn1 = group_id                @SourceColumn1 = division_id                 GROUPNETWORK                @SourceColumn1 = group_id                @SourceColumn2 = division_id                @SourceColumn3 = coverage_start                @SourceColumn4 = networkid                 GROUPPLAN                @SourceColumn1 = group_id                @SourceColumn2 = division_id                @SourceColumn3 = plan_id                 INTRFACE                @SourceColumn1 = vbainterface_key                 MEMBER                @SourceColumn1 = subscriber_id                @SourceColumn2 = member_seq                 NETWORK                @SourceColumn1 = networkid                 PAYEE                @SourceColumn1 = payee_id                 PAYOR                @SourceColumn1 = payor_id                 PLAN                @SourceColumn1 = plan_id                 PROV                @SourceColumn1 = provider_id                 PROVCRED                @SourceColumn1 = providercred_key                 REINS                @SourceColumn1 = reinscontract_key                 SUBSCRIBER                @SourceColumn1 = subscriber_id                 USER                @SourceColumn1 = user_id                  

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
column_name1 = 'column_name1_example' # String | Column_Name1
key_value1 = 'key_value1_example' # String | Key_Value1
opts = {
  column_name2: 'column_name2_example', # String | Column_Name2
  key_value2: 'key_value2_example', # String | Key_Value2
  column_name3: 'column_name3_example', # String | Column_Name3
  key_value3: 'key_value3_example', # String | Key_Value3
  column_name4: 'column_name4_example', # String | Column_Name4
  key_value4: 'key_value4_example', # String | Key_Value4
  column_name5: 'column_name5_example', # String | Column_Name5
  key_value5: 'key_value5_example' # String | Key_Value5
}

begin
  # List IDCodeValue based on Source
  result = api_instance.list_id_code_value_by_source(vbasoftware_database, type, column_name1, key_value1, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->list_id_code_value_by_source: #{e}"
end
```

#### Using the list_id_code_value_by_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeValueResultBySourceListVBAResponse>, Integer, Hash)> list_id_code_value_by_source_with_http_info(vbasoftware_database, type, column_name1, key_value1, opts)

```ruby
begin
  # List IDCodeValue based on Source
  data, status_code, headers = api_instance.list_id_code_value_by_source_with_http_info(vbasoftware_database, type, column_name1, key_value1, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeValueResultBySourceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->list_id_code_value_by_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **column_name1** | **String** | Column_Name1 |  |
| **key_value1** | **String** | Key_Value1 |  |
| **column_name2** | **String** | Column_Name2 | [optional] |
| **key_value2** | **String** | Key_Value2 | [optional] |
| **column_name3** | **String** | Column_Name3 | [optional] |
| **key_value3** | **String** | Key_Value3 | [optional] |
| **column_name4** | **String** | Column_Name4 | [optional] |
| **key_value4** | **String** | Key_Value4 | [optional] |
| **column_name5** | **String** | Column_Name5 | [optional] |
| **key_value5** | **String** | Key_Value5 | [optional] |

### Return type

[**IDCodeValueResultBySourceListVBAResponse**](IDCodeValueResultBySourceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_id_code_value

> <MultiCodeResponseListVBAResponse> update_batch_id_code_value(vbasoftware_database, type, id_code, id_code_value)

Create or Update Batch IDCodeValue

Create or Update multiple IDCodeValue at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_value = [Vba::IDCodeValue.new({id_code_value_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'})] # Array<IDCodeValue> | 

begin
  # Create or Update Batch IDCodeValue
  result = api_instance.update_batch_id_code_value(vbasoftware_database, type, id_code, id_code_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->update_batch_id_code_value: #{e}"
end
```

#### Using the update_batch_id_code_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value)

```ruby
begin
  # Create or Update Batch IDCodeValue
  data, status_code, headers = api_instance.update_batch_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->update_batch_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_value** | [**Array&lt;IDCodeValue&gt;**](IDCodeValue.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_id_code_value

> <IDCodeValueVBAResponse> update_id_code_value(vbasoftware_database, type, id_code, id_code_value_key, id_code_value)

Update IDCodeValue

Updates a specific IDCodeValue.

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

api_instance = Vba::IDCodeValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_value_key = 56 # Integer | IDCodeValue Key
id_code_value = Vba::IDCodeValue.new({id_code_value_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'}) # IDCodeValue | 

begin
  # Update IDCodeValue
  result = api_instance.update_id_code_value(vbasoftware_database, type, id_code, id_code_value_key, id_code_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->update_id_code_value: #{e}"
end
```

#### Using the update_id_code_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeValueVBAResponse>, Integer, Hash)> update_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key, id_code_value)

```ruby
begin
  # Update IDCodeValue
  data, status_code, headers = api_instance.update_id_code_value_with_http_info(vbasoftware_database, type, id_code, id_code_value_key, id_code_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeValuesApi->update_id_code_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_value_key** | **Integer** | IDCodeValue Key |  |
| **id_code_value** | [**IDCodeValue**](IDCodeValue.md) |  |  |

### Return type

[**IDCodeValueVBAResponse**](IDCodeValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

