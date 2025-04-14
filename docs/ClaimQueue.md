# Vba::ClaimQueue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_queue_key** | **Integer** | Unique identifer for each claim queue entry.  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **queue_date** | **Time** | The date this queue was created. | [optional] |
| **queue_end** | **Time** | This notes the end adjudication time of the last claim in this queue. | [optional] |
| **queue_priority** | **Integer** | A priority identifying when a claim is picked up from the processor queue. | [optional] |
| **queue_start** | **Time** | This notes the time the first claim in this queue is picked up. | [optional] |
| **queue_status** | **String** | The status of the queue: QUEUED - the claims are actively being worked, or COMPLETE - all claims have completed their processing. | [optional] |
| **queue_type** | **String** | The type of queue being created: CHECK - adjudicate the claims or PROCESS - process the claims. | [optional] |
| **queue_user** | **String** | The user who created this queue. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimQueue.new(
  claim_queue_key: null,
  entry_date: null,
  entry_user: null,
  queue_date: null,
  queue_end: null,
  queue_priority: null,
  queue_start: null,
  queue_status: null,
  queue_type: null,
  queue_user: null,
  update_date: null,
  update_user: null
)
```

