# Vba::GroupAccountReportsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_account_report**](GroupAccountReportsApi.md#create_group_account_report) | **POST** /groups/{groupID}/account-reports | Create GroupAccountReport |
| [**delete_group_account_report**](GroupAccountReportsApi.md#delete_group_account_report) | **DELETE** /groups/{groupID}/account-reports/{accountKey} | Delete GroupAccountReport |
| [**get_group_account_report**](GroupAccountReportsApi.md#get_group_account_report) | **GET** /groups/{groupID}/account-reports/{accountKey} | Get GroupAccountReport |
| [**list_group_account_report**](GroupAccountReportsApi.md#list_group_account_report) | **GET** /groups/{groupID}/account-reports | List GroupAccountReport |
| [**update_batch_group_account_report**](GroupAccountReportsApi.md#update_batch_group_account_report) | **PUT** /groups/{groupID}/account-reports-batch | Create or Update Batch GroupAccountReport |
| [**update_group_account_report**](GroupAccountReportsApi.md#update_group_account_report) | **PUT** /groups/{groupID}/account-reports/{accountKey} | Update GroupAccountReport |


## create_group_account_report

> <GroupAccountReportVBAResponse> create_group_account_report(vbasoftware_database, group_id, group_account_report)

Create GroupAccountReport

Creates a new GroupAccountReport

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_report = Vba::GroupAccountReport.new({group_id: 'group_id_example', account_key: 37}) # GroupAccountReport | 

begin
  # Create GroupAccountReport
  result = api_instance.create_group_account_report(vbasoftware_database, group_id, group_account_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->create_group_account_report: #{e}"
end
```

#### Using the create_group_account_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountReportVBAResponse>, Integer, Hash)> create_group_account_report_with_http_info(vbasoftware_database, group_id, group_account_report)

```ruby
begin
  # Create GroupAccountReport
  data, status_code, headers = api_instance.create_group_account_report_with_http_info(vbasoftware_database, group_id, group_account_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->create_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_report** | [**GroupAccountReport**](GroupAccountReport.md) |  |  |

### Return type

[**GroupAccountReportVBAResponse**](GroupAccountReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_account_report

> delete_group_account_report(vbasoftware_database, group_id, account_key)

Delete GroupAccountReport

Deletes an GroupAccountReport

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
account_key = 56 # Integer | Account Key

begin
  # Delete GroupAccountReport
  api_instance.delete_group_account_report(vbasoftware_database, group_id, account_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->delete_group_account_report: #{e}"
end
```

#### Using the delete_group_account_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_account_report_with_http_info(vbasoftware_database, group_id, account_key)

```ruby
begin
  # Delete GroupAccountReport
  data, status_code, headers = api_instance.delete_group_account_report_with_http_info(vbasoftware_database, group_id, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->delete_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_account_report

> <GroupAccountReportVBAResponse> get_group_account_report(vbasoftware_database, group_id, account_key)

Get GroupAccountReport

Gets GroupAccountReport

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
account_key = 56 # Integer | Account Key

begin
  # Get GroupAccountReport
  result = api_instance.get_group_account_report(vbasoftware_database, group_id, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->get_group_account_report: #{e}"
end
```

#### Using the get_group_account_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountReportVBAResponse>, Integer, Hash)> get_group_account_report_with_http_info(vbasoftware_database, group_id, account_key)

```ruby
begin
  # Get GroupAccountReport
  data, status_code, headers = api_instance.get_group_account_report_with_http_info(vbasoftware_database, group_id, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->get_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**GroupAccountReportVBAResponse**](GroupAccountReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_account_report

> <GroupAccountReportListVBAResponse> list_group_account_report(vbasoftware_database, group_id, opts)

List GroupAccountReport

Lists all GroupAccountReport for the given groupID

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupAccountReport
  result = api_instance.list_group_account_report(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->list_group_account_report: #{e}"
end
```

#### Using the list_group_account_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountReportListVBAResponse>, Integer, Hash)> list_group_account_report_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupAccountReport
  data, status_code, headers = api_instance.list_group_account_report_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountReportListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->list_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupAccountReportListVBAResponse**](GroupAccountReportListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_account_report

> <MultiCodeResponseListVBAResponse> update_batch_group_account_report(vbasoftware_database, group_id, group_account_report)

Create or Update Batch GroupAccountReport

Create or Update multiple GroupAccountReport at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_report = [Vba::GroupAccountReport.new({group_id: 'group_id_example', account_key: 37})] # Array<GroupAccountReport> | 

begin
  # Create or Update Batch GroupAccountReport
  result = api_instance.update_batch_group_account_report(vbasoftware_database, group_id, group_account_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->update_batch_group_account_report: #{e}"
end
```

#### Using the update_batch_group_account_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_account_report_with_http_info(vbasoftware_database, group_id, group_account_report)

```ruby
begin
  # Create or Update Batch GroupAccountReport
  data, status_code, headers = api_instance.update_batch_group_account_report_with_http_info(vbasoftware_database, group_id, group_account_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->update_batch_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_report** | [**Array&lt;GroupAccountReport&gt;**](GroupAccountReport.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_account_report

> <GroupAccountReportVBAResponse> update_group_account_report(vbasoftware_database, group_id, account_key, group_account_report)

Update GroupAccountReport

Updates a specific GroupAccountReport.

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

api_instance = Vba::GroupAccountReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
account_key = 56 # Integer | Account Key
group_account_report = Vba::GroupAccountReport.new({group_id: 'group_id_example', account_key: 37}) # GroupAccountReport | 

begin
  # Update GroupAccountReport
  result = api_instance.update_group_account_report(vbasoftware_database, group_id, account_key, group_account_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->update_group_account_report: #{e}"
end
```

#### Using the update_group_account_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountReportVBAResponse>, Integer, Hash)> update_group_account_report_with_http_info(vbasoftware_database, group_id, account_key, group_account_report)

```ruby
begin
  # Update GroupAccountReport
  data, status_code, headers = api_instance.update_group_account_report_with_http_info(vbasoftware_database, group_id, account_key, group_account_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountReportsApi->update_group_account_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **account_key** | **Integer** | Account Key |  |
| **group_account_report** | [**GroupAccountReport**](GroupAccountReport.md) |  |  |

### Return type

[**GroupAccountReportVBAResponse**](GroupAccountReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

