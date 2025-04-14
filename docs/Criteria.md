# Vba::Criteria

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_config_id** | **String** | The SaerchConfig for which this Criteria will be applied. | [optional] |
| **criteria_key** | **Integer** | Key value identifying a specific criteria. Omit this field when creating a new record. | [optional] |
| **criteria_type** | **String** | Identifies the type associated with the criteria. Use the name of the SearchConfig for which you want to apply this Criteria. | [optional] |
| **criteria_user** | **String** | Identifies the User associated with the criteria. | [optional] |
| **description** | **String** | Description of the criteria. | [optional] |
| **criteria_details** | [**Array&lt;CriteriaDetail&gt;**](CriteriaDetail.md) | List of details applied to the Criteria. | [optional] |
| **temporary** | **Boolean** | If true, criteria is not included as a \&quot;saved search\&quot;, if false, the criteria is persisted as a \&quot;saved search\&quot; in accordance to the comapny&#39;s criteria persistance settings. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Criteria.new(
  search_config_id: null,
  criteria_key: null,
  criteria_type: null,
  criteria_user: null,
  description: null,
  criteria_details: null,
  temporary: null
)
```

