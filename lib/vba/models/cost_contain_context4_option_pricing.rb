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
  class CostContainContext4OptionPricing
    attr_accessor :option_key

    attr_accessor :claim_type

    attr_accessor :context4_clm_ucr_pct

    attr_accessor :context4_clm_ucr_pct_oon

    attr_accessor :context4_medicare_pct

    attr_accessor :context4_medicare_pct_oon

    attr_accessor :context4_pct_of_chg

    attr_accessor :context4_pct_of_chg_oon

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :plan_id

    attr_accessor :provider_type

    attr_accessor :specialty_code

    attr_accessor :update_date

    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'option_key' => :'option_Key',
        :'claim_type' => :'claim_Type',
        :'context4_clm_ucr_pct' => :'context4_ClmUcrPct',
        :'context4_clm_ucr_pct_oon' => :'context4_ClmUcrPct_OON',
        :'context4_medicare_pct' => :'context4_MedicarePct',
        :'context4_medicare_pct_oon' => :'context4_MedicarePct_OON',
        :'context4_pct_of_chg' => :'context4_PctOfChg',
        :'context4_pct_of_chg_oon' => :'context4_PctOfChg_OON',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'plan_id' => :'plan_ID',
        :'provider_type' => :'provider_Type',
        :'specialty_code' => :'specialty_Code',
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
        :'option_key' => :'Integer',
        :'claim_type' => :'String',
        :'context4_clm_ucr_pct' => :'Integer',
        :'context4_clm_ucr_pct_oon' => :'Integer',
        :'context4_medicare_pct' => :'Integer',
        :'context4_medicare_pct_oon' => :'Integer',
        :'context4_pct_of_chg' => :'Integer',
        :'context4_pct_of_chg_oon' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'plan_id' => :'String',
        :'provider_type' => :'String',
        :'specialty_code' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'claim_type',
        :'context4_clm_ucr_pct',
        :'context4_clm_ucr_pct_oon',
        :'context4_medicare_pct',
        :'context4_medicare_pct_oon',
        :'context4_pct_of_chg',
        :'context4_pct_of_chg_oon',
        :'entry_user',
        :'provider_type',
        :'specialty_code',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CostContainContext4OptionPricing` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CostContainContext4OptionPricing`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'option_key')
        self.option_key = attributes[:'option_key']
      else
        self.option_key = nil
      end

      if attributes.key?(:'claim_type')
        self.claim_type = attributes[:'claim_type']
      end

      if attributes.key?(:'context4_clm_ucr_pct')
        self.context4_clm_ucr_pct = attributes[:'context4_clm_ucr_pct']
      end

      if attributes.key?(:'context4_clm_ucr_pct_oon')
        self.context4_clm_ucr_pct_oon = attributes[:'context4_clm_ucr_pct_oon']
      end

      if attributes.key?(:'context4_medicare_pct')
        self.context4_medicare_pct = attributes[:'context4_medicare_pct']
      end

      if attributes.key?(:'context4_medicare_pct_oon')
        self.context4_medicare_pct_oon = attributes[:'context4_medicare_pct_oon']
      end

      if attributes.key?(:'context4_pct_of_chg')
        self.context4_pct_of_chg = attributes[:'context4_pct_of_chg']
      end

      if attributes.key?(:'context4_pct_of_chg_oon')
        self.context4_pct_of_chg_oon = attributes[:'context4_pct_of_chg_oon']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      else
        self.plan_id = nil
      end

      if attributes.key?(:'provider_type')
        self.provider_type = attributes[:'provider_type']
      end

      if attributes.key?(:'specialty_code')
        self.specialty_code = attributes[:'specialty_code']
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
      if @option_key.nil?
        invalid_properties.push('invalid value for "option_key", option_key cannot be nil.')
      end

      if !@claim_type.nil? && @claim_type.to_s.length > 20
        invalid_properties.push('invalid value for "claim_type", the character length must be smaller than or equal to 20.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.nil?
        invalid_properties.push('invalid value for "plan_id", plan_id cannot be nil.')
      end

      if @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.to_s.length < 1
        invalid_properties.push('invalid value for "plan_id", the character length must be great than or equal to 1.')
      end

      if !@provider_type.nil? && @provider_type.to_s.length > 10
        invalid_properties.push('invalid value for "provider_type", the character length must be smaller than or equal to 10.')
      end

      if !@specialty_code.nil? && @specialty_code.to_s.length > 10
        invalid_properties.push('invalid value for "specialty_code", the character length must be smaller than or equal to 10.')
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
      return false if @option_key.nil?
      return false if !@claim_type.nil? && @claim_type.to_s.length > 20
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @plan_id.nil?
      return false if @plan_id.to_s.length > 20
      return false if @plan_id.to_s.length < 1
      return false if !@provider_type.nil? && @provider_type.to_s.length > 10
      return false if !@specialty_code.nil? && @specialty_code.to_s.length > 10
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] option_key Value to be assigned
    def option_key=(option_key)
      if option_key.nil?
        fail ArgumentError, 'option_key cannot be nil'
      end

      @option_key = option_key
    end

    # Custom attribute writer method with validation
    # @param [Object] claim_type Value to be assigned
    def claim_type=(claim_type)
      if !claim_type.nil? && claim_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "claim_type", the character length must be smaller than or equal to 20.'
      end

      @claim_type = claim_type
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
    # @param [Object] plan_id Value to be assigned
    def plan_id=(plan_id)
      if plan_id.nil?
        fail ArgumentError, 'plan_id cannot be nil'
      end

      if plan_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "plan_id", the character length must be smaller than or equal to 20.'
      end

      if plan_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "plan_id", the character length must be great than or equal to 1.'
      end

      @plan_id = plan_id
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_type Value to be assigned
    def provider_type=(provider_type)
      if !provider_type.nil? && provider_type.to_s.length > 10
        fail ArgumentError, 'invalid value for "provider_type", the character length must be smaller than or equal to 10.'
      end

      @provider_type = provider_type
    end

    # Custom attribute writer method with validation
    # @param [Object] specialty_code Value to be assigned
    def specialty_code=(specialty_code)
      if !specialty_code.nil? && specialty_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "specialty_code", the character length must be smaller than or equal to 10.'
      end

      @specialty_code = specialty_code
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
          option_key == o.option_key &&
          claim_type == o.claim_type &&
          context4_clm_ucr_pct == o.context4_clm_ucr_pct &&
          context4_clm_ucr_pct_oon == o.context4_clm_ucr_pct_oon &&
          context4_medicare_pct == o.context4_medicare_pct &&
          context4_medicare_pct_oon == o.context4_medicare_pct_oon &&
          context4_pct_of_chg == o.context4_pct_of_chg &&
          context4_pct_of_chg_oon == o.context4_pct_of_chg_oon &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          plan_id == o.plan_id &&
          provider_type == o.provider_type &&
          specialty_code == o.specialty_code &&
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
      [option_key, claim_type, context4_clm_ucr_pct, context4_clm_ucr_pct_oon, context4_medicare_pct, context4_medicare_pct_oon, context4_pct_of_chg, context4_pct_of_chg_oon, entry_date, entry_user, plan_id, provider_type, specialty_code, update_date, update_user].hash
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
