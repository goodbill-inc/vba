# Vba::GroupFlexCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_flex_create_key** | **Integer** | Unique identifier for each auto-create flex setting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_ins** | **Boolean** | Flag notifing if this piece of the member responsibility should be created as a Flex payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **co_pay** | **Boolean** | Flag notifing if this piece of the member responsibility should be created as a Flex payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **combine** | **Boolean** | Indicates if the various member responsibility amounts selected for auto flex creation should be combined into a single claim payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **create_from_plan_id** | **String** | Indicates the Plan (typically the medical plan) that will have the claim with member responsibility that needs to be moved to a flex submission. | [optional] |
| **create_to_plan_id** | **String** | Indicates the Plan (the Flex plan) that will have the member responsibility moved to in order to create the flex submission. | [optional] |
| **deductible** | **Boolean** | Flag notifing if this piece of the member responsibility should be created as a Flex payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | The effective date of this auto-create processing rule. | [optional] |
| **employee_only** | **Boolean** | A flag indicating auto created flex claims should be created for employees only, not members. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | The Ex Code that is applied to the newly created flex claim. | [optional] |
| **group_id** | **String** | References Groups.Group_ID value on the parent record. |  |
| **not_covered** | **Boolean** | Flag notifing if this piece of the member responsibility should be created as a Flex payment. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | The term date for this auto-create processing rule. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupFlexCreate.new(
  group_flex_create_key: null,
  co_ins: null,
  co_pay: null,
  combine: null,
  create_from_plan_id: null,
  create_to_plan_id: null,
  deductible: null,
  effective_date: null,
  employee_only: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  group_id: null,
  not_covered: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

