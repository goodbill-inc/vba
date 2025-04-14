# Vba::SearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **criteria_key** | **Integer** | The unique Criteria_Key that contains the search criteria that will be applied to a SearchConfig. |  |
| **search_config_id** | **String** | The unique id of the SearchConfig for which the Criteria will be applied. |  |
| **user_id** | **String** | Fields to return in the search results.  These must be a subset of the SearchConfig Fields. | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_count** | **Integer** |  | [optional] |
| **include_result_details** | **Boolean** |  | [optional] |
| **use_random_sample** | **Boolean** | This flag indicates you want your search to return a random sample or records matching your search criteria.  If you flag this as true, Random_Sample_Count must also be a value &gt;&#x3D; 0 or it will throw an exception. | [optional] |
| **random_sample_count** | **Integer** | This value is the raw count of random records you want as a sample based on your search.  Value must be between 0-1000 (because search has paging, this value will default limit to 750 if you do not pass in a larger page size).  As noted below, this value must be between 0-100 if you are flagging this as a percent sample. | [optional] |
| **random_sample_count_is_percent** | **Boolean** | This flag indicates that the value in Random_Sample_Count is a Percent value between 0-100.  If true, the Random_Sample_Count is used as the Pct sample of the full result set.  As noted, if this is true, the value in Random_Sample_Count must be between 0-100 or an exception will be thrown. | [optional] |
| **use_nth_result** | **Boolean** | This flag indicates you want your search to return a the Nth result of the results of the search. | [optional] |
| **nth_result** | **Integer** | This value is the Nth result you would like returned from the search results.  Value must be &gt;&#x3D; 0 and less than the total number of results.  If greater than the total number of results, it will return the last result. | [optional] |
| **criterias** | [**Array&lt;CriteriaDetail&gt;**](CriteriaDetail.md) |  | [optional] |
| **selected_fields** | [**Array&lt;SelectedField&gt;**](SelectedField.md) |  |  |

## Example

```ruby
require 'vba'

instance = Vba::SearchRequest.new(
  criteria_key: null,
  search_config_id: null,
  user_id: null,
  page: null,
  page_count: null,
  include_result_details: null,
  use_random_sample: null,
  random_sample_count: null,
  random_sample_count_is_percent: null,
  use_nth_result: null,
  nth_result: null,
  criterias: null,
  selected_fields: null
)
```

