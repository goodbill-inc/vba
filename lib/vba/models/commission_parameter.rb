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
  class CommissionParameter
    attr_accessor :commission_parameter_key

    attr_accessor :billed_thru

    attr_accessor :commission_activity_key

    attr_accessor :commission_agency_rep_key

    attr_accessor :commission_date

    attr_accessor :commission_date_type

    attr_accessor :end_date

    attr_accessor :group_id

    attr_accessor :received_thru

    attr_accessor :start_date

    attr_accessor :undo_date

    attr_accessor :undo_user

    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commission_parameter_key' => :'commissionParameter_Key',
        :'billed_thru' => :'billedThru',
        :'commission_activity_key' => :'commissionActivity_Key',
        :'commission_agency_rep_key' => :'commissionAgencyRepKey',
        :'commission_date' => :'commissionDate',
        :'commission_date_type' => :'commissionDateType',
        :'end_date' => :'end_Date',
        :'group_id' => :'groupID',
        :'received_thru' => :'receivedThru',
        :'start_date' => :'start_Date',
        :'undo_date' => :'undo_Date',
        :'undo_user' => :'undo_User',
        :'user_id' => :'userID'
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
        :'commission_parameter_key' => :'Integer',
        :'billed_thru' => :'Time',
        :'commission_activity_key' => :'Integer',
        :'commission_agency_rep_key' => :'Integer',
        :'commission_date' => :'Time',
        :'commission_date_type' => :'String',
        :'end_date' => :'Time',
        :'group_id' => :'String',
        :'received_thru' => :'Time',
        :'start_date' => :'Time',
        :'undo_date' => :'Time',
        :'undo_user' => :'String',
        :'user_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'billed_thru',
        :'commission_agency_rep_key',
        :'commission_date',
        :'commission_date_type',
        :'end_date',
        :'group_id',
        :'received_thru',
        :'start_date',
        :'undo_date',
        :'undo_user',
        :'user_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CommissionParameter` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CommissionParameter`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'commission_parameter_key')
        self.commission_parameter_key = attributes[:'commission_parameter_key']
      else
        self.commission_parameter_key = nil
      end

      if attributes.key?(:'billed_thru')
        self.billed_thru = attributes[:'billed_thru']
      end

      if attributes.key?(:'commission_activity_key')
        self.commission_activity_key = attributes[:'commission_activity_key']
      else
        self.commission_activity_key = nil
      end

      if attributes.key?(:'commission_agency_rep_key')
        self.commission_agency_rep_key = attributes[:'commission_agency_rep_key']
      end

      if attributes.key?(:'commission_date')
        self.commission_date = attributes[:'commission_date']
      end

      if attributes.key?(:'commission_date_type')
        self.commission_date_type = attributes[:'commission_date_type']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'received_thru')
        self.received_thru = attributes[:'received_thru']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'undo_date')
        self.undo_date = attributes[:'undo_date']
      end

      if attributes.key?(:'undo_user')
        self.undo_user = attributes[:'undo_user']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @commission_parameter_key.nil?
        invalid_properties.push('invalid value for "commission_parameter_key", commission_parameter_key cannot be nil.')
      end

      if @commission_activity_key.nil?
        invalid_properties.push('invalid value for "commission_activity_key", commission_activity_key cannot be nil.')
      end

      if !@commission_date_type.nil? && @commission_date_type.to_s.length > 1
        invalid_properties.push('invalid value for "commission_date_type", the character length must be smaller than or equal to 1.')
      end

      if !@group_id.nil? && @group_id.to_s.length > 20
        invalid_properties.push('invalid value for "group_id", the character length must be smaller than or equal to 20.')
      end

      if !@undo_user.nil? && @undo_user.to_s.length > 16
        invalid_properties.push('invalid value for "undo_user", the character length must be smaller than or equal to 16.')
      end

      if !@user_id.nil? && @user_id.to_s.length > 20
        invalid_properties.push('invalid value for "user_id", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @commission_parameter_key.nil?
      return false if @commission_activity_key.nil?
      return false if !@commission_date_type.nil? && @commission_date_type.to_s.length > 1
      return false if !@group_id.nil? && @group_id.to_s.length > 20
      return false if !@undo_user.nil? && @undo_user.to_s.length > 16
      return false if !@user_id.nil? && @user_id.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_parameter_key Value to be assigned
    def commission_parameter_key=(commission_parameter_key)
      if commission_parameter_key.nil?
        fail ArgumentError, 'commission_parameter_key cannot be nil'
      end

      @commission_parameter_key = commission_parameter_key
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_activity_key Value to be assigned
    def commission_activity_key=(commission_activity_key)
      if commission_activity_key.nil?
        fail ArgumentError, 'commission_activity_key cannot be nil'
      end

      @commission_activity_key = commission_activity_key
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_date_type Value to be assigned
    def commission_date_type=(commission_date_type)
      if !commission_date_type.nil? && commission_date_type.to_s.length > 1
        fail ArgumentError, 'invalid value for "commission_date_type", the character length must be smaller than or equal to 1.'
      end

      @commission_date_type = commission_date_type
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
    # @param [Object] undo_user Value to be assigned
    def undo_user=(undo_user)
      if !undo_user.nil? && undo_user.to_s.length > 16
        fail ArgumentError, 'invalid value for "undo_user", the character length must be smaller than or equal to 16.'
      end

      @undo_user = undo_user
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if !user_id.nil? && user_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "user_id", the character length must be smaller than or equal to 20.'
      end

      @user_id = user_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commission_parameter_key == o.commission_parameter_key &&
          billed_thru == o.billed_thru &&
          commission_activity_key == o.commission_activity_key &&
          commission_agency_rep_key == o.commission_agency_rep_key &&
          commission_date == o.commission_date &&
          commission_date_type == o.commission_date_type &&
          end_date == o.end_date &&
          group_id == o.group_id &&
          received_thru == o.received_thru &&
          start_date == o.start_date &&
          undo_date == o.undo_date &&
          undo_user == o.undo_user &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [commission_parameter_key, billed_thru, commission_activity_key, commission_agency_rep_key, commission_date, commission_date_type, end_date, group_id, received_thru, start_date, undo_date, undo_user, user_id].hash
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
