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
  class WorkflowType
    # Name of the workflow type.
    attr_accessor :workflow_type

    # Description of the workflow type.
    attr_accessor :description

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Data object that the workflow type must point to.
    attr_accessor :workflow_criteria_data_object

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'workflow_type' => :'workflow_Type',
        :'description' => :'description',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'workflow_criteria_data_object' => :'workflow_Criteria_DataObject'
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
        :'workflow_type' => :'String',
        :'description' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'workflow_criteria_data_object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'entry_user',
        :'update_user',
        :'workflow_criteria_data_object'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::WorkflowType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::WorkflowType`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'workflow_type')
        self.workflow_type = attributes[:'workflow_type']
      else
        self.workflow_type = nil
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

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'workflow_criteria_data_object')
        self.workflow_criteria_data_object = attributes[:'workflow_criteria_data_object']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @workflow_type.nil?
        invalid_properties.push('invalid value for "workflow_type", workflow_type cannot be nil.')
      end

      if @workflow_type.to_s.length > 32
        invalid_properties.push('invalid value for "workflow_type", the character length must be smaller than or equal to 32.')
      end

      if @workflow_type.to_s.length < 1
        invalid_properties.push('invalid value for "workflow_type", the character length must be great than or equal to 1.')
      end

      if !@description.nil? && @description.to_s.length > 512
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 512.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if !@workflow_criteria_data_object.nil? && @workflow_criteria_data_object.to_s.length > 128
        invalid_properties.push('invalid value for "workflow_criteria_data_object", the character length must be smaller than or equal to 128.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @workflow_type.nil?
      return false if @workflow_type.to_s.length > 32
      return false if @workflow_type.to_s.length < 1
      return false if !@description.nil? && @description.to_s.length > 512
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if !@workflow_criteria_data_object.nil? && @workflow_criteria_data_object.to_s.length > 128
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] workflow_type Value to be assigned
    def workflow_type=(workflow_type)
      if workflow_type.nil?
        fail ArgumentError, 'workflow_type cannot be nil'
      end

      if workflow_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "workflow_type", the character length must be smaller than or equal to 32.'
      end

      if workflow_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "workflow_type", the character length must be great than or equal to 1.'
      end

      @workflow_type = workflow_type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 512
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 512.'
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
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 20.'
      end

      @update_user = update_user
    end

    # Custom attribute writer method with validation
    # @param [Object] workflow_criteria_data_object Value to be assigned
    def workflow_criteria_data_object=(workflow_criteria_data_object)
      if !workflow_criteria_data_object.nil? && workflow_criteria_data_object.to_s.length > 128
        fail ArgumentError, 'invalid value for "workflow_criteria_data_object", the character length must be smaller than or equal to 128.'
      end

      @workflow_criteria_data_object = workflow_criteria_data_object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          workflow_type == o.workflow_type &&
          description == o.description &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          workflow_criteria_data_object == o.workflow_criteria_data_object
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [workflow_type, description, entry_date, entry_user, update_date, update_user, workflow_criteria_data_object].hash
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
