# Vba::PlanBenefitLevel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_benefit_level_key** | **Integer** | Unique idenfitier assigned to the Plan Benefit Level. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **benefit_code** | **String** | References the PlanBenefits.Benefit_Code value in parent table. |  |
| **benefit_level** | **String** | Unique identifier assigned to the Plan Benefit Level: Age by Service Date - age of the Member by the service date of the claim. Age by Received Date - age of the Member by the received date of the claim. Relationship Code - relationship of the Member to the Subscriber. Months Enrolled in Plan - range of months the Member has been enrolled in the plan. Days Enrolled in Plan - range of days the Member has been enrolled in the plan. Network - network of the claim. Out of Network - claim is out of network. Billed Amount - range of billed amount of the service line. Modifier - modifier exists on the service line. Exact Modifier - modifier exists in the exact location on the service line. No Modifier - no modifier exists on the service line. Exclude Modifier - modifier does not exist on the service line. Exclude Exact Modifier - modifier does not exist in the exact location on the service line. Gender - biological sex of the Member. Billing Taxonomy - taxonomy of the billing Provider must be included in the taxonomy group. Rendering Taxonomy - taxonomy of the rendering Provider must be included in the taxonomy group. Service Facility Taxonomy - taxonomy of the facility Provider must be included in the taxonomy group. Procedure Category - procedure code on the service line must fall into the indicated procedure category. Procedure Cluster - procedure code on the service line must fall into the indicated procedure cluster. Provider Federal ID - federal ID of the claim&#39;s Provider. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **exclude** | **Boolean** | Indicates whether the specified code is included or excluded. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **extra_value1** | **String** | Additional value that may be associated with the Benefit Level. | [optional] |
| **extra_value2** | **String** | Additional value that may be associated with the Benefit Level. | [optional] |
| **from_value** | **String** | Initial value in the range of values. | [optional] |
| **plan_id** | **String** | References the PlanBenefits.Plan_ID value in parent table. | [optional] |
| **thru_value** | **String** | Final value in the range of values. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **value_type** | **String** | Specifies the type or measure of the associated Benefit Level values. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitLevel.new(
  plan_benefit_level_key: null,
  benefit_code: null,
  benefit_level: null,
  entry_date: null,
  entry_user: null,
  exclude: null,
  extra_value1: null,
  extra_value2: null,
  from_value: null,
  plan_id: null,
  thru_value: null,
  update_date: null,
  update_user: null,
  value_type: null
)
```

