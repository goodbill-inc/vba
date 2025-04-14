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
  class EnrollmentPCPAutoAssign
    attr_accessor :options

    attr_accessor :group_criterias

    attr_accessor :network_criterias

    attr_accessor :specialty_criterias

    attr_accessor :practice_type_criterias

    attr_accessor :id_code_criterias

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'options' => :'options',
        :'group_criterias' => :'groupCriterias',
        :'network_criterias' => :'networkCriterias',
        :'specialty_criterias' => :'specialtyCriterias',
        :'practice_type_criterias' => :'practiceTypeCriterias',
        :'id_code_criterias' => :'idCodeCriterias'
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
        :'options' => :'OptionCriteria',
        :'group_criterias' => :'Array<GroupCriteria>',
        :'network_criterias' => :'Array<NetworkCriteria>',
        :'specialty_criterias' => :'Array<SpecialtyCriteria>',
        :'practice_type_criterias' => :'Array<PracticeTypeCriteria>',
        :'id_code_criterias' => :'Array<IDCodeCriteria>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'specialty_criterias',
        :'practice_type_criterias',
        :'id_code_criterias'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::EnrollmentPCPAutoAssign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::EnrollmentPCPAutoAssign`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      else
        self.options = nil
      end

      if attributes.key?(:'group_criterias')
        if (value = attributes[:'group_criterias']).is_a?(Array)
          self.group_criterias = value
        end
      else
        self.group_criterias = nil
      end

      if attributes.key?(:'network_criterias')
        if (value = attributes[:'network_criterias']).is_a?(Array)
          self.network_criterias = value
        end
      else
        self.network_criterias = nil
      end

      if attributes.key?(:'specialty_criterias')
        if (value = attributes[:'specialty_criterias']).is_a?(Array)
          self.specialty_criterias = value
        end
      end

      if attributes.key?(:'practice_type_criterias')
        if (value = attributes[:'practice_type_criterias']).is_a?(Array)
          self.practice_type_criterias = value
        end
      end

      if attributes.key?(:'id_code_criterias')
        if (value = attributes[:'id_code_criterias']).is_a?(Array)
          self.id_code_criterias = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @options.nil?
        invalid_properties.push('invalid value for "options", options cannot be nil.')
      end

      if @group_criterias.nil?
        invalid_properties.push('invalid value for "group_criterias", group_criterias cannot be nil.')
      end

      if @network_criterias.nil?
        invalid_properties.push('invalid value for "network_criterias", network_criterias cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @options.nil?
      return false if @group_criterias.nil?
      return false if @network_criterias.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] options Value to be assigned
    def options=(options)
      if options.nil?
        fail ArgumentError, 'options cannot be nil'
      end

      @options = options
    end

    # Custom attribute writer method with validation
    # @param [Object] group_criterias Value to be assigned
    def group_criterias=(group_criterias)
      if group_criterias.nil?
        fail ArgumentError, 'group_criterias cannot be nil'
      end

      @group_criterias = group_criterias
    end

    # Custom attribute writer method with validation
    # @param [Object] network_criterias Value to be assigned
    def network_criterias=(network_criterias)
      if network_criterias.nil?
        fail ArgumentError, 'network_criterias cannot be nil'
      end

      @network_criterias = network_criterias
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          options == o.options &&
          group_criterias == o.group_criterias &&
          network_criterias == o.network_criterias &&
          specialty_criterias == o.specialty_criterias &&
          practice_type_criterias == o.practice_type_criterias &&
          id_code_criterias == o.id_code_criterias
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [options, group_criterias, network_criterias, specialty_criterias, practice_type_criterias, id_code_criterias].hash
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
