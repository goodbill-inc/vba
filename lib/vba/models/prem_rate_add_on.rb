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
  class PremRateAddOn
    # Unique ID of the Add On Rate associated with a given Premium Rate Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :prem_rate_add_on_key

    # Unique ID of the Add On Rate Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :add_on_prem_rate_key

    # Used to identify Add On rates by Group
    attr_accessor :add_on_grouping_id

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # Unique ID for the Premium Rate Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :prem_rate_key

    # The suquence of this Category on the \"INV\" report.
    attr_accessor :sequence

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'prem_rate_add_on_key' => :'premRateAddOn_Key',
        :'add_on_prem_rate_key' => :'addOn_PremRate_Key',
        :'add_on_grouping_id' => :'add_On_Grouping_ID',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'prem_rate_key' => :'premRate_Key',
        :'sequence' => :'sequence',
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
        :'prem_rate_add_on_key' => :'Integer',
        :'add_on_prem_rate_key' => :'Integer',
        :'add_on_grouping_id' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'prem_rate_key' => :'Integer',
        :'sequence' => :'Integer',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'add_on_grouping_id',
        :'entry_user',
        :'sequence',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PremRateAddOn` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PremRateAddOn`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'prem_rate_add_on_key')
        self.prem_rate_add_on_key = attributes[:'prem_rate_add_on_key']
      else
        self.prem_rate_add_on_key = nil
      end

      if attributes.key?(:'add_on_prem_rate_key')
        self.add_on_prem_rate_key = attributes[:'add_on_prem_rate_key']
      else
        self.add_on_prem_rate_key = nil
      end

      if attributes.key?(:'add_on_grouping_id')
        self.add_on_grouping_id = attributes[:'add_on_grouping_id']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'prem_rate_key')
        self.prem_rate_key = attributes[:'prem_rate_key']
      else
        self.prem_rate_key = nil
      end

      if attributes.key?(:'sequence')
        self.sequence = attributes[:'sequence']
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
      if @prem_rate_add_on_key.nil?
        invalid_properties.push('invalid value for "prem_rate_add_on_key", prem_rate_add_on_key cannot be nil.')
      end

      if @add_on_prem_rate_key.nil?
        invalid_properties.push('invalid value for "add_on_prem_rate_key", add_on_prem_rate_key cannot be nil.')
      end

      if !@add_on_grouping_id.nil? && @add_on_grouping_id.to_s.length > 32
        invalid_properties.push('invalid value for "add_on_grouping_id", the character length must be smaller than or equal to 32.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @prem_rate_key.nil?
        invalid_properties.push('invalid value for "prem_rate_key", prem_rate_key cannot be nil.')
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
      return false if @prem_rate_add_on_key.nil?
      return false if @add_on_prem_rate_key.nil?
      return false if !@add_on_grouping_id.nil? && @add_on_grouping_id.to_s.length > 32
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @prem_rate_key.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] prem_rate_add_on_key Value to be assigned
    def prem_rate_add_on_key=(prem_rate_add_on_key)
      if prem_rate_add_on_key.nil?
        fail ArgumentError, 'prem_rate_add_on_key cannot be nil'
      end

      @prem_rate_add_on_key = prem_rate_add_on_key
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_prem_rate_key Value to be assigned
    def add_on_prem_rate_key=(add_on_prem_rate_key)
      if add_on_prem_rate_key.nil?
        fail ArgumentError, 'add_on_prem_rate_key cannot be nil'
      end

      @add_on_prem_rate_key = add_on_prem_rate_key
    end

    # Custom attribute writer method with validation
    # @param [Object] add_on_grouping_id Value to be assigned
    def add_on_grouping_id=(add_on_grouping_id)
      if !add_on_grouping_id.nil? && add_on_grouping_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "add_on_grouping_id", the character length must be smaller than or equal to 32.'
      end

      @add_on_grouping_id = add_on_grouping_id
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
    # @param [Object] prem_rate_key Value to be assigned
    def prem_rate_key=(prem_rate_key)
      if prem_rate_key.nil?
        fail ArgumentError, 'prem_rate_key cannot be nil'
      end

      @prem_rate_key = prem_rate_key
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
          prem_rate_add_on_key == o.prem_rate_add_on_key &&
          add_on_prem_rate_key == o.add_on_prem_rate_key &&
          add_on_grouping_id == o.add_on_grouping_id &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          prem_rate_key == o.prem_rate_key &&
          sequence == o.sequence &&
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
      [prem_rate_add_on_key, add_on_prem_rate_key, add_on_grouping_id, entry_date, entry_user, prem_rate_key, sequence, update_date, update_user].hash
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
