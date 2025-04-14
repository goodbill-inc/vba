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
  class DuplicateSet
    attr_accessor :duplicate_set_key

    attr_accessor :check_claim

    attr_accessor :claim_type

    attr_accessor :description

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :hard_duplicate_ex_code

    attr_accessor :no_dupe_on_denied

    attr_accessor :soft_dupe_on_denied

    attr_accessor :soft_duplicate_ex_code

    attr_accessor :update_date

    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'duplicate_set_key' => :'duplicateSet_Key',
        :'check_claim' => :'check_Claim',
        :'claim_type' => :'claim_Type',
        :'description' => :'description',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'hard_duplicate_ex_code' => :'hard_Duplicate_Ex_Code',
        :'no_dupe_on_denied' => :'no_Dupe_On_Denied',
        :'soft_dupe_on_denied' => :'soft_Dupe_On_Denied',
        :'soft_duplicate_ex_code' => :'soft_Duplicate_Ex_Code',
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
        :'duplicate_set_key' => :'Integer',
        :'check_claim' => :'Boolean',
        :'claim_type' => :'String',
        :'description' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'hard_duplicate_ex_code' => :'String',
        :'no_dupe_on_denied' => :'Boolean',
        :'soft_dupe_on_denied' => :'Boolean',
        :'soft_duplicate_ex_code' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'entry_user',
        :'hard_duplicate_ex_code',
        :'soft_duplicate_ex_code',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::DuplicateSet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::DuplicateSet`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'duplicate_set_key')
        self.duplicate_set_key = attributes[:'duplicate_set_key']
      else
        self.duplicate_set_key = nil
      end

      if attributes.key?(:'check_claim')
        self.check_claim = attributes[:'check_claim']
      else
        self.check_claim = nil
      end

      if attributes.key?(:'claim_type')
        self.claim_type = attributes[:'claim_type']
      else
        self.claim_type = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'hard_duplicate_ex_code')
        self.hard_duplicate_ex_code = attributes[:'hard_duplicate_ex_code']
      end

      if attributes.key?(:'no_dupe_on_denied')
        self.no_dupe_on_denied = attributes[:'no_dupe_on_denied']
      else
        self.no_dupe_on_denied = nil
      end

      if attributes.key?(:'soft_dupe_on_denied')
        self.soft_dupe_on_denied = attributes[:'soft_dupe_on_denied']
      else
        self.soft_dupe_on_denied = nil
      end

      if attributes.key?(:'soft_duplicate_ex_code')
        self.soft_duplicate_ex_code = attributes[:'soft_duplicate_ex_code']
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
      if @duplicate_set_key.nil?
        invalid_properties.push('invalid value for "duplicate_set_key", duplicate_set_key cannot be nil.')
      end

      if @check_claim.nil?
        invalid_properties.push('invalid value for "check_claim", check_claim cannot be nil.')
      end

      if @claim_type.nil?
        invalid_properties.push('invalid value for "claim_type", claim_type cannot be nil.')
      end

      if @claim_type.to_s.length > 20
        invalid_properties.push('invalid value for "claim_type", the character length must be smaller than or equal to 20.')
      end

      if @claim_type.to_s.length < 1
        invalid_properties.push('invalid value for "claim_type", the character length must be great than or equal to 1.')
      end

      if !@description.nil? && @description.to_s.length > 128
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 128.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@hard_duplicate_ex_code.nil? && @hard_duplicate_ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "hard_duplicate_ex_code", the character length must be smaller than or equal to 6.')
      end

      if @no_dupe_on_denied.nil?
        invalid_properties.push('invalid value for "no_dupe_on_denied", no_dupe_on_denied cannot be nil.')
      end

      if @soft_dupe_on_denied.nil?
        invalid_properties.push('invalid value for "soft_dupe_on_denied", soft_dupe_on_denied cannot be nil.')
      end

      if !@soft_duplicate_ex_code.nil? && @soft_duplicate_ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "soft_duplicate_ex_code", the character length must be smaller than or equal to 6.')
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
      return false if @duplicate_set_key.nil?
      return false if @check_claim.nil?
      return false if @claim_type.nil?
      return false if @claim_type.to_s.length > 20
      return false if @claim_type.to_s.length < 1
      return false if !@description.nil? && @description.to_s.length > 128
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@hard_duplicate_ex_code.nil? && @hard_duplicate_ex_code.to_s.length > 6
      return false if @no_dupe_on_denied.nil?
      return false if @soft_dupe_on_denied.nil?
      return false if !@soft_duplicate_ex_code.nil? && @soft_duplicate_ex_code.to_s.length > 6
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] duplicate_set_key Value to be assigned
    def duplicate_set_key=(duplicate_set_key)
      if duplicate_set_key.nil?
        fail ArgumentError, 'duplicate_set_key cannot be nil'
      end

      @duplicate_set_key = duplicate_set_key
    end

    # Custom attribute writer method with validation
    # @param [Object] check_claim Value to be assigned
    def check_claim=(check_claim)
      if check_claim.nil?
        fail ArgumentError, 'check_claim cannot be nil'
      end

      @check_claim = check_claim
    end

    # Custom attribute writer method with validation
    # @param [Object] claim_type Value to be assigned
    def claim_type=(claim_type)
      if claim_type.nil?
        fail ArgumentError, 'claim_type cannot be nil'
      end

      if claim_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "claim_type", the character length must be smaller than or equal to 20.'
      end

      if claim_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "claim_type", the character length must be great than or equal to 1.'
      end

      @claim_type = claim_type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 128
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 128.'
      end

      @description = description
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
    # @param [Object] hard_duplicate_ex_code Value to be assigned
    def hard_duplicate_ex_code=(hard_duplicate_ex_code)
      if !hard_duplicate_ex_code.nil? && hard_duplicate_ex_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "hard_duplicate_ex_code", the character length must be smaller than or equal to 6.'
      end

      @hard_duplicate_ex_code = hard_duplicate_ex_code
    end

    # Custom attribute writer method with validation
    # @param [Object] no_dupe_on_denied Value to be assigned
    def no_dupe_on_denied=(no_dupe_on_denied)
      if no_dupe_on_denied.nil?
        fail ArgumentError, 'no_dupe_on_denied cannot be nil'
      end

      @no_dupe_on_denied = no_dupe_on_denied
    end

    # Custom attribute writer method with validation
    # @param [Object] soft_dupe_on_denied Value to be assigned
    def soft_dupe_on_denied=(soft_dupe_on_denied)
      if soft_dupe_on_denied.nil?
        fail ArgumentError, 'soft_dupe_on_denied cannot be nil'
      end

      @soft_dupe_on_denied = soft_dupe_on_denied
    end

    # Custom attribute writer method with validation
    # @param [Object] soft_duplicate_ex_code Value to be assigned
    def soft_duplicate_ex_code=(soft_duplicate_ex_code)
      if !soft_duplicate_ex_code.nil? && soft_duplicate_ex_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "soft_duplicate_ex_code", the character length must be smaller than or equal to 6.'
      end

      @soft_duplicate_ex_code = soft_duplicate_ex_code
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
          duplicate_set_key == o.duplicate_set_key &&
          check_claim == o.check_claim &&
          claim_type == o.claim_type &&
          description == o.description &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          hard_duplicate_ex_code == o.hard_duplicate_ex_code &&
          no_dupe_on_denied == o.no_dupe_on_denied &&
          soft_dupe_on_denied == o.soft_dupe_on_denied &&
          soft_duplicate_ex_code == o.soft_duplicate_ex_code &&
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
      [duplicate_set_key, check_claim, claim_type, description, entry_date, entry_user, hard_duplicate_ex_code, no_dupe_on_denied, soft_dupe_on_denied, soft_duplicate_ex_code, update_date, update_user].hash
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
