# Vba::CriteriaDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **criteria_key** | **Integer** | Unique identifier of the Criteria for which this Criteria Details object belongs.    When creating a new Critiera object, omit this from the payload. | [optional] |
| **criteria_seq** | **Integer** | The sequential order that the criteria details will be applied.   If you have multiple criteria details to add, this is important as it dictates the order in which they are applied and constructed (eg, if you have parenthesis or concatenate with AND&#39;s / OR&#39;s). |  |
| **criteria_and_or** | **String** | Specifies the AND/OR when multiple conditions are specified for a criteria.  If making a complex query, use this to concatenate multiple criteria.  For example, use the value \&quot;Or\&quot; if you want to match either this criteria or the next criteria.  If not needed, use null or omit. | [optional] |
| **criteria_column** | **String** | Column containing the value for the criteria condition specified,  The column within the Criteria_Table for whcih this criteria will be applied. | [optional] |
| **criteria_data_type** | **String** | Data type of the value for the criteria condition specified  The data type of the column value MUST be populated and MUST be one of the following values: string, date, or number | [optional] |
| **criteria_from_value** | **String** | First value of a range or only value for a single value of the criteria condition specified  The value to use against the Criteria_Operator when comparing values (eg, &gt;, &gt;&#x3D;, etc).  If a Criteria_Operator requires two values (eg, for BETWEEN) then this is the beginning value. If not needed, use null or omit. | [optional] |
| **criteria_left_paren** | **String** | Optional field used to hold a parenthesis for nesting criteria conditions  Allows you to start a parenthetical expression.  Add \&quot;(\&quot; to start the parenthesis grouping.  If not needed, use null or omit. An example of a criteria using parenthesis would be (x&#x3D;1 OR x&#x3D;2) OR (y&#x3D;1 OR y&#x3D;2). | [optional] |
| **criteria_operator** | **String** |  | [optional] |
| **criteria_right_paren** | **String** | Optional field used to hold a parenthesis for nesting criteria conditions  Allows you to end a parenthetical expression.  Add \&quot;)\&quot; to end the parenthesis grouping.  If not needed, use null or omit. An example of a criteria using parenthesis would be (x&#x3D;1 OR x&#x3D;2) OR (y&#x3D;1 OR y&#x3D;2). | [optional] |
| **criteria_table** | **String** | Table where a column for criteria condition is found  The table for which this criteria will be applied.  The table should exist within the SearchConfig that this criteria is being applied. | [optional] |
| **criteria_thru_value** | **String** | Optional ending value of a range for the criteria condition specified  If a Criteria_Operator requires two values (eg, for BETWEEN) then this is the ending value. If not needed, use null or omit. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CriteriaDetail.new(
  criteria_key: null,
  criteria_seq: null,
  criteria_and_or: null,
  criteria_column: null,
  criteria_data_type: null,
  criteria_from_value: null,
  criteria_left_paren: null,
  criteria_operator: null,
  criteria_right_paren: null,
  criteria_table: null,
  criteria_thru_value: null
)
```

