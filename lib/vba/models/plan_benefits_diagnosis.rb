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
  class PlanBenefitsDiagnosis
    # References the PlanBenefits.Plan_ID value in parent table.
    attr_accessor :plan_id

    # References the PlanBenefits.Benefit_Code value in parent table.
    attr_accessor :benefit_code

    # Specifies the numbering system used for the selected Diagnosis Codes. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :diagnostic_code_type

    # First Diagnosis Code for the specified range. This allows the User to apply the specified Ex Code to any claims containing a diagnosis code within the defined range.
    attr_accessor :diagnostic_code

    # Last Diagnosis Code for the specified range. This allows the User to apply the specified Ex Code to any claims containing a diagnosis code within the defined range.
    attr_accessor :diagnostic_code_thru

    # Date when the record was added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # This is the Ex Code that will be applied to any claims containing a diagnosis code within the defined range.
    attr_accessor :ex_code

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'plan_id' => :'plan_ID',
        :'benefit_code' => :'benefit_Code',
        :'diagnostic_code_type' => :'diagnostic_Code_Type',
        :'diagnostic_code' => :'diagnostic_Code',
        :'diagnostic_code_thru' => :'diagnostic_Code_Thru',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'ex_code' => :'ex_Code',
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
        :'plan_id' => :'String',
        :'benefit_code' => :'String',
        :'diagnostic_code_type' => :'String',
        :'diagnostic_code' => :'String',
        :'diagnostic_code_thru' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'ex_code' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'diagnostic_code_thru',
        :'entry_user',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PlanBenefitsDiagnosis` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PlanBenefitsDiagnosis`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      else
        self.plan_id = nil
      end

      if attributes.key?(:'benefit_code')
        self.benefit_code = attributes[:'benefit_code']
      else
        self.benefit_code = nil
      end

      if attributes.key?(:'diagnostic_code_type')
        self.diagnostic_code_type = attributes[:'diagnostic_code_type']
      else
        self.diagnostic_code_type = nil
      end

      if attributes.key?(:'diagnostic_code')
        self.diagnostic_code = attributes[:'diagnostic_code']
      else
        self.diagnostic_code = nil
      end

      if attributes.key?(:'diagnostic_code_thru')
        self.diagnostic_code_thru = attributes[:'diagnostic_code_thru']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'ex_code')
        self.ex_code = attributes[:'ex_code']
      else
        self.ex_code = nil
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
      if @plan_id.nil?
        invalid_properties.push('invalid value for "plan_id", plan_id cannot be nil.')
      end

      if @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.to_s.length < 1
        invalid_properties.push('invalid value for "plan_id", the character length must be great than or equal to 1.')
      end

      if @benefit_code.nil?
        invalid_properties.push('invalid value for "benefit_code", benefit_code cannot be nil.')
      end

      if @benefit_code.to_s.length > 50
        invalid_properties.push('invalid value for "benefit_code", the character length must be smaller than or equal to 50.')
      end

      if @benefit_code.to_s.length < 1
        invalid_properties.push('invalid value for "benefit_code", the character length must be great than or equal to 1.')
      end

      if @diagnostic_code_type.nil?
        invalid_properties.push('invalid value for "diagnostic_code_type", diagnostic_code_type cannot be nil.')
      end

      if @diagnostic_code_type.to_s.length > 16
        invalid_properties.push('invalid value for "diagnostic_code_type", the character length must be smaller than or equal to 16.')
      end

      if @diagnostic_code_type.to_s.length < 1
        invalid_properties.push('invalid value for "diagnostic_code_type", the character length must be great than or equal to 1.')
      end

      if @diagnostic_code.nil?
        invalid_properties.push('invalid value for "diagnostic_code", diagnostic_code cannot be nil.')
      end

      if @diagnostic_code.to_s.length > 8
        invalid_properties.push('invalid value for "diagnostic_code", the character length must be smaller than or equal to 8.')
      end

      if @diagnostic_code.to_s.length < 1
        invalid_properties.push('invalid value for "diagnostic_code", the character length must be great than or equal to 1.')
      end

      if !@diagnostic_code_thru.nil? && @diagnostic_code_thru.to_s.length > 8
        invalid_properties.push('invalid value for "diagnostic_code_thru", the character length must be smaller than or equal to 8.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @ex_code.nil?
        invalid_properties.push('invalid value for "ex_code", ex_code cannot be nil.')
      end

      if @ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "ex_code", the character length must be smaller than or equal to 6.')
      end

      if @ex_code.to_s.length < 1
        invalid_properties.push('invalid value for "ex_code", the character length must be great than or equal to 1.')
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
      return false if @plan_id.nil?
      return false if @plan_id.to_s.length > 20
      return false if @plan_id.to_s.length < 1
      return false if @benefit_code.nil?
      return false if @benefit_code.to_s.length > 50
      return false if @benefit_code.to_s.length < 1
      return false if @diagnostic_code_type.nil?
      return false if @diagnostic_code_type.to_s.length > 16
      return false if @diagnostic_code_type.to_s.length < 1
      return false if @diagnostic_code.nil?
      return false if @diagnostic_code.to_s.length > 8
      return false if @diagnostic_code.to_s.length < 1
      return false if !@diagnostic_code_thru.nil? && @diagnostic_code_thru.to_s.length > 8
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @ex_code.nil?
      return false if @ex_code.to_s.length > 6
      return false if @ex_code.to_s.length < 1
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
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
    # @param [Object] benefit_code Value to be assigned
    def benefit_code=(benefit_code)
      if benefit_code.nil?
        fail ArgumentError, 'benefit_code cannot be nil'
      end

      if benefit_code.to_s.length > 50
        fail ArgumentError, 'invalid value for "benefit_code", the character length must be smaller than or equal to 50.'
      end

      if benefit_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "benefit_code", the character length must be great than or equal to 1.'
      end

      @benefit_code = benefit_code
    end

    # Custom attribute writer method with validation
    # @param [Object] diagnostic_code_type Value to be assigned
    def diagnostic_code_type=(diagnostic_code_type)
      if diagnostic_code_type.nil?
        fail ArgumentError, 'diagnostic_code_type cannot be nil'
      end

      if diagnostic_code_type.to_s.length > 16
        fail ArgumentError, 'invalid value for "diagnostic_code_type", the character length must be smaller than or equal to 16.'
      end

      if diagnostic_code_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "diagnostic_code_type", the character length must be great than or equal to 1.'
      end

      @diagnostic_code_type = diagnostic_code_type
    end

    # Custom attribute writer method with validation
    # @param [Object] diagnostic_code Value to be assigned
    def diagnostic_code=(diagnostic_code)
      if diagnostic_code.nil?
        fail ArgumentError, 'diagnostic_code cannot be nil'
      end

      if diagnostic_code.to_s.length > 8
        fail ArgumentError, 'invalid value for "diagnostic_code", the character length must be smaller than or equal to 8.'
      end

      if diagnostic_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "diagnostic_code", the character length must be great than or equal to 1.'
      end

      @diagnostic_code = diagnostic_code
    end

    # Custom attribute writer method with validation
    # @param [Object] diagnostic_code_thru Value to be assigned
    def diagnostic_code_thru=(diagnostic_code_thru)
      if !diagnostic_code_thru.nil? && diagnostic_code_thru.to_s.length > 8
        fail ArgumentError, 'invalid value for "diagnostic_code_thru", the character length must be smaller than or equal to 8.'
      end

      @diagnostic_code_thru = diagnostic_code_thru
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
    # @param [Object] ex_code Value to be assigned
    def ex_code=(ex_code)
      if ex_code.nil?
        fail ArgumentError, 'ex_code cannot be nil'
      end

      if ex_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "ex_code", the character length must be smaller than or equal to 6.'
      end

      if ex_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "ex_code", the character length must be great than or equal to 1.'
      end

      @ex_code = ex_code
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
          plan_id == o.plan_id &&
          benefit_code == o.benefit_code &&
          diagnostic_code_type == o.diagnostic_code_type &&
          diagnostic_code == o.diagnostic_code &&
          diagnostic_code_thru == o.diagnostic_code_thru &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          ex_code == o.ex_code &&
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
      [plan_id, benefit_code, diagnostic_code_type, diagnostic_code, diagnostic_code_thru, entry_date, entry_user, ex_code, update_date, update_user].hash
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
