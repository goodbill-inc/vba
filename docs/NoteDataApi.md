# Vba::NoteDataApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_data**](NoteDataApi.md#create_note_data) | **POST** /note-data | Create NoteData |
| [**delete_note_data**](NoteDataApi.md#delete_note_data) | **DELETE** /note-data/{noteKey} | Delete NoteData |
| [**get_note_attachment_location**](NoteDataApi.md#get_note_attachment_location) | **GET** /note-attachment-location/{noteCategory} | Get Note Attachment Location |
| [**get_note_data**](NoteDataApi.md#get_note_data) | **GET** /note-data/{noteKey} | Get NoteData |
| [**list_notes_by_source**](NoteDataApi.md#list_notes_by_source) | **GET** /note-data | List NoteData by Source |
| [**update_batch_note_data**](NoteDataApi.md#update_batch_note_data) | **PUT** /note-data-batch | Create or Update Batch NoteData |
| [**update_note_data**](NoteDataApi.md#update_note_data) | **PUT** /note-data/{noteKey} | Update NoteData |


## create_note_data

> <NoteDataVBAResponse> create_note_data(vbasoftware_database, note_data)

Create NoteData

Creates a new NoteData

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_data = Vba::NoteData.new({note_key: 37, note_alert: false}) # NoteData | 

begin
  # Create NoteData
  result = api_instance.create_note_data(vbasoftware_database, note_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->create_note_data: #{e}"
end
```

#### Using the create_note_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteDataVBAResponse>, Integer, Hash)> create_note_data_with_http_info(vbasoftware_database, note_data)

```ruby
begin
  # Create NoteData
  data, status_code, headers = api_instance.create_note_data_with_http_info(vbasoftware_database, note_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->create_note_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_data** | [**NoteData**](NoteData.md) |  |  |

### Return type

[**NoteDataVBAResponse**](NoteDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_data

> delete_note_data(vbasoftware_database, note_key)

Delete NoteData

Deletes an NoteData

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key

begin
  # Delete NoteData
  api_instance.delete_note_data(vbasoftware_database, note_key)
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->delete_note_data: #{e}"
end
```

#### Using the delete_note_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_data_with_http_info(vbasoftware_database, note_key)

```ruby
begin
  # Delete NoteData
  data, status_code, headers = api_instance.delete_note_data_with_http_info(vbasoftware_database, note_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->delete_note_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_key** | **Integer** | Note Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_attachment_location

> <StringVBAResponse> get_note_attachment_location(vbasoftware_database, note_category)

Get Note Attachment Location

Gets Note Attachment Location

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category

begin
  # Get Note Attachment Location
  result = api_instance.get_note_attachment_location(vbasoftware_database, note_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->get_note_attachment_location: #{e}"
end
```

#### Using the get_note_attachment_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> get_note_attachment_location_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # Get Note Attachment Location
  data, status_code, headers = api_instance.get_note_attachment_location_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->get_note_attachment_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_note_data

> <NoteDataVBAResponse> get_note_data(vbasoftware_database, note_key)

Get NoteData

Gets NoteData

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key

begin
  # Get NoteData
  result = api_instance.get_note_data(vbasoftware_database, note_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->get_note_data: #{e}"
end
```

#### Using the get_note_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteDataVBAResponse>, Integer, Hash)> get_note_data_with_http_info(vbasoftware_database, note_key)

```ruby
begin
  # Get NoteData
  data, status_code, headers = api_instance.get_note_data_with_http_info(vbasoftware_database, note_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->get_note_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_key** | **Integer** | Note Key |  |

### Return type

[**NoteDataVBAResponse**](NoteDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_notes_by_source

> <NoteDataListVBAResponse> list_notes_by_source(vbasoftware_database, note_category, column_name1, key_value1, opts)

List NoteData by Source

List of Notes based on a specific source              Expectations of Category compared to what is in the source values                AUTH              @SourceColumn1 = auth_number                CALL              @SourceColumn1 = call_key                CASE              @SourceColumn1 = case_key                CLAIM              @SourceColumn1 = batch_number              @SourceColumn2 = batch_claim                CLMBTCH ** NO REFS **              @SourceColumn1 = batch_number                COMMAGEN ** NO REFS **              @SourceColumn1 = commissionagency_key                COMMREP ** NO REFS **              @SourceColumn1 = commissionrep_key                CORTRACK ** NO REFS **              @SourceColumn1 = reporttrack_key                FEESCHED ** NO REFS **              @SourceColumn1 = fee_sched                GRIEV              @SourceColumn1 = grievance_key                GROUP              @SourceColumn1 = group_id                GROUPDIV              @SourceColumn1 = group_id              @SourceColumn2 = division_id                GRPCLASS              @SourceColumn1 = group_id                GWREQ ** NO REFS **              @SourceColumn1 = request_key                INTRFACE ** NO REFS **              @SourceColumn1 = vbainterface_key                INVHDR ** NO REFS **              @SourceColumn1 = invoice_key                MEMBER              @SourceColumn1 = subscriber_id              @SourceColumn2 = member_seq                NETWORK ** NO REFS **              @SourceColumn1 = network_id                NOTE ** NO REFS **              @SourceColumn1 = note_key                PAYEE ** NO REFS **              @SourceColumn1 = payee_id                PAYOR ** NO REFS **              @SourceColumn1 = payor_id                PBENMAX              @SourceColumn1 = plan_id              @SourceColumn2 = benefit_code              @SourceColumn3 = max_id                PLAN ** NO REFS **              @SourceColumn1 = plan_id                PLANLVL ** NO REFS **              @SourceColumn1 = planbenefitlevel_key                PROV ** NO REFS **              @SourceColumn1 = provider_id                PROVCRED              @SourceColumn1 = providercred_key                REINS              @SourceColumn1 = reinscontract_key                REINSTRN              @SourceColumn1 = reinscontracttrans_key                SUB              @SourceColumn1 = subscriber_id              

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note_Category
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
  # List NoteData by Source
  result = api_instance.list_notes_by_source(vbasoftware_database, note_category, column_name1, key_value1, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->list_notes_by_source: #{e}"
end
```

#### Using the list_notes_by_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteDataListVBAResponse>, Integer, Hash)> list_notes_by_source_with_http_info(vbasoftware_database, note_category, column_name1, key_value1, opts)

```ruby
begin
  # List NoteData by Source
  data, status_code, headers = api_instance.list_notes_by_source_with_http_info(vbasoftware_database, note_category, column_name1, key_value1, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteDataListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->list_notes_by_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note_Category |  |
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

[**NoteDataListVBAResponse**](NoteDataListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_data

> <MultiCodeResponseListVBAResponse> update_batch_note_data(vbasoftware_database, note_data)

Create or Update Batch NoteData

Create or Update multiple NoteData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_data = [Vba::NoteData.new({note_key: 37, note_alert: false})] # Array<NoteData> | 

begin
  # Create or Update Batch NoteData
  result = api_instance.update_batch_note_data(vbasoftware_database, note_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->update_batch_note_data: #{e}"
end
```

#### Using the update_batch_note_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_data_with_http_info(vbasoftware_database, note_data)

```ruby
begin
  # Create or Update Batch NoteData
  data, status_code, headers = api_instance.update_batch_note_data_with_http_info(vbasoftware_database, note_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->update_batch_note_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_data** | [**Array&lt;NoteData&gt;**](NoteData.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_data

> <NoteDataVBAResponse> update_note_data(vbasoftware_database, note_key, note_data)

Update NoteData

Updates a specific NoteData.

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

api_instance = Vba::NoteDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key
note_data = Vba::NoteData.new({note_key: 37, note_alert: false}) # NoteData | 

begin
  # Update NoteData
  result = api_instance.update_note_data(vbasoftware_database, note_key, note_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->update_note_data: #{e}"
end
```

#### Using the update_note_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteDataVBAResponse>, Integer, Hash)> update_note_data_with_http_info(vbasoftware_database, note_key, note_data)

```ruby
begin
  # Update NoteData
  data, status_code, headers = api_instance.update_note_data_with_http_info(vbasoftware_database, note_key, note_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteDataApi->update_note_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_key** | **Integer** | Note Key |  |
| **note_data** | [**NoteData**](NoteData.md) |  |  |

### Return type

[**NoteDataVBAResponse**](NoteDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

