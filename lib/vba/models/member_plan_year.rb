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
  class MemberPlanYear
    # Unique identifier for each custom plany year for this member.
    attr_accessor :member_plan_year_key

    # References Members.Member_Seq value on the parent record.
    attr_accessor :member_seq

    # Specifies the plan year associated with the selected Plan.
    attr_accessor :plan_year

    # Date when the plan year ends/ended.
    attr_accessor :plan_year_end

    # Date when the plan year starts/started.
    attr_accessor :plan_year_start

    # Sequence assigned to this Plan Year record within this configuration.
    attr_accessor :seq

    # References Members.Subscriber_ID value on the parent record.
    attr_accessor :subscriber_id

    # The calendar year associated with this Plan Year (used in instances where the plan year is not a calendar year).
    attr_accessor :year

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'member_plan_year_key' => :'memberPlanYear_Key',
        :'member_seq' => :'member_Seq',
        :'plan_year' => :'plan_Year',
        :'plan_year_end' => :'plan_Year_End',
        :'plan_year_start' => :'plan_Year_Start',
        :'seq' => :'seq',
        :'subscriber_id' => :'subscriber_ID',
        :'year' => :'year'
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
        :'member_plan_year_key' => :'Integer',
        :'member_seq' => :'String',
        :'plan_year' => :'String',
        :'plan_year_end' => :'Time',
        :'plan_year_start' => :'Time',
        :'seq' => :'Integer',
        :'subscriber_id' => :'String',
        :'year' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::MemberPlanYear` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::MemberPlanYear`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'member_plan_year_key')
        self.member_plan_year_key = attributes[:'member_plan_year_key']
      else
        self.member_plan_year_key = nil
      end

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      else
        self.member_seq = nil
      end

      if attributes.key?(:'plan_year')
        self.plan_year = attributes[:'plan_year']
      else
        self.plan_year = nil
      end

      if attributes.key?(:'plan_year_end')
        self.plan_year_end = attributes[:'plan_year_end']
      else
        self.plan_year_end = nil
      end

      if attributes.key?(:'plan_year_start')
        self.plan_year_start = attributes[:'plan_year_start']
      else
        self.plan_year_start = nil
      end

      if attributes.key?(:'seq')
        self.seq = attributes[:'seq']
      else
        self.seq = nil
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      else
        self.subscriber_id = nil
      end

      if attributes.key?(:'year')
        self.year = attributes[:'year']
      else
        self.year = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @member_plan_year_key.nil?
        invalid_properties.push('invalid value for "member_plan_year_key", member_plan_year_key cannot be nil.')
      end

      if @member_seq.nil?
        invalid_properties.push('invalid value for "member_seq", member_seq cannot be nil.')
      end

      if @member_seq.to_s.length > 2
        invalid_properties.push('invalid value for "member_seq", the character length must be smaller than or equal to 2.')
      end

      if @member_seq.to_s.length < 1
        invalid_properties.push('invalid value for "member_seq", the character length must be great than or equal to 1.')
      end

      if @plan_year.nil?
        invalid_properties.push('invalid value for "plan_year", plan_year cannot be nil.')
      end

      if @plan_year.to_s.length > 8
        invalid_properties.push('invalid value for "plan_year", the character length must be smaller than or equal to 8.')
      end

      if @plan_year.to_s.length < 1
        invalid_properties.push('invalid value for "plan_year", the character length must be great than or equal to 1.')
      end

      if @plan_year_end.nil?
        invalid_properties.push('invalid value for "plan_year_end", plan_year_end cannot be nil.')
      end

      if @plan_year_start.nil?
        invalid_properties.push('invalid value for "plan_year_start", plan_year_start cannot be nil.')
      end

      if @seq.nil?
        invalid_properties.push('invalid value for "seq", seq cannot be nil.')
      end

      if @subscriber_id.nil?
        invalid_properties.push('invalid value for "subscriber_id", subscriber_id cannot be nil.')
      end

      if @subscriber_id.to_s.length > 9
        invalid_properties.push('invalid value for "subscriber_id", the character length must be smaller than or equal to 9.')
      end

      if @subscriber_id.to_s.length < 1
        invalid_properties.push('invalid value for "subscriber_id", the character length must be great than or equal to 1.')
      end

      if @year.nil?
        invalid_properties.push('invalid value for "year", year cannot be nil.')
      end

      if @year.to_s.length > 4
        invalid_properties.push('invalid value for "year", the character length must be smaller than or equal to 4.')
      end

      if @year.to_s.length < 1
        invalid_properties.push('invalid value for "year", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @member_plan_year_key.nil?
      return false if @member_seq.nil?
      return false if @member_seq.to_s.length > 2
      return false if @member_seq.to_s.length < 1
      return false if @plan_year.nil?
      return false if @plan_year.to_s.length > 8
      return false if @plan_year.to_s.length < 1
      return false if @plan_year_end.nil?
      return false if @plan_year_start.nil?
      return false if @seq.nil?
      return false if @subscriber_id.nil?
      return false if @subscriber_id.to_s.length > 9
      return false if @subscriber_id.to_s.length < 1
      return false if @year.nil?
      return false if @year.to_s.length > 4
      return false if @year.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] member_plan_year_key Value to be assigned
    def member_plan_year_key=(member_plan_year_key)
      if member_plan_year_key.nil?
        fail ArgumentError, 'member_plan_year_key cannot be nil'
      end

      @member_plan_year_key = member_plan_year_key
    end

    # Custom attribute writer method with validation
    # @param [Object] member_seq Value to be assigned
    def member_seq=(member_seq)
      if member_seq.nil?
        fail ArgumentError, 'member_seq cannot be nil'
      end

      if member_seq.to_s.length > 2
        fail ArgumentError, 'invalid value for "member_seq", the character length must be smaller than or equal to 2.'
      end

      if member_seq.to_s.length < 1
        fail ArgumentError, 'invalid value for "member_seq", the character length must be great than or equal to 1.'
      end

      @member_seq = member_seq
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_year Value to be assigned
    def plan_year=(plan_year)
      if plan_year.nil?
        fail ArgumentError, 'plan_year cannot be nil'
      end

      if plan_year.to_s.length > 8
        fail ArgumentError, 'invalid value for "plan_year", the character length must be smaller than or equal to 8.'
      end

      if plan_year.to_s.length < 1
        fail ArgumentError, 'invalid value for "plan_year", the character length must be great than or equal to 1.'
      end

      @plan_year = plan_year
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_year_end Value to be assigned
    def plan_year_end=(plan_year_end)
      if plan_year_end.nil?
        fail ArgumentError, 'plan_year_end cannot be nil'
      end

      @plan_year_end = plan_year_end
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_year_start Value to be assigned
    def plan_year_start=(plan_year_start)
      if plan_year_start.nil?
        fail ArgumentError, 'plan_year_start cannot be nil'
      end

      @plan_year_start = plan_year_start
    end

    # Custom attribute writer method with validation
    # @param [Object] seq Value to be assigned
    def seq=(seq)
      if seq.nil?
        fail ArgumentError, 'seq cannot be nil'
      end

      @seq = seq
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber_id Value to be assigned
    def subscriber_id=(subscriber_id)
      if subscriber_id.nil?
        fail ArgumentError, 'subscriber_id cannot be nil'
      end

      if subscriber_id.to_s.length > 9
        fail ArgumentError, 'invalid value for "subscriber_id", the character length must be smaller than or equal to 9.'
      end

      if subscriber_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "subscriber_id", the character length must be great than or equal to 1.'
      end

      @subscriber_id = subscriber_id
    end

    # Custom attribute writer method with validation
    # @param [Object] year Value to be assigned
    def year=(year)
      if year.nil?
        fail ArgumentError, 'year cannot be nil'
      end

      if year.to_s.length > 4
        fail ArgumentError, 'invalid value for "year", the character length must be smaller than or equal to 4.'
      end

      if year.to_s.length < 1
        fail ArgumentError, 'invalid value for "year", the character length must be great than or equal to 1.'
      end

      @year = year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          member_plan_year_key == o.member_plan_year_key &&
          member_seq == o.member_seq &&
          plan_year == o.plan_year &&
          plan_year_end == o.plan_year_end &&
          plan_year_start == o.plan_year_start &&
          seq == o.seq &&
          subscriber_id == o.subscriber_id &&
          year == o.year
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [member_plan_year_key, member_seq, plan_year, plan_year_end, plan_year_start, seq, subscriber_id, year].hash
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
