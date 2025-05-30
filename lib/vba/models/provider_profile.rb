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
  class ProviderProfile
    # Unique identifier for each Provider Profile record.
    attr_accessor :provider_profile_key

    # The referenced dependent or \"Address\" provider record.
    attr_accessor :address_provider_id

    # The referenced parent or \"Profile\" provider record.
    attr_accessor :profile_provider_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'provider_profile_key' => :'providerProfile_Key',
        :'address_provider_id' => :'address_Provider_ID',
        :'profile_provider_id' => :'profile_Provider_ID'
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
        :'provider_profile_key' => :'Integer',
        :'address_provider_id' => :'String',
        :'profile_provider_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ProviderProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ProviderProfile`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider_profile_key')
        self.provider_profile_key = attributes[:'provider_profile_key']
      else
        self.provider_profile_key = nil
      end

      if attributes.key?(:'address_provider_id')
        self.address_provider_id = attributes[:'address_provider_id']
      else
        self.address_provider_id = nil
      end

      if attributes.key?(:'profile_provider_id')
        self.profile_provider_id = attributes[:'profile_provider_id']
      else
        self.profile_provider_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @provider_profile_key.nil?
        invalid_properties.push('invalid value for "provider_profile_key", provider_profile_key cannot be nil.')
      end

      if @address_provider_id.nil?
        invalid_properties.push('invalid value for "address_provider_id", address_provider_id cannot be nil.')
      end

      if @address_provider_id.to_s.length > 20
        invalid_properties.push('invalid value for "address_provider_id", the character length must be smaller than or equal to 20.')
      end

      if @address_provider_id.to_s.length < 1
        invalid_properties.push('invalid value for "address_provider_id", the character length must be great than or equal to 1.')
      end

      if @profile_provider_id.nil?
        invalid_properties.push('invalid value for "profile_provider_id", profile_provider_id cannot be nil.')
      end

      if @profile_provider_id.to_s.length > 20
        invalid_properties.push('invalid value for "profile_provider_id", the character length must be smaller than or equal to 20.')
      end

      if @profile_provider_id.to_s.length < 1
        invalid_properties.push('invalid value for "profile_provider_id", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @provider_profile_key.nil?
      return false if @address_provider_id.nil?
      return false if @address_provider_id.to_s.length > 20
      return false if @address_provider_id.to_s.length < 1
      return false if @profile_provider_id.nil?
      return false if @profile_provider_id.to_s.length > 20
      return false if @profile_provider_id.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_profile_key Value to be assigned
    def provider_profile_key=(provider_profile_key)
      if provider_profile_key.nil?
        fail ArgumentError, 'provider_profile_key cannot be nil'
      end

      @provider_profile_key = provider_profile_key
    end

    # Custom attribute writer method with validation
    # @param [Object] address_provider_id Value to be assigned
    def address_provider_id=(address_provider_id)
      if address_provider_id.nil?
        fail ArgumentError, 'address_provider_id cannot be nil'
      end

      if address_provider_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "address_provider_id", the character length must be smaller than or equal to 20.'
      end

      if address_provider_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "address_provider_id", the character length must be great than or equal to 1.'
      end

      @address_provider_id = address_provider_id
    end

    # Custom attribute writer method with validation
    # @param [Object] profile_provider_id Value to be assigned
    def profile_provider_id=(profile_provider_id)
      if profile_provider_id.nil?
        fail ArgumentError, 'profile_provider_id cannot be nil'
      end

      if profile_provider_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "profile_provider_id", the character length must be smaller than or equal to 20.'
      end

      if profile_provider_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "profile_provider_id", the character length must be great than or equal to 1.'
      end

      @profile_provider_id = profile_provider_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          provider_profile_key == o.provider_profile_key &&
          address_provider_id == o.address_provider_id &&
          profile_provider_id == o.profile_provider_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [provider_profile_key, address_provider_id, profile_provider_id].hash
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
