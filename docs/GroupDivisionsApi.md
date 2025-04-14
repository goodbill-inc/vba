# Vba::GroupDivisionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_group_division**](GroupDivisionsApi.md#copy_group_division) | **POST** /groups/{groupID}/divisions/{divisionID}/copy | Copy a GroupDivision |
| [**create_group_division**](GroupDivisionsApi.md#create_group_division) | **POST** /groups/{groupID}/divisions | Create GroupDivision |
| [**delete_group_division**](GroupDivisionsApi.md#delete_group_division) | **DELETE** /groups/{groupID}/divisions/{divisionID} | Delete GroupDivision |
| [**get_group_division**](GroupDivisionsApi.md#get_group_division) | **GET** /groups/{groupID}/divisions/{divisionID} | Get GroupDivision |
| [**get_group_division_enrollment_summary**](GroupDivisionsApi.md#get_group_division_enrollment_summary) | **GET** /groups/{groupID}/divisions/{divisionID}/enrollment-summary | Get Group enrollment summary information |
| [**list_group_division**](GroupDivisionsApi.md#list_group_division) | **GET** /groups/{groupID}/divisions | List GroupDivision |
| [**update_batch_group_division**](GroupDivisionsApi.md#update_batch_group_division) | **PUT** /groups/{groupID}/divisions-batch | Create or Update Batch GroupDivision |
| [**update_group_division**](GroupDivisionsApi.md#update_group_division) | **PUT** /groups/{groupID}/divisions/{divisionID} | Update GroupDivision |


## copy_group_division

> <GroupDivisionVBAResponse> copy_group_division(vbasoftware_database, group_id, division_id, copy_group_division)

Copy a GroupDivision

Copy a specific GroupDivision to a new GroupDivision

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
copy_group_division = Vba::CopyGroupDivision.new({group_id: 'group_id_example', source_division_id: 'source_division_id_example', destination_group_id: 'destination_group_id_example', destination_division_id: 'destination_division_id_example'}) # CopyGroupDivision | 

begin
  # Copy a GroupDivision
  result = api_instance.copy_group_division(vbasoftware_database, group_id, division_id, copy_group_division)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->copy_group_division: #{e}"
end
```

#### Using the copy_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionVBAResponse>, Integer, Hash)> copy_group_division_with_http_info(vbasoftware_database, group_id, division_id, copy_group_division)

```ruby
begin
  # Copy a GroupDivision
  data, status_code, headers = api_instance.copy_group_division_with_http_info(vbasoftware_database, group_id, division_id, copy_group_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->copy_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **copy_group_division** | [**CopyGroupDivision**](CopyGroupDivision.md) |  |  |

### Return type

[**GroupDivisionVBAResponse**](GroupDivisionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_group_division

> <GroupDivisionVBAResponse> create_group_division(vbasoftware_database, group_id, group_division)

Create GroupDivision

Creates a new GroupDivision

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_division = Vba::GroupDivision.new({group_id: 'group_id_example', division_id: 'division_id_example', auth_not_reqd_override: false, cobr_a_division: false, co_e_network: false, duplicate_claim_override: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, fic_a_employer_match: false, generate_w2: false, mail_to_default: false, prorate_deduction: false, set_paid_through: false, tax_day_limit_type: 37, use_restricted_deductions: false}) # GroupDivision | 

begin
  # Create GroupDivision
  result = api_instance.create_group_division(vbasoftware_database, group_id, group_division)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->create_group_division: #{e}"
end
```

#### Using the create_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionVBAResponse>, Integer, Hash)> create_group_division_with_http_info(vbasoftware_database, group_id, group_division)

```ruby
begin
  # Create GroupDivision
  data, status_code, headers = api_instance.create_group_division_with_http_info(vbasoftware_database, group_id, group_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->create_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_division** | [**GroupDivision**](GroupDivision.md) |  |  |

### Return type

[**GroupDivisionVBAResponse**](GroupDivisionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_division

> delete_group_division(vbasoftware_database, group_id, division_id)

Delete GroupDivision

Deletes an GroupDivision

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # Delete GroupDivision
  api_instance.delete_group_division(vbasoftware_database, group_id, division_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->delete_group_division: #{e}"
end
```

#### Using the delete_group_division_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_division_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # Delete GroupDivision
  data, status_code, headers = api_instance.delete_group_division_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->delete_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_division

> <GroupDivisionVBAResponse> get_group_division(vbasoftware_database, group_id, division_id)

Get GroupDivision

Gets GroupDivision

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # Get GroupDivision
  result = api_instance.get_group_division(vbasoftware_database, group_id, division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->get_group_division: #{e}"
end
```

#### Using the get_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionVBAResponse>, Integer, Hash)> get_group_division_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # Get GroupDivision
  data, status_code, headers = api_instance.get_group_division_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->get_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

[**GroupDivisionVBAResponse**](GroupDivisionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_group_division_enrollment_summary

> <VBAGroupContractEnrollmentSummaryListVBAResponse> get_group_division_enrollment_summary(vbasoftware_database, group_id, division_id)

Get Group enrollment summary information

Gets enrollment summary for the given group id and division id. 

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # Get Group enrollment summary information
  result = api_instance.get_group_division_enrollment_summary(vbasoftware_database, group_id, division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->get_group_division_enrollment_summary: #{e}"
end
```

#### Using the get_group_division_enrollment_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupContractEnrollmentSummaryListVBAResponse>, Integer, Hash)> get_group_division_enrollment_summary_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # Get Group enrollment summary information
  data, status_code, headers = api_instance.get_group_division_enrollment_summary_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupContractEnrollmentSummaryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->get_group_division_enrollment_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

[**VBAGroupContractEnrollmentSummaryListVBAResponse**](VBAGroupContractEnrollmentSummaryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_division

> <GroupDivisionListVBAResponse> list_group_division(vbasoftware_database, group_id, opts)

List GroupDivision

Lists all GroupDivision for the given groupID

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupDivision
  result = api_instance.list_group_division(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->list_group_division: #{e}"
end
```

#### Using the list_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionListVBAResponse>, Integer, Hash)> list_group_division_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupDivision
  data, status_code, headers = api_instance.list_group_division_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->list_group_division_with_http_info: #{e}"
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

[**GroupDivisionListVBAResponse**](GroupDivisionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_division

> <MultiCodeResponseListVBAResponse> update_batch_group_division(vbasoftware_database, group_id, group_division)

Create or Update Batch GroupDivision

Create or Update multiple GroupDivision at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_division = [Vba::GroupDivision.new({group_id: 'group_id_example', division_id: 'division_id_example', auth_not_reqd_override: false, cobr_a_division: false, co_e_network: false, duplicate_claim_override: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, fic_a_employer_match: false, generate_w2: false, mail_to_default: false, prorate_deduction: false, set_paid_through: false, tax_day_limit_type: 37, use_restricted_deductions: false})] # Array<GroupDivision> | 

begin
  # Create or Update Batch GroupDivision
  result = api_instance.update_batch_group_division(vbasoftware_database, group_id, group_division)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->update_batch_group_division: #{e}"
end
```

#### Using the update_batch_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_division_with_http_info(vbasoftware_database, group_id, group_division)

```ruby
begin
  # Create or Update Batch GroupDivision
  data, status_code, headers = api_instance.update_batch_group_division_with_http_info(vbasoftware_database, group_id, group_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->update_batch_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_division** | [**Array&lt;GroupDivision&gt;**](GroupDivision.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_division

> <GroupDivisionVBAResponse> update_group_division(vbasoftware_database, group_id, division_id, group_division)

Update GroupDivision

Updates a specific GroupDivision.

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

api_instance = Vba::GroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_division = Vba::GroupDivision.new({group_id: 'group_id_example', division_id: 'division_id_example', auth_not_reqd_override: false, cobr_a_division: false, co_e_network: false, duplicate_claim_override: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, fic_a_employer_match: false, generate_w2: false, mail_to_default: false, prorate_deduction: false, set_paid_through: false, tax_day_limit_type: 37, use_restricted_deductions: false}) # GroupDivision | 

begin
  # Update GroupDivision
  result = api_instance.update_group_division(vbasoftware_database, group_id, division_id, group_division)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->update_group_division: #{e}"
end
```

#### Using the update_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionVBAResponse>, Integer, Hash)> update_group_division_with_http_info(vbasoftware_database, group_id, division_id, group_division)

```ruby
begin
  # Update GroupDivision
  data, status_code, headers = api_instance.update_group_division_with_http_info(vbasoftware_database, group_id, division_id, group_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionsApi->update_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_division** | [**GroupDivision**](GroupDivision.md) |  |  |

### Return type

[**GroupDivisionVBAResponse**](GroupDivisionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

