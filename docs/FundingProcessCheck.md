# Vba::FundingProcessCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posted_date** | **Time** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **process_check_options** | [**Array&lt;ProcessCheckOption&gt;**](ProcessCheckOption.md) |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::FundingProcessCheck.new(
  posted_date: null,
  user_id: null,
  process_check_options: null
)
```

