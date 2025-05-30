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
  class PlanCoordination
    # Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :plan_coordination_key

    attr_accessor :criteria_key

    attr_accessor :destination_ex_code

    attr_accessor :destination_plan_id

    attr_accessor :division_id

    attr_accessor :eff_date_type

    attr_accessor :effective_date

    # Date when the record was added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    attr_accessor :group_id

    # Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :include_cob

    attr_accessor :originating_plan_id

    attr_accessor :term_date

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'plan_coordination_key' => :'planCoordination_Key',
        :'criteria_key' => :'criteria_Key',
        :'destination_ex_code' => :'destination_Ex_Code',
        :'destination_plan_id' => :'destination_Plan_ID',
        :'division_id' => :'division_ID',
        :'eff_date_type' => :'eff_Date_Type',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'group_id' => :'group_ID',
        :'include_cob' => :'include_COB',
        :'originating_plan_id' => :'originating_Plan_ID',
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
        :'plan_coordination_key' => :'Integer',
        :'criteria_key' => :'Integer',
        :'destination_ex_code' => :'String',
        :'destination_plan_id' => :'String',
        :'division_id' => :'String',
        :'eff_date_type' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'group_id' => :'String',
        :'include_cob' => :'Boolean',
        :'originating_plan_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'criteria_key',
        :'destination_ex_code',
        :'destination_plan_id',
        :'division_id',
        :'eff_date_type',
        :'effective_date',
        :'entry_user',
        :'group_id',
        :'originating_plan_id',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PlanCoordination` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PlanCoordination`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'plan_coordination_key')
        self.plan_coordination_key = attributes[:'plan_coordination_key']
      else
        self.plan_coordination_key = nil
      end

      if attributes.key?(:'criteria_key')
        self.criteria_key = attributes[:'criteria_key']
      end

      if attributes.key?(:'destination_ex_code')
        self.destination_ex_code = attributes[:'destination_ex_code']
      end

      if attributes.key?(:'destination_plan_id')
        self.destination_plan_id = attributes[:'destination_plan_id']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'eff_date_type')
        self.eff_date_type = attributes[:'eff_date_type']
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

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'include_cob')
        self.include_cob = attributes[:'include_cob']
      else
        self.include_cob = nil
      end

      if attributes.key?(:'originating_plan_id')
        self.originating_plan_id = attributes[:'originating_plan_id']
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
      if @plan_coordination_key.nil?
        invalid_properties.push('invalid value for "plan_coordination_key", plan_coordination_key cannot be nil.')
      end

      if !@destination_ex_code.nil? && @destination_ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "destination_ex_code", the character length must be smaller than or equal to 6.')
      end

      if !@destination_plan_id.nil? && @destination_plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "destination_plan_id", the character length must be smaller than or equal to 20.')
      end

      if !@division_id.nil? && @division_id.to_s.length > 20
        invalid_properties.push('invalid value for "division_id", the character length must be smaller than or equal to 20.')
      end

      if !@eff_date_type.nil? && @eff_date_type.to_s.length > 16
        invalid_properties.push('invalid value for "eff_date_type", the character length must be smaller than or equal to 16.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@group_id.nil? && @group_id.to_s.length > 20
        invalid_properties.push('invalid value for "group_id", the character length must be smaller than or equal to 20.')
      end

      if @include_cob.nil?
        invalid_properties.push('invalid value for "include_cob", include_cob cannot be nil.')
      end

      if !@originating_plan_id.nil? && @originating_plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "originating_plan_id", the character length must be smaller than or equal to 20.')
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
      return false if @plan_coordination_key.nil?
      return false if !@destination_ex_code.nil? && @destination_ex_code.to_s.length > 6
      return false if !@destination_plan_id.nil? && @destination_plan_id.to_s.length > 20
      return false if !@division_id.nil? && @division_id.to_s.length > 20
      return false if !@eff_date_type.nil? && @eff_date_type.to_s.length > 16
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@group_id.nil? && @group_id.to_s.length > 20
      return false if @include_cob.nil?
      return false if !@originating_plan_id.nil? && @originating_plan_id.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_coordination_key Value to be assigned
    def plan_coordination_key=(plan_coordination_key)
      if plan_coordination_key.nil?
        fail ArgumentError, 'plan_coordination_key cannot be nil'
      end

      @plan_coordination_key = plan_coordination_key
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_ex_code Value to be assigned
    def destination_ex_code=(destination_ex_code)
      if !destination_ex_code.nil? && destination_ex_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "destination_ex_code", the character length must be smaller than or equal to 6.'
      end

      @destination_ex_code = destination_ex_code
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_plan_id Value to be assigned
    def destination_plan_id=(destination_plan_id)
      if !destination_plan_id.nil? && destination_plan_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "destination_plan_id", the character length must be smaller than or equal to 20.'
      end

      @destination_plan_id = destination_plan_id
    end

    # Custom attribute writer method with validation
    # @param [Object] division_id Value to be assigned
    def division_id=(division_id)
      if !division_id.nil? && division_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "division_id", the character length must be smaller than or equal to 20.'
      end

      @division_id = division_id
    end

    # Custom attribute writer method with validation
    # @param [Object] eff_date_type Value to be assigned
    def eff_date_type=(eff_date_type)
      if !eff_date_type.nil? && eff_date_type.to_s.length > 16
        fail ArgumentError, 'invalid value for "eff_date_type", the character length must be smaller than or equal to 16.'
      end

      @eff_date_type = eff_date_type
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
    # @param [Object] group_id Value to be assigned
    def group_id=(group_id)
      if !group_id.nil? && group_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "group_id", the character length must be smaller than or equal to 20.'
      end

      @group_id = group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] include_cob Value to be assigned
    def include_cob=(include_cob)
      if include_cob.nil?
        fail ArgumentError, 'include_cob cannot be nil'
      end

      @include_cob = include_cob
    end

    # Custom attribute writer method with validation
    # @param [Object] originating_plan_id Value to be assigned
    def originating_plan_id=(originating_plan_id)
      if !originating_plan_id.nil? && originating_plan_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "originating_plan_id", the character length must be smaller than or equal to 20.'
      end

      @originating_plan_id = originating_plan_id
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
          plan_coordination_key == o.plan_coordination_key &&
          criteria_key == o.criteria_key &&
          destination_ex_code == o.destination_ex_code &&
          destination_plan_id == o.destination_plan_id &&
          division_id == o.division_id &&
          eff_date_type == o.eff_date_type &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          group_id == o.group_id &&
          include_cob == o.include_cob &&
          originating_plan_id == o.originating_plan_id &&
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
      [plan_coordination_key, criteria_key, destination_ex_code, destination_plan_id, division_id, eff_date_type, effective_date, entry_date, entry_user, group_id, include_cob, originating_plan_id, term_date, update_date, update_user].hash
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
