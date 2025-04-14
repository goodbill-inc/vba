# Vba::LanguageSkillLevelsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_language_skill_levels**](LanguageSkillLevelsApi.md#list_language_skill_levels) | **GET** /language-skill-levels | Language Skill Levels |


## list_language_skill_levels

> <StringStaticOptionListVBAResponse> list_language_skill_levels(vbasoftware_database)

Language Skill Levels

List of key/value pairs for Language Skill Levels

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

api_instance = Vba::LanguageSkillLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Language Skill Levels
  result = api_instance.list_language_skill_levels(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguageSkillLevelsApi->list_language_skill_levels: #{e}"
end
```

#### Using the list_language_skill_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_language_skill_levels_with_http_info(vbasoftware_database)

```ruby
begin
  # Language Skill Levels
  data, status_code, headers = api_instance.list_language_skill_levels_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguageSkillLevelsApi->list_language_skill_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

