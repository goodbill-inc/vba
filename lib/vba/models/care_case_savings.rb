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
  class CareCaseSavings
    attr_accessor :care_case_savings_key

    attr_accessor :case_key

    attr_accessor :comment

    attr_accessor :effective_date

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :parent_work_log_type

    attr_accessor :savings_amount

    attr_accessor :savings_type

    attr_accessor :secondary_savings_type

    attr_accessor :term_date

    attr_accessor :update_date

    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'care_case_savings_key' => :'careCaseSavings_Key',
        :'case_key' => :'case_Key',
        :'comment' => :'comment',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'parent_work_log_type' => :'parent_WorkLog_Type',
        :'savings_amount' => :'savings_Amount',
        :'savings_type' => :'savings_Type',
        :'secondary_savings_type' => :'secondarySavings_Type',
        :'term_date' => :'term_Date',
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
        :'care_case_savings_key' => :'Integer',
        :'case_key' => :'Integer',
        :'comment' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'parent_work_log_type' => :'String',
        :'savings_amount' => :'Float',
        :'savings_type' => :'String',
        :'secondary_savings_type' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'comment',
        :'effective_date',
        :'entry_user',
        :'parent_work_log_type',
        :'savings_amount',
        :'savings_type',
        :'secondary_savings_type',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CareCaseSavings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CareCaseSavings`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'care_case_savings_key')
        self.care_case_savings_key = attributes[:'care_case_savings_key']
      else
        self.care_case_savings_key = nil
      end

      if attributes.key?(:'case_key')
        self.case_key = attributes[:'case_key']
      else
        self.case_key = nil
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'parent_work_log_type')
        self.parent_work_log_type = attributes[:'parent_work_log_type']
      end

      if attributes.key?(:'savings_amount')
        self.savings_amount = attributes[:'savings_amount']
      end

      if attributes.key?(:'savings_type')
        self.savings_type = attributes[:'savings_type']
      end

      if attributes.key?(:'secondary_savings_type')
        self.secondary_savings_type = attributes[:'secondary_savings_type']
      end

      if attributes.key?(:'term_date')
        self.term_date = attributes[:'term_date']
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
      if @care_case_savings_key.nil?
        invalid_properties.push('invalid value for "care_case_savings_key", care_case_savings_key cannot be nil.')
      end

      if @case_key.nil?
        invalid_properties.push('invalid value for "case_key", case_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@parent_work_log_type.nil? && @parent_work_log_type.to_s.length > 32
        invalid_properties.push('invalid value for "parent_work_log_type", the character length must be smaller than or equal to 32.')
      end

      if !@savings_type.nil? && @savings_type.to_s.length > 20
        invalid_properties.push('invalid value for "savings_type", the character length must be smaller than or equal to 20.')
      end

      if !@secondary_savings_type.nil? && @secondary_savings_type.to_s.length > 20
        invalid_properties.push('invalid value for "secondary_savings_type", the character length must be smaller than or equal to 20.')
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
      return false if @care_case_savings_key.nil?
      return false if @case_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@parent_work_log_type.nil? && @parent_work_log_type.to_s.length > 32
      return false if !@savings_type.nil? && @savings_type.to_s.length > 20
      return false if !@secondary_savings_type.nil? && @secondary_savings_type.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] care_case_savings_key Value to be assigned
    def care_case_savings_key=(care_case_savings_key)
      if care_case_savings_key.nil?
        fail ArgumentError, 'care_case_savings_key cannot be nil'
      end

      @care_case_savings_key = care_case_savings_key
    end

    # Custom attribute writer method with validation
    # @param [Object] case_key Value to be assigned
    def case_key=(case_key)
      if case_key.nil?
        fail ArgumentError, 'case_key cannot be nil'
      end

      @case_key = case_key
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
    # @param [Object] parent_work_log_type Value to be assigned
    def parent_work_log_type=(parent_work_log_type)
      if !parent_work_log_type.nil? && parent_work_log_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "parent_work_log_type", the character length must be smaller than or equal to 32.'
      end

      @parent_work_log_type = parent_work_log_type
    end

    # Custom attribute writer method with validation
    # @param [Object] savings_type Value to be assigned
    def savings_type=(savings_type)
      if !savings_type.nil? && savings_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "savings_type", the character length must be smaller than or equal to 20.'
      end

      @savings_type = savings_type
    end

    # Custom attribute writer method with validation
    # @param [Object] secondary_savings_type Value to be assigned
    def secondary_savings_type=(secondary_savings_type)
      if !secondary_savings_type.nil? && secondary_savings_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "secondary_savings_type", the character length must be smaller than or equal to 20.'
      end

      @secondary_savings_type = secondary_savings_type
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
          care_case_savings_key == o.care_case_savings_key &&
          case_key == o.case_key &&
          comment == o.comment &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          parent_work_log_type == o.parent_work_log_type &&
          savings_amount == o.savings_amount &&
          savings_type == o.savings_type &&
          secondary_savings_type == o.secondary_savings_type &&
          term_date == o.term_date &&
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
      [care_case_savings_key, case_key, comment, effective_date, entry_date, entry_user, parent_work_log_type, savings_amount, savings_type, secondary_savings_type, term_date, update_date, update_user].hash
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
