# Vba::PlanType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_type** | **String** | Unique identifier for each plan type that Identifies the Type of Plan (medical, dental, etc.). |  |
| **capitated** | **Boolean** | Indicates whether the associated plan should be capitated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claims** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **dental** | **Boolean** | Indicates whether the specified plan type is a Dental Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | A description area used to provider more detail about the plan type. | [optional] |
| **disc_fee** | **Boolean** | Indicates whether the specified plan type is associated with a Discount Fee. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **discount_card** | **Boolean** | Indicates whether the specified plan type is a associated with a discount card. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **encounters** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **hipa_a_code** | **String** | HIPAA Code associated with the specified plan type. | [optional] |
| **hra** | **Boolean** | Indicates whether the specified plan type is a HRA Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **hsa** | **Boolean** | Indicates whether the specified plan type is a HSA Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **i_d_card_description** | **String** | Shortened description of the plan type that is used to print on ID cards. | [optional] |
| **indemnity** | **Boolean** | Indicates whether the specified plan type is an Indemnity Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ltc** | **Boolean** | Indicates if this plan type is a LTC plan type. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ltd** | **Boolean** | Indicates whether the specified plan type is a Long-Term Disability Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **life_add** | **Boolean** | Indicates whether the specified plan type is a Life/ADD Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **medical** | **Boolean** | Indicates whether the specified plan type is a Medical Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **misc** | **Boolean** | Indicates if this plan type is a miscellaneous plan type. |  |
| **pay_as_you_go** | **Boolean** | No longer in use. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pension** | **Boolean** | Indicates if this plan type is a Pension plan type. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **pharmacy** | **Boolean** | Indicates whether the specified plan type is a Pharmacy Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **print_on_id** | **Boolean** | Indicates whether the specified plan type should be printed on ID cards. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **std** | **Boolean** | Indicates whether the specified plan type is a Short-Term Disability Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **section125** | **Boolean** | Indicates whether the specified plan type is a Section 125 Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **tier_required** | **Boolean** | This flag indicates Tier is a required field when updating an enrollment Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **vision** | **Boolean** | Indicates whether the specified plan type is a Vision Plan. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::PlanType.new(
  plan_type: null,
  capitated: null,
  claims: null,
  dental: null,
  description: null,
  disc_fee: null,
  discount_card: null,
  encounters: null,
  entry_date: null,
  entry_user: null,
  hipa_a_code: null,
  hra: null,
  hsa: null,
  i_d_card_description: null,
  indemnity: null,
  ltc: null,
  ltd: null,
  life_add: null,
  medical: null,
  misc: null,
  pay_as_you_go: null,
  pension: null,
  pharmacy: null,
  print_on_id: null,
  std: null,
  section125: null,
  tier_required: null,
  update_date: null,
  update_user: null,
  vision: null
)
```

