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
  class GroupNetworkCriteria
    # Unique identifier for each Network Criteria used for network selection during adjudication.
    attr_accessor :group_network_criteria_key

    # References GroupNetwork.Coverage_Start value on the parent record.
    attr_accessor :coverage_start

    # The from value applied to this criteria.
    attr_accessor :criteria_from

    attr_accessor :criteria_operator

    # The thru value applied to this criteria.
    attr_accessor :criteria_thru

    # References GroupNetwork.Division_ID value on the parent record.
    attr_accessor :division_id

    # References GroupNetworkCriteriaColumn.GroupNetworkCriteriaColumn_Key in referenced table.
    attr_accessor :group_network_criteria_column_key

    # References GroupNetwork.Group_ID value on the parent record.
    attr_accessor :group_id

    # References GroupNetwork.Network_ID value on the parent record.
    attr_accessor :network_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'group_network_criteria_key' => :'groupNetworkCriteria_Key',
        :'coverage_start' => :'coverage_Start',
        :'criteria_from' => :'criteria_From',
        :'criteria_operator' => :'criteria_Operator',
        :'criteria_thru' => :'criteria_Thru',
        :'division_id' => :'division_ID',
        :'group_network_criteria_column_key' => :'groupNetworkCriteriaColumn_Key',
        :'group_id' => :'group_ID',
        :'network_id' => :'networkID'
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
        :'group_network_criteria_key' => :'Integer',
        :'coverage_start' => :'Time',
        :'criteria_from' => :'String',
        :'criteria_operator' => :'String',
        :'criteria_thru' => :'String',
        :'division_id' => :'String',
        :'group_network_criteria_column_key' => :'Integer',
        :'group_id' => :'String',
        :'network_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'coverage_start',
        :'criteria_from',
        :'criteria_operator',
        :'criteria_thru',
        :'division_id',
        :'group_network_criteria_column_key',
        :'group_id',
        :'network_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::GroupNetworkCriteria` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::GroupNetworkCriteria`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'group_network_criteria_key')
        self.group_network_criteria_key = attributes[:'group_network_criteria_key']
      else
        self.group_network_criteria_key = nil
      end

      if attributes.key?(:'coverage_start')
        self.coverage_start = attributes[:'coverage_start']
      end

      if attributes.key?(:'criteria_from')
        self.criteria_from = attributes[:'criteria_from']
      end

      if attributes.key?(:'criteria_operator')
        self.criteria_operator = attributes[:'criteria_operator']
      end

      if attributes.key?(:'criteria_thru')
        self.criteria_thru = attributes[:'criteria_thru']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'group_network_criteria_column_key')
        self.group_network_criteria_column_key = attributes[:'group_network_criteria_column_key']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @group_network_criteria_key.nil?
        invalid_properties.push('invalid value for "group_network_criteria_key", group_network_criteria_key cannot be nil.')
      end

      if !@criteria_from.nil? && @criteria_from.to_s.length > 64
        invalid_properties.push('invalid value for "criteria_from", the character length must be smaller than or equal to 64.')
      end

      if !@criteria_operator.nil? && @criteria_operator.to_s.length > 1
        invalid_properties.push('invalid value for "criteria_operator", the character length must be smaller than or equal to 1.')
      end

      if !@criteria_thru.nil? && @criteria_thru.to_s.length > 64
        invalid_properties.push('invalid value for "criteria_thru", the character length must be smaller than or equal to 64.')
      end

      if !@division_id.nil? && @division_id.to_s.length > 20
        invalid_properties.push('invalid value for "division_id", the character length must be smaller than or equal to 20.')
      end

      if !@group_id.nil? && @group_id.to_s.length > 20
        invalid_properties.push('invalid value for "group_id", the character length must be smaller than or equal to 20.')
      end

      if !@network_id.nil? && @network_id.to_s.length > 10
        invalid_properties.push('invalid value for "network_id", the character length must be smaller than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @group_network_criteria_key.nil?
      return false if !@criteria_from.nil? && @criteria_from.to_s.length > 64
      return false if !@criteria_operator.nil? && @criteria_operator.to_s.length > 1
      return false if !@criteria_thru.nil? && @criteria_thru.to_s.length > 64
      return false if !@division_id.nil? && @division_id.to_s.length > 20
      return false if !@group_id.nil? && @group_id.to_s.length > 20
      return false if !@network_id.nil? && @network_id.to_s.length > 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] group_network_criteria_key Value to be assigned
    def group_network_criteria_key=(group_network_criteria_key)
      if group_network_criteria_key.nil?
        fail ArgumentError, 'group_network_criteria_key cannot be nil'
      end

      @group_network_criteria_key = group_network_criteria_key
    end

    # Custom attribute writer method with validation
    # @param [Object] criteria_from Value to be assigned
    def criteria_from=(criteria_from)
      if !criteria_from.nil? && criteria_from.to_s.length > 64
        fail ArgumentError, 'invalid value for "criteria_from", the character length must be smaller than or equal to 64.'
      end

      @criteria_from = criteria_from
    end

    # Custom attribute writer method with validation
    # @param [Object] criteria_operator Value to be assigned
    def criteria_operator=(criteria_operator)
      if !criteria_operator.nil? && criteria_operator.to_s.length > 1
        fail ArgumentError, 'invalid value for "criteria_operator", the character length must be smaller than or equal to 1.'
      end

      @criteria_operator = criteria_operator
    end

    # Custom attribute writer method with validation
    # @param [Object] criteria_thru Value to be assigned
    def criteria_thru=(criteria_thru)
      if !criteria_thru.nil? && criteria_thru.to_s.length > 64
        fail ArgumentError, 'invalid value for "criteria_thru", the character length must be smaller than or equal to 64.'
      end

      @criteria_thru = criteria_thru
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
    # @param [Object] group_id Value to be assigned
    def group_id=(group_id)
      if !group_id.nil? && group_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "group_id", the character length must be smaller than or equal to 20.'
      end

      @group_id = group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] network_id Value to be assigned
    def network_id=(network_id)
      if !network_id.nil? && network_id.to_s.length > 10
        fail ArgumentError, 'invalid value for "network_id", the character length must be smaller than or equal to 10.'
      end

      @network_id = network_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          group_network_criteria_key == o.group_network_criteria_key &&
          coverage_start == o.coverage_start &&
          criteria_from == o.criteria_from &&
          criteria_operator == o.criteria_operator &&
          criteria_thru == o.criteria_thru &&
          division_id == o.division_id &&
          group_network_criteria_column_key == o.group_network_criteria_column_key &&
          group_id == o.group_id &&
          network_id == o.network_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [group_network_criteria_key, coverage_start, criteria_from, criteria_operator, criteria_thru, division_id, group_network_criteria_column_key, group_id, network_id].hash
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
