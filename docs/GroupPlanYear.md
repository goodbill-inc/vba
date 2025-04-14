# Vba::GroupPlanYear

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References GroupDivision.Group_ID value on the parent record. |  |
| **division_id** | **String** | References GroupDivision.Division_ID value on the parent record. |  |
| **plan_year** | **String** | User defined Plan Year value for this accumulator period. Should denote the values in From_Date and Thru_Date. Example: Plan Year \&quot;CY2009\&quot; would be 1/1/2009 - 12/31/2009. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | If an Ex_Code should be applied when a claim is identified for carry over, place that here. | [optional] |
| **from_date** | **Time** | The date range for this Plan Year. | [optional] |
| **plan_type** | **String** | If this Plan Year is specific to a Plan Type, you would denote that here. Normally no value is set for standard accumulation. | [optional] |
| **qtr4_accum** | **Boolean** | Indicates if this Plan Year has 4th quarter carry-over. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **qtr4_benefit_code** | **String** | When accumulators are carried over they are bucketed into a single Benefit Code (typically a shell Benefit Code to catch the carry-over dollars). | [optional] |
| **qtr4_deductible** | **Boolean** | Indicates if carry-over applies to Deductible. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **qtr4_from_date** | **Time** | If this Plan Year has 4th quarter carrry-over, this would indiate the dates, inside From_Date and Thru_Date, that signify the 4th quarter carry-over period. | [optional] |
| **qtr4_member** | **Boolean** | Indicates if the carry-over applies to Member level accumulators. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **qtr4_out_of_pocket** | **Boolean** | Indicates if carry-over applies to Out of Pocket. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **qtr4_out_of_pocket_type** | **String** | If Out of Pocket carry-over is flagged, this identifies what constitutes Out of Pocket (Deductible, Co-Ins, Co-Pay). | [optional] |
| **qtr4_plan_year** | **String** | Indicates which Plan Year these carry-over accumulators will carry over to (typically a plan year on the other side of the carry-over period). | [optional] |
| **qtr4_subscriber** | **Boolean** | Indicates if the carry-over applies to the entire Family for accumulators. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **qtr4_thru_date** | **Time** | If this Plan Year has 4th quarter carrry-over, this would indiate the dates, inside From_Date and Thru_Date, that signify the 4th quarter carry-over period. | [optional] |
| **thru_date** | **Time** | The date range for this Plan Year. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupPlanYear.new(
  group_id: null,
  division_id: null,
  plan_year: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  from_date: null,
  plan_type: null,
  qtr4_accum: null,
  qtr4_benefit_code: null,
  qtr4_deductible: null,
  qtr4_from_date: null,
  qtr4_member: null,
  qtr4_out_of_pocket: null,
  qtr4_out_of_pocket_type: null,
  qtr4_plan_year: null,
  qtr4_subscriber: null,
  qtr4_thru_date: null,
  thru_date: null,
  update_date: null,
  update_user: null
)
```

