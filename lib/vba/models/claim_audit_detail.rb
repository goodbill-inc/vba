=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module Vba
  class ClaimAuditDetail
    attr_accessor :claim_audit_detail_key

    attr_accessor :appeal

    attr_accessor :appeal_date

    attr_accessor :appeal_overturn

    attr_accessor :appeal_overturn_date

    attr_accessor :appeal_overturn_reason

    attr_accessor :appeal_reason

    attr_accessor :appeal_result

    attr_accessor :audit_discrepancy

    attr_accessor :batch_claim

    attr_accessor :batch_number

    attr_accessor :claim_audit_key

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :update_date

    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'claim_audit_detail_key' => :'claimAuditDetail_Key',
        :'appeal' => :'appeal',
        :'appeal_date' => :'appeal_Date',
        :'appeal_overturn' => :'appeal_Overturn',
        :'appeal_overturn_date' => :'appeal_Overturn_Date',
        :'appeal_overturn_reason' => :'appeal_Overturn_Reason',
        :'appeal_reason' => :'appeal_Reason',
        :'appeal_result' => :'appeal_Result',
        :'audit_discrepancy' => :'audit_Discrepancy',
        :'batch_claim' => :'batch_Claim',
        :'batch_number' => :'batch_Number',
        :'claim_audit_key' => :'claimAudit_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'claim_audit_detail_key' => :'Integer',
        :'appeal' => :'Boolean',
        :'appeal_date' => :'Time',
        :'appeal_overturn' => :'Boolean',
        :'appeal_overturn_date' => :'Time',
        :'appeal_overturn_reason' => :'String',
        :'appeal_reason' => :'String',
        :'appeal_result' => :'String',
        :'audit_discrepancy' => :'Float',
        :'batch_claim' => :'Integer',
        :'batch_number' => :'Integer',
        :'claim_audit_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'appeal_date',
        :'appeal_overturn_date',
        :'appeal_overturn_reason',
        :'appeal_reason',
        :'appeal_result',
        :'audit_discrepancy',
        :'entry_date',
        :'entry_user',
        :'update_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ClaimAuditDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ClaimAuditDetail`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'claim_audit_detail_key')
        self.claim_audit_detail_key = attributes[:'claim_audit_detail_key']
      else
        self.claim_audit_detail_key = nil
      end

      if attributes.key?(:'appeal')
        self.appeal = attributes[:'appeal']
      else
        self.appeal = nil
      end

      if attributes.key?(:'appeal_date')
        self.appeal_date = attributes[:'appeal_date']
      end

      if attributes.key?(:'appeal_overturn')
        self.appeal_overturn = attributes[:'appeal_overturn']
      else
        self.appeal_overturn = nil
      end

      if attributes.key?(:'appeal_overturn_date')
        self.appeal_overturn_date = attributes[:'appeal_overturn_date']
      end

      if attributes.key?(:'appeal_overturn_reason')
        self.appeal_overturn_reason = attributes[:'appeal_overturn_reason']
      end

      if attributes.key?(:'appeal_reason')
        self.appeal_reason = attributes[:'appeal_reason']
      end

      if attributes.key?(:'appeal_result')
        self.appeal_result = attributes[:'appeal_result']
      end

      if attributes.key?(:'audit_discrepancy')
        self.audit_discrepancy = attributes[:'audit_discrepancy']
      end

      if attributes.key?(:'batch_claim')
        self.batch_claim = attributes[:'batch_claim']
      else
        self.batch_claim = nil
      end

      if attributes.key?(:'batch_number')
        self.batch_number = attributes[:'batch_number']
      else
        self.batch_number = nil
      end

      if attributes.key?(:'claim_audit_key')
        self.claim_audit_key = attributes[:'claim_audit_key']
      else
        self.claim_audit_key = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @claim_audit_detail_key.nil?
        invalid_properties.push('invalid value for "claim_audit_detail_key", claim_audit_detail_key cannot be nil.')
      end

      if @appeal.nil?
        invalid_properties.push('invalid value for "appeal", appeal cannot be nil.')
      end

      if @appeal_overturn.nil?
        invalid_properties.push('invalid value for "appeal_overturn", appeal_overturn cannot be nil.')
      end

      if !@appeal_overturn_reason.nil? && @appeal_overturn_reason.to_s.length > 32
        invalid_properties.push('invalid value for "appeal_overturn_reason", the character length must be smaller than or equal to 32.')
      end

      if !@appeal_reason.nil? && @appeal_reason.to_s.length > 32
        invalid_properties.push('invalid value for "appeal_reason", the character length must be smaller than or equal to 32.')
      end

      if !@appeal_result.nil? && @appeal_result.to_s.length > 32
        invalid_properties.push('invalid value for "appeal_result", the character length must be smaller than or equal to 32.')
      end

      if @batch_claim.nil?
        invalid_properties.push('invalid value for "batch_claim", batch_claim cannot be nil.')
      end

      if @batch_number.nil?
        invalid_properties.push('invalid value for "batch_number", batch_number cannot be nil.')
      end

      if @claim_audit_key.nil?
        invalid_properties.push('invalid value for "claim_audit_key", claim_audit_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @claim_audit_detail_key.nil?
      return false if @appeal.nil?
      return false if @appeal_overturn.nil?
      return false if !@appeal_overturn_reason.nil? && @appeal_overturn_reason.to_s.length > 32
      return false if !@appeal_reason.nil? && @appeal_reason.to_s.length > 32
      return false if !@appeal_result.nil? && @appeal_result.to_s.length > 32
      return false if @batch_claim.nil?
      return false if @batch_number.nil?
      return false if @claim_audit_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] claim_audit_detail_key Value to be assigned
    def claim_audit_detail_key=(claim_audit_detail_key)
      if claim_audit_detail_key.nil?
        fail ArgumentError, 'claim_audit_detail_key cannot be nil'
      end

      @claim_audit_detail_key = claim_audit_detail_key
    end

    # Custom attribute writer method with validation
    # @param [Object] appeal Value to be assigned
    def appeal=(appeal)
      if appeal.nil?
        fail ArgumentError, 'appeal cannot be nil'
      end

      @appeal = appeal
    end

    # Custom attribute writer method with validation
    # @param [Object] appeal_overturn Value to be assigned
    def appeal_overturn=(appeal_overturn)
      if appeal_overturn.nil?
        fail ArgumentError, 'appeal_overturn cannot be nil'
      end

      @appeal_overturn = appeal_overturn
    end

    # Custom attribute writer method with validation
    # @param [Object] appeal_overturn_reason Value to be assigned
    def appeal_overturn_reason=(appeal_overturn_reason)
      if !appeal_overturn_reason.nil? && appeal_overturn_reason.to_s.length > 32
        fail ArgumentError, 'invalid value for "appeal_overturn_reason", the character length must be smaller than or equal to 32.'
      end

      @appeal_overturn_reason = appeal_overturn_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] appeal_reason Value to be assigned
    def appeal_reason=(appeal_reason)
      if !appeal_reason.nil? && appeal_reason.to_s.length > 32
        fail ArgumentError, 'invalid value for "appeal_reason", the character length must be smaller than or equal to 32.'
      end

      @appeal_reason = appeal_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] appeal_result Value to be assigned
    def appeal_result=(appeal_result)
      if !appeal_result.nil? && appeal_result.to_s.length > 32
        fail ArgumentError, 'invalid value for "appeal_result", the character length must be smaller than or equal to 32.'
      end

      @appeal_result = appeal_result
    end

    # Custom attribute writer method with validation
    # @param [Object] batch_claim Value to be assigned
    def batch_claim=(batch_claim)
      if batch_claim.nil?
        fail ArgumentError, 'batch_claim cannot be nil'
      end

      @batch_claim = batch_claim
    end

    # Custom attribute writer method with validation
    # @param [Object] batch_number Value to be assigned
    def batch_number=(batch_number)
      if batch_number.nil?
        fail ArgumentError, 'batch_number cannot be nil'
      end

      @batch_number = batch_number
    end

    # Custom attribute writer method with validation
    # @param [Object] claim_audit_key Value to be assigned
    def claim_audit_key=(claim_audit_key)
      if claim_audit_key.nil?
        fail ArgumentError, 'claim_audit_key cannot be nil'
      end

      @claim_audit_key = claim_audit_key
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_user Value to be assigned
    def entry_user=(entry_user)
      if !entry_user.nil? && entry_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "entry_user", the character length must be smaller than or equal to 20.'
      end

      @entry_user = entry_user
    end

    # Custom attribute writer method with validation
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 20.'
      end

      @update_user = update_user
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          claim_audit_detail_key == o.claim_audit_detail_key &&
          appeal == o.appeal &&
          appeal_date == o.appeal_date &&
          appeal_overturn == o.appeal_overturn &&
          appeal_overturn_date == o.appeal_overturn_date &&
          appeal_overturn_reason == o.appeal_overturn_reason &&
          appeal_reason == o.appeal_reason &&
          appeal_result == o.appeal_result &&
          audit_discrepancy == o.audit_discrepancy &&
          batch_claim == o.batch_claim &&
          batch_number == o.batch_number &&
          claim_audit_key == o.claim_audit_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          update_date == o.update_date &&
          update_user == o.update_user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [claim_audit_detail_key, appeal, appeal_date, appeal_overturn, appeal_overturn_date, appeal_overturn_reason, appeal_reason, appeal_result, audit_discrepancy, batch_claim, batch_number, claim_audit_key, entry_date, entry_user, update_date, update_user].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Vba.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
