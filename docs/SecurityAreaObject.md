# Vba::SecurityAreaObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_area** | **String** | Name of the security area that the displayed security options will apply to. |  |
| **object_name** | **String** | Name of the object from the object list. The purpose of this list is to allow the Administrator to select which objects will be contained within the associated ‘Security Area’. The User may select objects from this list, right-click, and select &#39;Apply Selected&#39; from the context menu. |  |

## Example

```ruby
require 'vba'

instance = Vba::SecurityAreaObject.new(
  security_area: null,
  object_name: null
)
```

