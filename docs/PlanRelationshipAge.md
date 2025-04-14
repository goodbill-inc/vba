# Vba::PlanRelationshipAge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_relationship_age_key** | **Integer** | Unique identifier for each Relationship Age rule. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **age_type** | **String** | Birth Date&#39; or &#39;End of Birth Month&#39; | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex Code associated with the age restriction. The selected Ex Code will apply to ages outside of the defined range. |  |
| **from_age** | **Integer** | Beginning of the range of acceptable ages. The selected Ex Code will apply to ages outside of the defined range. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **plan_id** | **String** | References the Plans.Plan_ID value in parent table. |  |
| **relate_code** | **String** | Code that identifies the relationship associated with the age restriction. |  |
| **thru_age** | **Integer** | Ending of the range of acceptable ages. The selected Ex Code will apply to ages outside of the defined range. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanRelationshipAge.new(
  plan_relationship_age_key: null,
  age_type: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  from_age: null,
  plan_id: null,
  relate_code: null,
  thru_age: null,
  update_date: null,
  update_user: null
)
```

