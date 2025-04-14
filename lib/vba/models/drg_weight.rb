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
  class DRGWeight
    # Identifier for DRG Schedule
    attr_accessor :dr_g_schedule

    # Code identifying a specific DRG
    attr_accessor :dr_g_code

    # Date the DRG Schedule becomes effective
    attr_accessor :effective_date

    # Date the DRG Schedule terminates
    attr_accessor :term_date

    # Weight that is applied to the specified DRG
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dr_g_schedule' => :'drG_Schedule',
        :'dr_g_code' => :'drG_Code',
        :'effective_date' => :'effective_Date',
        :'term_date' => :'term_Date',
        :'weight' => :'weight'
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
        :'dr_g_schedule' => :'String',
        :'dr_g_code' => :'String',
        :'effective_date' => :'Time',
        :'term_date' => :'Time',
        :'weight' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'term_date',
        :'weight'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::DRGWeight` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::DRGWeight`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dr_g_schedule')
        self.dr_g_schedule = attributes[:'dr_g_schedule']
      else
        self.dr_g_schedule = nil
      end

      if attributes.key?(:'dr_g_code')
        self.dr_g_code = attributes[:'dr_g_code']
      else
        self.dr_g_code = nil
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      else
        self.effective_date = nil
      end

      if attributes.key?(:'term_date')
        self.term_date = attributes[:'term_date']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @dr_g_schedule.nil?
        invalid_properties.push('invalid value for "dr_g_schedule", dr_g_schedule cannot be nil.')
      end

      if @dr_g_schedule.to_s.length > 16
        invalid_properties.push('invalid value for "dr_g_schedule", the character length must be smaller than or equal to 16.')
      end

      if @dr_g_schedule.to_s.length < 1
        invalid_properties.push('invalid value for "dr_g_schedule", the character length must be great than or equal to 1.')
      end

      if @dr_g_code.nil?
        invalid_properties.push('invalid value for "dr_g_code", dr_g_code cannot be nil.')
      end

      if @dr_g_code.to_s.length > 8
        invalid_properties.push('invalid value for "dr_g_code", the character length must be smaller than or equal to 8.')
      end

      if @dr_g_code.to_s.length < 1
        invalid_properties.push('invalid value for "dr_g_code", the character length must be great than or equal to 1.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @dr_g_schedule.nil?
      return false if @dr_g_schedule.to_s.length > 16
      return false if @dr_g_schedule.to_s.length < 1
      return false if @dr_g_code.nil?
      return false if @dr_g_code.to_s.length > 8
      return false if @dr_g_code.to_s.length < 1
      return false if @effective_date.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dr_g_schedule Value to be assigned
    def dr_g_schedule=(dr_g_schedule)
      if dr_g_schedule.nil?
        fail ArgumentError, 'dr_g_schedule cannot be nil'
      end

      if dr_g_schedule.to_s.length > 16
        fail ArgumentError, 'invalid value for "dr_g_schedule", the character length must be smaller than or equal to 16.'
      end

      if dr_g_schedule.to_s.length < 1
        fail ArgumentError, 'invalid value for "dr_g_schedule", the character length must be great than or equal to 1.'
      end

      @dr_g_schedule = dr_g_schedule
    end

    # Custom attribute writer method with validation
    # @param [Object] dr_g_code Value to be assigned
    def dr_g_code=(dr_g_code)
      if dr_g_code.nil?
        fail ArgumentError, 'dr_g_code cannot be nil'
      end

      if dr_g_code.to_s.length > 8
        fail ArgumentError, 'invalid value for "dr_g_code", the character length must be smaller than or equal to 8.'
      end

      if dr_g_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "dr_g_code", the character length must be great than or equal to 1.'
      end

      @dr_g_code = dr_g_code
    end

    # Custom attribute writer method with validation
    # @param [Object] effective_date Value to be assigned
    def effective_date=(effective_date)
      if effective_date.nil?
        fail ArgumentError, 'effective_date cannot be nil'
      end

      @effective_date = effective_date
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dr_g_schedule == o.dr_g_schedule &&
          dr_g_code == o.dr_g_code &&
          effective_date == o.effective_date &&
          term_date == o.term_date &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dr_g_schedule, dr_g_code, effective_date, term_date, weight].hash
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
