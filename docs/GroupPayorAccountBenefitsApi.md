# Vba::GroupPayorAccountBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#create_group_payor_account_benefit) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/benefits | Create GroupPayorAccountBenefit |
| [**delete_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#delete_group_payor_account_benefit) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode} | Delete GroupPayorAccountBenefit |
| [**get_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#get_group_payor_account_benefit) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode} | Get GroupPayorAccountBenefit |
| [**list_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#list_group_payor_account_benefit) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/benefits | List GroupPayorAccountBenefit |
| [**update_batch_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#update_batch_group_payor_account_benefit) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/benefits-batch | Create or Update Batch GroupPayorAccountBenefit |
| [**update_group_payor_account_benefit**](GroupPayorAccountBenefitsApi.md#update_group_payor_account_benefit) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode} | Update GroupPayorAccountBenefit |


## create_group_payor_account_benefit

> <GroupPayorAccountBenefitVBAResponse> create_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)

Create GroupPayorAccountBenefit

Creates a new GroupPayorAccountBenefit

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_benefit = Vba::GroupPayorAccountBenefit.new({group_id: 'group_id_example', setting_id: 'setting_id_example', benefit_code: 'benefit_code_example'}) # GroupPayorAccountBenefit | 

begin
  # Create GroupPayorAccountBenefit
  result = api_instance.create_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->create_group_payor_account_benefit: #{e}"
end
```

#### Using the create_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountBenefitVBAResponse>, Integer, Hash)> create_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)

```ruby
begin
  # Create GroupPayorAccountBenefit
  data, status_code, headers = api_instance.create_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->create_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_benefit** | [**GroupPayorAccountBenefit**](GroupPayorAccountBenefit.md) |  |  |

### Return type

[**GroupPayorAccountBenefitVBAResponse**](GroupPayorAccountBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_benefit

> delete_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code)

Delete GroupPayorAccountBenefit

Deletes an GroupPayorAccountBenefit

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete GroupPayorAccountBenefit
  api_instance.delete_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->delete_group_payor_account_benefit: #{e}"
end
```

#### Using the delete_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code)

```ruby
begin
  # Delete GroupPayorAccountBenefit
  data, status_code, headers = api_instance.delete_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->delete_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_benefit

> <GroupPayorAccountBenefitVBAResponse> get_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code)

Get GroupPayorAccountBenefit

Gets GroupPayorAccountBenefit

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get GroupPayorAccountBenefit
  result = api_instance.get_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->get_group_payor_account_benefit: #{e}"
end
```

#### Using the get_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountBenefitVBAResponse>, Integer, Hash)> get_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code)

```ruby
begin
  # Get GroupPayorAccountBenefit
  data, status_code, headers = api_instance.get_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->get_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**GroupPayorAccountBenefitVBAResponse**](GroupPayorAccountBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_benefit

> <GroupPayorAccountBenefitListVBAResponse> list_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountBenefit

Lists all GroupPayorAccountBenefit for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountBenefit
  result = api_instance.list_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->list_group_payor_account_benefit: #{e}"
end
```

#### Using the list_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountBenefitListVBAResponse>, Integer, Hash)> list_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountBenefit
  data, status_code, headers = api_instance.list_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountBenefitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->list_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountBenefitListVBAResponse**](GroupPayorAccountBenefitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_benefit

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)

Create or Update Batch GroupPayorAccountBenefit

Create or Update multiple GroupPayorAccountBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_benefit = [Vba::GroupPayorAccountBenefit.new({group_id: 'group_id_example', setting_id: 'setting_id_example', benefit_code: 'benefit_code_example'})] # Array<GroupPayorAccountBenefit> | 

begin
  # Create or Update Batch GroupPayorAccountBenefit
  result = api_instance.update_batch_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->update_batch_group_payor_account_benefit: #{e}"
end
```

#### Using the update_batch_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)

```ruby
begin
  # Create or Update Batch GroupPayorAccountBenefit
  data, status_code, headers = api_instance.update_batch_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->update_batch_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_benefit** | [**Array&lt;GroupPayorAccountBenefit&gt;**](GroupPayorAccountBenefit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_payor_account_benefit

> <GroupPayorAccountBenefitVBAResponse> update_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit)

Update GroupPayorAccountBenefit

Updates a specific GroupPayorAccountBenefit.

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

api_instance = Vba::GroupPayorAccountBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
benefit_code = 'benefit_code_example' # String | Benefit Code
group_payor_account_benefit = Vba::GroupPayorAccountBenefit.new({group_id: 'group_id_example', setting_id: 'setting_id_example', benefit_code: 'benefit_code_example'}) # GroupPayorAccountBenefit | 

begin
  # Update GroupPayorAccountBenefit
  result = api_instance.update_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->update_group_payor_account_benefit: #{e}"
end
```

#### Using the update_group_payor_account_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountBenefitVBAResponse>, Integer, Hash)> update_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit)

```ruby
begin
  # Update GroupPayorAccountBenefit
  data, status_code, headers = api_instance.update_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountBenefitsApi->update_group_payor_account_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **group_payor_account_benefit** | [**GroupPayorAccountBenefit**](GroupPayorAccountBenefit.md) |  |  |

### Return type

[**GroupPayorAccountBenefitVBAResponse**](GroupPayorAccountBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

