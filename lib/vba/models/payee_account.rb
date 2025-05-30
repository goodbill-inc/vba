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
  class PayeeAccount
    attr_accessor :payee_account_key

    attr_accessor :account_key

    attr_accessor :effective_date

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :payee_id

    attr_accessor :term_date

    attr_accessor :update_date

    attr_accessor :update_user

    attr_accessor :wire_transfer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payee_account_key' => :'payeeAccount_Key',
        :'account_key' => :'account_Key',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'payee_id' => :'payee_ID',
        :'term_date' => :'term_Date',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'wire_transfer' => :'wire_Transfer'
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
        :'payee_account_key' => :'Integer',
        :'account_key' => :'Integer',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'payee_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'wire_transfer' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'effective_date',
        :'entry_user',
        :'term_date',
        :'update_user',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PayeeAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PayeeAccount`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payee_account_key')
        self.payee_account_key = attributes[:'payee_account_key']
      else
        self.payee_account_key = nil
      end

      if attributes.key?(:'account_key')
        self.account_key = attributes[:'account_key']
      else
        self.account_key = nil
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

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      else
        self.payee_id = nil
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

      if attributes.key?(:'wire_transfer')
        self.wire_transfer = attributes[:'wire_transfer']
      else
        self.wire_transfer = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @payee_account_key.nil?
        invalid_properties.push('invalid value for "payee_account_key", payee_account_key cannot be nil.')
      end

      if @account_key.nil?
        invalid_properties.push('invalid value for "account_key", account_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @payee_id.nil?
        invalid_properties.push('invalid value for "payee_id", payee_id cannot be nil.')
      end

      if @payee_id.to_s.length > 20
        invalid_properties.push('invalid value for "payee_id", the character length must be smaller than or equal to 20.')
      end

      if @payee_id.to_s.length < 1
        invalid_properties.push('invalid value for "payee_id", the character length must be great than or equal to 1.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @wire_transfer.nil?
        invalid_properties.push('invalid value for "wire_transfer", wire_transfer cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @payee_account_key.nil?
      return false if @account_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @payee_id.nil?
      return false if @payee_id.to_s.length > 20
      return false if @payee_id.to_s.length < 1
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @wire_transfer.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payee_account_key Value to be assigned
    def payee_account_key=(payee_account_key)
      if payee_account_key.nil?
        fail ArgumentError, 'payee_account_key cannot be nil'
      end

      @payee_account_key = payee_account_key
    end

    # Custom attribute writer method with validation
    # @param [Object] account_key Value to be assigned
    def account_key=(account_key)
      if account_key.nil?
        fail ArgumentError, 'account_key cannot be nil'
      end

      @account_key = account_key
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
    # @param [Object] payee_id Value to be assigned
    def payee_id=(payee_id)
      if payee_id.nil?
        fail ArgumentError, 'payee_id cannot be nil'
      end

      if payee_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "payee_id", the character length must be smaller than or equal to 20.'
      end

      if payee_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payee_id", the character length must be great than or equal to 1.'
      end

      @payee_id = payee_id
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
    # @param [Object] wire_transfer Value to be assigned
    def wire_transfer=(wire_transfer)
      if wire_transfer.nil?
        fail ArgumentError, 'wire_transfer cannot be nil'
      end

      @wire_transfer = wire_transfer
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payee_account_key == o.payee_account_key &&
          account_key == o.account_key &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          payee_id == o.payee_id &&
          term_date == o.term_date &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          wire_transfer == o.wire_transfer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payee_account_key, account_key, effective_date, entry_date, entry_user, payee_id, term_date, update_date, update_user, wire_transfer].hash
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
