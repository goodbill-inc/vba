# Vba::IssueDurationValueDetailApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_issue_duration_value_detail**](IssueDurationValueDetailApi.md#create_issue_duration_value_detail) | **POST** /issue-duration-value-details | Create IssueDurationValueDetail |
| [**delete_issue_duration_value_detail**](IssueDurationValueDetailApi.md#delete_issue_duration_value_detail) | **DELETE** /issue-duration-value-details/{IssueDurationValueDetail_Key} | Delete IssueDurationValueDetail |
| [**get_issue_duration_value_detail**](IssueDurationValueDetailApi.md#get_issue_duration_value_detail) | **GET** /issue-duration-value-details/{IssueDurationValueDetail_Key} | Get IssueDurationValueDetail |
| [**list_issue_duration_value_detail**](IssueDurationValueDetailApi.md#list_issue_duration_value_detail) | **GET** /issue-duration-value-details | List IssueDurationValueDetail |
| [**update_batch_issue_duration_value_detail**](IssueDurationValueDetailApi.md#update_batch_issue_duration_value_detail) | **PUT** /issue-duration-value-details-batch | Create or Update Batch IssueDurationValueDetail |
| [**update_issue_duration_value_detail**](IssueDurationValueDetailApi.md#update_issue_duration_value_detail) | **PUT** /issue-duration-value-details/{IssueDurationValueDetail_Key} | Update IssueDurationValueDetail |


## create_issue_duration_value_detail

> <IssueDurationValueDetailVBAResponse> create_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail)

Create IssueDurationValueDetail

Creates a new IssueDurationValueDetail

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_detail = Vba::IssueDurationValueDetail.new({issue_duration_value_detail_key: 37, duration_0: 3.56, duration_1: 3.56, duration_10: 3.56, duration_100: 3.56, duration_101: 3.56, duration_102: 3.56, duration_103: 3.56, duration_104: 3.56, duration_105: 3.56, duration_106: 3.56, duration_107: 3.56, duration_108: 3.56, duration_109: 3.56, duration_11: 3.56, duration_110: 3.56, duration_111: 3.56, duration_112: 3.56, duration_113: 3.56, duration_114: 3.56, duration_115: 3.56, duration_116: 3.56, duration_117: 3.56, duration_118: 3.56, duration_119: 3.56, duration_12: 3.56, duration_120: 3.56, duration_121: 3.56, duration_13: 3.56, duration_14: 3.56, duration_15: 3.56, duration_16: 3.56, duration_17: 3.56, duration_18: 3.56, duration_19: 3.56, duration_2: 3.56, duration_20: 3.56, duration_21: 3.56, duration_22: 3.56, duration_23: 3.56, duration_24: 3.56, duration_25: 3.56, duration_26: 3.56, duration_27: 3.56, duration_28: 3.56, duration_29: 3.56, duration_3: 3.56, duration_30: 3.56, duration_31: 3.56, duration_32: 3.56, duration_33: 3.56, duration_34: 3.56, duration_35: 3.56, duration_36: 3.56, duration_37: 3.56, duration_38: 3.56, duration_39: 3.56, duration_4: 3.56, duration_40: 3.56, duration_41: 3.56, duration_42: 3.56, duration_43: 3.56, duration_44: 3.56, duration_45: 3.56, duration_46: 3.56, duration_47: 3.56, duration_48: 3.56, duration_49: 3.56, duration_5: 3.56, duration_50: 3.56, duration_51: 3.56, duration_52: 3.56, duration_53: 3.56, duration_54: 3.56, duration_55: 3.56, duration_56: 3.56, duration_57: 3.56, duration_58: 3.56, duration_59: 3.56, duration_6: 3.56, duration_60: 3.56, duration_61: 3.56, duration_62: 3.56, duration_63: 3.56, duration_64: 3.56, duration_65: 3.56, duration_66: 3.56, duration_67: 3.56, duration_68: 3.56, duration_69: 3.56, duration_7: 3.56, duration_70: 3.56, duration_71: 3.56, duration_72: 3.56, duration_73: 3.56, duration_74: 3.56, duration_75: 3.56, duration_76: 3.56, duration_77: 3.56, duration_78: 3.56, duration_79: 3.56, duration_8: 3.56, duration_80: 3.56, duration_81: 3.56, duration_82: 3.56, duration_83: 3.56, duration_84: 3.56, duration_85: 3.56, duration_86: 3.56, duration_87: 3.56, duration_88: 3.56, duration_89: 3.56, duration_9: 3.56, duration_90: 3.56, duration_91: 3.56, duration_92: 3.56, duration_93: 3.56, duration_94: 3.56, duration_95: 3.56, duration_96: 3.56, duration_97: 3.56, duration_98: 3.56, duration_99: 3.56, issue_duration_value_key: 37, issue_age_day: 37, issue_age_year: 37}) # IssueDurationValueDetail | 

begin
  # Create IssueDurationValueDetail
  result = api_instance.create_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->create_issue_duration_value_detail: #{e}"
end
```

#### Using the create_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueDetailVBAResponse>, Integer, Hash)> create_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail)

```ruby
begin
  # Create IssueDurationValueDetail
  data, status_code, headers = api_instance.create_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->create_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_detail** | [**IssueDurationValueDetail**](IssueDurationValueDetail.md) |  |  |

### Return type

[**IssueDurationValueDetailVBAResponse**](IssueDurationValueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_issue_duration_value_detail

> delete_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key)

Delete IssueDurationValueDetail

Deletes an IssueDurationValueDetail

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_detail_key = 56 # Integer | IssueDurationValueDetail Key

begin
  # Delete IssueDurationValueDetail
  api_instance.delete_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->delete_issue_duration_value_detail: #{e}"
end
```

#### Using the delete_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key)

```ruby
begin
  # Delete IssueDurationValueDetail
  data, status_code, headers = api_instance.delete_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->delete_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_detail_key** | **Integer** | IssueDurationValueDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_issue_duration_value_detail

> <IssueDurationValueDetailVBAResponse> get_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key)

Get IssueDurationValueDetail

Gets IssueDurationValueDetail

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_detail_key = 56 # Integer | IssueDurationValueDetail Key

begin
  # Get IssueDurationValueDetail
  result = api_instance.get_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->get_issue_duration_value_detail: #{e}"
end
```

#### Using the get_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueDetailVBAResponse>, Integer, Hash)> get_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key)

```ruby
begin
  # Get IssueDurationValueDetail
  data, status_code, headers = api_instance.get_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->get_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_detail_key** | **Integer** | IssueDurationValueDetail Key |  |

### Return type

[**IssueDurationValueDetailVBAResponse**](IssueDurationValueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_issue_duration_value_detail

> <IssueDurationValueDetailListVBAResponse> list_issue_duration_value_detail(vbasoftware_database, opts)

List IssueDurationValueDetail

Lists all IssueDurationValueDetail

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  issue_duration_value_key: 56 # Integer | IssueDurationValue Key
}

begin
  # List IssueDurationValueDetail
  result = api_instance.list_issue_duration_value_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->list_issue_duration_value_detail: #{e}"
end
```

#### Using the list_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueDetailListVBAResponse>, Integer, Hash)> list_issue_duration_value_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List IssueDurationValueDetail
  data, status_code, headers = api_instance.list_issue_duration_value_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->list_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **issue_duration_value_key** | **Integer** | IssueDurationValue Key | [optional] |

### Return type

[**IssueDurationValueDetailListVBAResponse**](IssueDurationValueDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_issue_duration_value_detail

> <MultiCodeResponseListVBAResponse> update_batch_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail)

Create or Update Batch IssueDurationValueDetail

Create or Update multiple IssueDurationValueDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_detail = [Vba::IssueDurationValueDetail.new({issue_duration_value_detail_key: 37, duration_0: 3.56, duration_1: 3.56, duration_10: 3.56, duration_100: 3.56, duration_101: 3.56, duration_102: 3.56, duration_103: 3.56, duration_104: 3.56, duration_105: 3.56, duration_106: 3.56, duration_107: 3.56, duration_108: 3.56, duration_109: 3.56, duration_11: 3.56, duration_110: 3.56, duration_111: 3.56, duration_112: 3.56, duration_113: 3.56, duration_114: 3.56, duration_115: 3.56, duration_116: 3.56, duration_117: 3.56, duration_118: 3.56, duration_119: 3.56, duration_12: 3.56, duration_120: 3.56, duration_121: 3.56, duration_13: 3.56, duration_14: 3.56, duration_15: 3.56, duration_16: 3.56, duration_17: 3.56, duration_18: 3.56, duration_19: 3.56, duration_2: 3.56, duration_20: 3.56, duration_21: 3.56, duration_22: 3.56, duration_23: 3.56, duration_24: 3.56, duration_25: 3.56, duration_26: 3.56, duration_27: 3.56, duration_28: 3.56, duration_29: 3.56, duration_3: 3.56, duration_30: 3.56, duration_31: 3.56, duration_32: 3.56, duration_33: 3.56, duration_34: 3.56, duration_35: 3.56, duration_36: 3.56, duration_37: 3.56, duration_38: 3.56, duration_39: 3.56, duration_4: 3.56, duration_40: 3.56, duration_41: 3.56, duration_42: 3.56, duration_43: 3.56, duration_44: 3.56, duration_45: 3.56, duration_46: 3.56, duration_47: 3.56, duration_48: 3.56, duration_49: 3.56, duration_5: 3.56, duration_50: 3.56, duration_51: 3.56, duration_52: 3.56, duration_53: 3.56, duration_54: 3.56, duration_55: 3.56, duration_56: 3.56, duration_57: 3.56, duration_58: 3.56, duration_59: 3.56, duration_6: 3.56, duration_60: 3.56, duration_61: 3.56, duration_62: 3.56, duration_63: 3.56, duration_64: 3.56, duration_65: 3.56, duration_66: 3.56, duration_67: 3.56, duration_68: 3.56, duration_69: 3.56, duration_7: 3.56, duration_70: 3.56, duration_71: 3.56, duration_72: 3.56, duration_73: 3.56, duration_74: 3.56, duration_75: 3.56, duration_76: 3.56, duration_77: 3.56, duration_78: 3.56, duration_79: 3.56, duration_8: 3.56, duration_80: 3.56, duration_81: 3.56, duration_82: 3.56, duration_83: 3.56, duration_84: 3.56, duration_85: 3.56, duration_86: 3.56, duration_87: 3.56, duration_88: 3.56, duration_89: 3.56, duration_9: 3.56, duration_90: 3.56, duration_91: 3.56, duration_92: 3.56, duration_93: 3.56, duration_94: 3.56, duration_95: 3.56, duration_96: 3.56, duration_97: 3.56, duration_98: 3.56, duration_99: 3.56, issue_duration_value_key: 37, issue_age_day: 37, issue_age_year: 37})] # Array<IssueDurationValueDetail> | 

begin
  # Create or Update Batch IssueDurationValueDetail
  result = api_instance.update_batch_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->update_batch_issue_duration_value_detail: #{e}"
end
```

#### Using the update_batch_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail)

```ruby
begin
  # Create or Update Batch IssueDurationValueDetail
  data, status_code, headers = api_instance.update_batch_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->update_batch_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_detail** | [**Array&lt;IssueDurationValueDetail&gt;**](IssueDurationValueDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_issue_duration_value_detail

> <IssueDurationValueDetailVBAResponse> update_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail)

Update IssueDurationValueDetail

Updates a specific IssueDurationValueDetail.

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

api_instance = Vba::IssueDurationValueDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_detail_key = 56 # Integer | IssueDurationValueDetail Key
issue_duration_value_detail = Vba::IssueDurationValueDetail.new({issue_duration_value_detail_key: 37, duration_0: 3.56, duration_1: 3.56, duration_10: 3.56, duration_100: 3.56, duration_101: 3.56, duration_102: 3.56, duration_103: 3.56, duration_104: 3.56, duration_105: 3.56, duration_106: 3.56, duration_107: 3.56, duration_108: 3.56, duration_109: 3.56, duration_11: 3.56, duration_110: 3.56, duration_111: 3.56, duration_112: 3.56, duration_113: 3.56, duration_114: 3.56, duration_115: 3.56, duration_116: 3.56, duration_117: 3.56, duration_118: 3.56, duration_119: 3.56, duration_12: 3.56, duration_120: 3.56, duration_121: 3.56, duration_13: 3.56, duration_14: 3.56, duration_15: 3.56, duration_16: 3.56, duration_17: 3.56, duration_18: 3.56, duration_19: 3.56, duration_2: 3.56, duration_20: 3.56, duration_21: 3.56, duration_22: 3.56, duration_23: 3.56, duration_24: 3.56, duration_25: 3.56, duration_26: 3.56, duration_27: 3.56, duration_28: 3.56, duration_29: 3.56, duration_3: 3.56, duration_30: 3.56, duration_31: 3.56, duration_32: 3.56, duration_33: 3.56, duration_34: 3.56, duration_35: 3.56, duration_36: 3.56, duration_37: 3.56, duration_38: 3.56, duration_39: 3.56, duration_4: 3.56, duration_40: 3.56, duration_41: 3.56, duration_42: 3.56, duration_43: 3.56, duration_44: 3.56, duration_45: 3.56, duration_46: 3.56, duration_47: 3.56, duration_48: 3.56, duration_49: 3.56, duration_5: 3.56, duration_50: 3.56, duration_51: 3.56, duration_52: 3.56, duration_53: 3.56, duration_54: 3.56, duration_55: 3.56, duration_56: 3.56, duration_57: 3.56, duration_58: 3.56, duration_59: 3.56, duration_6: 3.56, duration_60: 3.56, duration_61: 3.56, duration_62: 3.56, duration_63: 3.56, duration_64: 3.56, duration_65: 3.56, duration_66: 3.56, duration_67: 3.56, duration_68: 3.56, duration_69: 3.56, duration_7: 3.56, duration_70: 3.56, duration_71: 3.56, duration_72: 3.56, duration_73: 3.56, duration_74: 3.56, duration_75: 3.56, duration_76: 3.56, duration_77: 3.56, duration_78: 3.56, duration_79: 3.56, duration_8: 3.56, duration_80: 3.56, duration_81: 3.56, duration_82: 3.56, duration_83: 3.56, duration_84: 3.56, duration_85: 3.56, duration_86: 3.56, duration_87: 3.56, duration_88: 3.56, duration_89: 3.56, duration_9: 3.56, duration_90: 3.56, duration_91: 3.56, duration_92: 3.56, duration_93: 3.56, duration_94: 3.56, duration_95: 3.56, duration_96: 3.56, duration_97: 3.56, duration_98: 3.56, duration_99: 3.56, issue_duration_value_key: 37, issue_age_day: 37, issue_age_year: 37}) # IssueDurationValueDetail | 

begin
  # Update IssueDurationValueDetail
  result = api_instance.update_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->update_issue_duration_value_detail: #{e}"
end
```

#### Using the update_issue_duration_value_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueDetailVBAResponse>, Integer, Hash)> update_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail)

```ruby
begin
  # Update IssueDurationValueDetail
  data, status_code, headers = api_instance.update_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValueDetailApi->update_issue_duration_value_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_detail_key** | **Integer** | IssueDurationValueDetail Key |  |
| **issue_duration_value_detail** | [**IssueDurationValueDetail**](IssueDurationValueDetail.md) |  |  |

### Return type

[**IssueDurationValueDetailVBAResponse**](IssueDurationValueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

