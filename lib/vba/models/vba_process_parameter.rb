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
  class VBAProcessParameter
    # Unique Identifier for the VBAProcessParameter table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :vba_process_parameter_key

    # Date and time the process ended.
    attr_accessor :end_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Name of the parameter passed.
    attr_accessor :parameter_name

    # Type of the parameter passed.
    attr_accessor :parameter_type

    # A value passed to the process.
    attr_accessor :parameter_value1

    # A value passed to the process.
    attr_accessor :parameter_value10

    # A value passed to the process.
    attr_accessor :parameter_value11

    # A value passed to the process.
    attr_accessor :parameter_value12

    # A value passed to the process.
    attr_accessor :parameter_value2

    # A value passed to the process.
    attr_accessor :parameter_value3

    # A value passed to the process.
    attr_accessor :parameter_value4

    # A value passed to the process.
    attr_accessor :parameter_value5

    # A value passed to the process.
    attr_accessor :parameter_value6

    # A value passed to the process.
    attr_accessor :parameter_value7

    # A value passed to the process.
    attr_accessor :parameter_value8

    # A value passed to the process.
    attr_accessor :parameter_value9

    # Flag is set by Process Automation to show it has been processed. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :process_automation

    # Date and time the process started.
    attr_accessor :start_date

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Unique Identifier for the VBAProcess table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :vba_process_key

    # Type used to determine the process that triggers.
    attr_accessor :vba_process_type

    # A value passed to the process.
    attr_accessor :parameter_value13

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'vba_process_parameter_key' => :'vbaProcessParameter_Key',
        :'end_date' => :'end_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'parameter_name' => :'parameter_Name',
        :'parameter_type' => :'parameter_Type',
        :'parameter_value1' => :'parameter_Value1',
        :'parameter_value10' => :'parameter_Value10',
        :'parameter_value11' => :'parameter_Value11',
        :'parameter_value12' => :'parameter_Value12',
        :'parameter_value2' => :'parameter_Value2',
        :'parameter_value3' => :'parameter_Value3',
        :'parameter_value4' => :'parameter_Value4',
        :'parameter_value5' => :'parameter_Value5',
        :'parameter_value6' => :'parameter_Value6',
        :'parameter_value7' => :'parameter_Value7',
        :'parameter_value8' => :'parameter_Value8',
        :'parameter_value9' => :'parameter_Value9',
        :'process_automation' => :'process_Automation',
        :'start_date' => :'start_Date',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'vba_process_key' => :'vbaProcess_Key',
        :'vba_process_type' => :'vbaProcess_Type',
        :'parameter_value13' => :'parameter_Value13'
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
        :'vba_process_parameter_key' => :'Integer',
        :'end_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'parameter_name' => :'String',
        :'parameter_type' => :'String',
        :'parameter_value1' => :'String',
        :'parameter_value10' => :'String',
        :'parameter_value11' => :'String',
        :'parameter_value12' => :'String',
        :'parameter_value2' => :'String',
        :'parameter_value3' => :'String',
        :'parameter_value4' => :'String',
        :'parameter_value5' => :'String',
        :'parameter_value6' => :'String',
        :'parameter_value7' => :'String',
        :'parameter_value8' => :'String',
        :'parameter_value9' => :'String',
        :'process_automation' => :'Boolean',
        :'start_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'vba_process_key' => :'Integer',
        :'vba_process_type' => :'String',
        :'parameter_value13' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'end_date',
        :'entry_user',
        :'parameter_value1',
        :'parameter_value10',
        :'parameter_value11',
        :'parameter_value12',
        :'parameter_value2',
        :'parameter_value3',
        :'parameter_value4',
        :'parameter_value5',
        :'parameter_value6',
        :'parameter_value7',
        :'parameter_value8',
        :'parameter_value9',
        :'start_date',
        :'update_user',
        :'parameter_value13'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::VBAProcessParameter` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::VBAProcessParameter`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'vba_process_parameter_key')
        self.vba_process_parameter_key = attributes[:'vba_process_parameter_key']
      else
        self.vba_process_parameter_key = nil
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'parameter_name')
        self.parameter_name = attributes[:'parameter_name']
      else
        self.parameter_name = nil
      end

      if attributes.key?(:'parameter_type')
        self.parameter_type = attributes[:'parameter_type']
      else
        self.parameter_type = nil
      end

      if attributes.key?(:'parameter_value1')
        self.parameter_value1 = attributes[:'parameter_value1']
      end

      if attributes.key?(:'parameter_value10')
        self.parameter_value10 = attributes[:'parameter_value10']
      end

      if attributes.key?(:'parameter_value11')
        self.parameter_value11 = attributes[:'parameter_value11']
      end

      if attributes.key?(:'parameter_value12')
        self.parameter_value12 = attributes[:'parameter_value12']
      end

      if attributes.key?(:'parameter_value2')
        self.parameter_value2 = attributes[:'parameter_value2']
      end

      if attributes.key?(:'parameter_value3')
        self.parameter_value3 = attributes[:'parameter_value3']
      end

      if attributes.key?(:'parameter_value4')
        self.parameter_value4 = attributes[:'parameter_value4']
      end

      if attributes.key?(:'parameter_value5')
        self.parameter_value5 = attributes[:'parameter_value5']
      end

      if attributes.key?(:'parameter_value6')
        self.parameter_value6 = attributes[:'parameter_value6']
      end

      if attributes.key?(:'parameter_value7')
        self.parameter_value7 = attributes[:'parameter_value7']
      end

      if attributes.key?(:'parameter_value8')
        self.parameter_value8 = attributes[:'parameter_value8']
      end

      if attributes.key?(:'parameter_value9')
        self.parameter_value9 = attributes[:'parameter_value9']
      end

      if attributes.key?(:'process_automation')
        self.process_automation = attributes[:'process_automation']
      else
        self.process_automation = nil
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'vba_process_key')
        self.vba_process_key = attributes[:'vba_process_key']
      else
        self.vba_process_key = nil
      end

      if attributes.key?(:'vba_process_type')
        self.vba_process_type = attributes[:'vba_process_type']
      else
        self.vba_process_type = nil
      end

      if attributes.key?(:'parameter_value13')
        self.parameter_value13 = attributes[:'parameter_value13']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @vba_process_parameter_key.nil?
        invalid_properties.push('invalid value for "vba_process_parameter_key", vba_process_parameter_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @parameter_name.nil?
        invalid_properties.push('invalid value for "parameter_name", parameter_name cannot be nil.')
      end

      if @parameter_name.to_s.length > 64
        invalid_properties.push('invalid value for "parameter_name", the character length must be smaller than or equal to 64.')
      end

      if @parameter_name.to_s.length < 1
        invalid_properties.push('invalid value for "parameter_name", the character length must be great than or equal to 1.')
      end

      if @parameter_type.nil?
        invalid_properties.push('invalid value for "parameter_type", parameter_type cannot be nil.')
      end

      if @parameter_type.to_s.length > 32
        invalid_properties.push('invalid value for "parameter_type", the character length must be smaller than or equal to 32.')
      end

      if @parameter_type.to_s.length < 1
        invalid_properties.push('invalid value for "parameter_type", the character length must be great than or equal to 1.')
      end

      if @process_automation.nil?
        invalid_properties.push('invalid value for "process_automation", process_automation cannot be nil.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @vba_process_key.nil?
        invalid_properties.push('invalid value for "vba_process_key", vba_process_key cannot be nil.')
      end

      if @vba_process_type.nil?
        invalid_properties.push('invalid value for "vba_process_type", vba_process_type cannot be nil.')
      end

      if @vba_process_type.to_s.length > 32
        invalid_properties.push('invalid value for "vba_process_type", the character length must be smaller than or equal to 32.')
      end

      if @vba_process_type.to_s.length < 1
        invalid_properties.push('invalid value for "vba_process_type", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @vba_process_parameter_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @parameter_name.nil?
      return false if @parameter_name.to_s.length > 64
      return false if @parameter_name.to_s.length < 1
      return false if @parameter_type.nil?
      return false if @parameter_type.to_s.length > 32
      return false if @parameter_type.to_s.length < 1
      return false if @process_automation.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @vba_process_key.nil?
      return false if @vba_process_type.nil?
      return false if @vba_process_type.to_s.length > 32
      return false if @vba_process_type.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] vba_process_parameter_key Value to be assigned
    def vba_process_parameter_key=(vba_process_parameter_key)
      if vba_process_parameter_key.nil?
        fail ArgumentError, 'vba_process_parameter_key cannot be nil'
      end

      @vba_process_parameter_key = vba_process_parameter_key
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
    # @param [Object] parameter_name Value to be assigned
    def parameter_name=(parameter_name)
      if parameter_name.nil?
        fail ArgumentError, 'parameter_name cannot be nil'
      end

      if parameter_name.to_s.length > 64
        fail ArgumentError, 'invalid value for "parameter_name", the character length must be smaller than or equal to 64.'
      end

      if parameter_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "parameter_name", the character length must be great than or equal to 1.'
      end

      @parameter_name = parameter_name
    end

    # Custom attribute writer method with validation
    # @param [Object] parameter_type Value to be assigned
    def parameter_type=(parameter_type)
      if parameter_type.nil?
        fail ArgumentError, 'parameter_type cannot be nil'
      end

      if parameter_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "parameter_type", the character length must be smaller than or equal to 32.'
      end

      if parameter_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "parameter_type", the character length must be great than or equal to 1.'
      end

      @parameter_type = parameter_type
    end

    # Custom attribute writer method with validation
    # @param [Object] process_automation Value to be assigned
    def process_automation=(process_automation)
      if process_automation.nil?
        fail ArgumentError, 'process_automation cannot be nil'
      end

      @process_automation = process_automation
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
    # @param [Object] vba_process_key Value to be assigned
    def vba_process_key=(vba_process_key)
      if vba_process_key.nil?
        fail ArgumentError, 'vba_process_key cannot be nil'
      end

      @vba_process_key = vba_process_key
    end

    # Custom attribute writer method with validation
    # @param [Object] vba_process_type Value to be assigned
    def vba_process_type=(vba_process_type)
      if vba_process_type.nil?
        fail ArgumentError, 'vba_process_type cannot be nil'
      end

      if vba_process_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "vba_process_type", the character length must be smaller than or equal to 32.'
      end

      if vba_process_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "vba_process_type", the character length must be great than or equal to 1.'
      end

      @vba_process_type = vba_process_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          vba_process_parameter_key == o.vba_process_parameter_key &&
          end_date == o.end_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          parameter_name == o.parameter_name &&
          parameter_type == o.parameter_type &&
          parameter_value1 == o.parameter_value1 &&
          parameter_value10 == o.parameter_value10 &&
          parameter_value11 == o.parameter_value11 &&
          parameter_value12 == o.parameter_value12 &&
          parameter_value2 == o.parameter_value2 &&
          parameter_value3 == o.parameter_value3 &&
          parameter_value4 == o.parameter_value4 &&
          parameter_value5 == o.parameter_value5 &&
          parameter_value6 == o.parameter_value6 &&
          parameter_value7 == o.parameter_value7 &&
          parameter_value8 == o.parameter_value8 &&
          parameter_value9 == o.parameter_value9 &&
          process_automation == o.process_automation &&
          start_date == o.start_date &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          vba_process_key == o.vba_process_key &&
          vba_process_type == o.vba_process_type &&
          parameter_value13 == o.parameter_value13
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [vba_process_parameter_key, end_date, entry_date, entry_user, parameter_name, parameter_type, parameter_value1, parameter_value10, parameter_value11, parameter_value12, parameter_value2, parameter_value3, parameter_value4, parameter_value5, parameter_value6, parameter_value7, parameter_value8, parameter_value9, process_automation, start_date, update_date, update_user, vba_process_key, vba_process_type, parameter_value13].hash
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
