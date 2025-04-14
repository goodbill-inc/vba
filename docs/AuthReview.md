# Vba::AuthReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_review_key** | **Integer** | Unique identifier for each record. |  |
| **auth_number** | **String** | Unique identifier assigned to the authorization. |  |
| **review_comment** | **String** | Allows the reviewing User to add any additional information to the review. | [optional] |
| **review_date** | **Time** | Date when the authorization was reviewed. | [optional] |
| **review_level** | **String** | Level of the review. This is configurable in &#39;Auth Configuration&#39;. | [optional] |
| **review_severity** | **String** | Severity of the review. This is configurable in &#39;Auth Configuration&#39;. | [optional] |
| **review_status** | **String** | Status of the review. This is configurable in &#39;Auth Configuration&#39;. | [optional] |
| **review_type** | **String** | Type of the review. This is configurable in &#39;Auth Configuration&#39;. | [optional] |
| **review_urgency_type** | **String** | Urgency type of the review. This is configurable in &#39;Auth Configuration&#39;. | [optional] |
| **review_user** | **String** | ID of the User who reviewed the authorization. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::AuthReview.new(
  auth_review_key: null,
  auth_number: null,
  review_comment: null,
  review_date: null,
  review_level: null,
  review_severity: null,
  review_status: null,
  review_type: null,
  review_urgency_type: null,
  review_user: null
)
```

