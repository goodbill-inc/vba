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
  class PremRatePayee
    attr_accessor :prem_rate_key

    attr_accessor :payee_id

    attr_accessor :account_key

    attr_accessor :amount

    attr_accessor :amount_max

    attr_accessor :amount_pct

    attr_accessor :dist_type

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :payor_id

    attr_accessor :policy_number

    attr_accessor :prem_rate_category

    attr_accessor :priority

    attr_accessor :rate

    attr_accessor :rate_max

    attr_accessor :rate_min

    attr_accessor :rate_round_precision

    attr_accessor :rate_round_type

    attr_accessor :rate_var1

    attr_accessor :rate_var2

    attr_accessor :rate_var3

    attr_accessor :update_date

    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'prem_rate_key' => :'premRate_Key',
        :'payee_id' => :'payee_ID',
        :'account_key' => :'account_Key',
        :'amount' => :'amount',
        :'amount_max' => :'amount_Max',
        :'amount_pct' => :'amount_Pct',
        :'dist_type' => :'dist_Type',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'payor_id' => :'payor_ID',
        :'policy_number' => :'policy_Number',
        :'prem_rate_category' => :'premRate_Category',
        :'priority' => :'priority',
        :'rate' => :'rate',
        :'rate_max' => :'rate_Max',
        :'rate_min' => :'rate_Min',
        :'rate_round_precision' => :'rate_Round_Precision',
        :'rate_round_type' => :'rate_Round_Type',
        :'rate_var1' => :'rate_Var1',
        :'rate_var2' => :'rate_Var2',
        :'rate_var3' => :'rate_Var3',
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
        :'prem_rate_key' => :'Integer',
        :'payee_id' => :'String',
        :'account_key' => :'Integer',
        :'amount' => :'Float',
        :'amount_max' => :'Float',
        :'amount_pct' => :'Boolean',
        :'dist_type' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'payor_id' => :'String',
        :'policy_number' => :'String',
        :'prem_rate_category' => :'String',
        :'priority' => :'Integer',
        :'rate' => :'Float',
        :'rate_max' => :'Float',
        :'rate_min' => :'Float',
        :'rate_round_precision' => :'Integer',
        :'rate_round_type' => :'String',
        :'rate_var1' => :'Float',
        :'rate_var2' => :'Float',
        :'rate_var3' => :'Float',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_key',
        :'amount',
        :'amount_max',
        :'dist_type',
        :'entry_user',
        :'payor_id',
        :'policy_number',
        :'prem_rate_category',
        :'priority',
        :'rate',
        :'rate_max',
        :'rate_min',
        :'rate_round_precision',
        :'rate_round_type',
        :'rate_var1',
        :'rate_var2',
        :'rate_var3',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PremRatePayee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PremRatePayee`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'prem_rate_key')
        self.prem_rate_key = attributes[:'prem_rate_key']
      else
        self.prem_rate_key = nil
      end

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      else
        self.payee_id = nil
      end

      if attributes.key?(:'account_key')
        self.account_key = attributes[:'account_key']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'amount_max')
        self.amount_max = attributes[:'amount_max']
      end

      if attributes.key?(:'amount_pct')
        self.amount_pct = attributes[:'amount_pct']
      else
        self.amount_pct = nil
      end

      if attributes.key?(:'dist_type')
        self.dist_type = attributes[:'dist_type']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'policy_number')
        self.policy_number = attributes[:'policy_number']
      end

      if attributes.key?(:'prem_rate_category')
        self.prem_rate_category = attributes[:'prem_rate_category']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'rate_max')
        self.rate_max = attributes[:'rate_max']
      end

      if attributes.key?(:'rate_min')
        self.rate_min = attributes[:'rate_min']
      end

      if attributes.key?(:'rate_round_precision')
        self.rate_round_precision = attributes[:'rate_round_precision']
      end

      if attributes.key?(:'rate_round_type')
        self.rate_round_type = attributes[:'rate_round_type']
      end

      if attributes.key?(:'rate_var1')
        self.rate_var1 = attributes[:'rate_var1']
      end

      if attributes.key?(:'rate_var2')
        self.rate_var2 = attributes[:'rate_var2']
      end

      if attributes.key?(:'rate_var3')
        self.rate_var3 = attributes[:'rate_var3']
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
      if @prem_rate_key.nil?
        invalid_properties.push('invalid value for "prem_rate_key", prem_rate_key cannot be nil.')
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

      if @amount_pct.nil?
        invalid_properties.push('invalid value for "amount_pct", amount_pct cannot be nil.')
      end

      if !@dist_type.nil? && @dist_type.to_s.length > 8
        invalid_properties.push('invalid value for "dist_type", the character length must be smaller than or equal to 8.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@payor_id.nil? && @payor_id.to_s.length > 20
        invalid_properties.push('invalid value for "payor_id", the character length must be smaller than or equal to 20.')
      end

      if !@policy_number.nil? && @policy_number.to_s.length > 25
        invalid_properties.push('invalid value for "policy_number", the character length must be smaller than or equal to 25.')
      end

      if !@prem_rate_category.nil? && @prem_rate_category.to_s.length > 32
        invalid_properties.push('invalid value for "prem_rate_category", the character length must be smaller than or equal to 32.')
      end

      if !@rate_round_type.nil? && @rate_round_type.to_s.length > 16
        invalid_properties.push('invalid value for "rate_round_type", the character length must be smaller than or equal to 16.')
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
      return false if @prem_rate_key.nil?
      return false if @payee_id.nil?
      return false if @payee_id.to_s.length > 20
      return false if @payee_id.to_s.length < 1
      return false if @amount_pct.nil?
      return false if !@dist_type.nil? && @dist_type.to_s.length > 8
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@payor_id.nil? && @payor_id.to_s.length > 20
      return false if !@policy_number.nil? && @policy_number.to_s.length > 25
      return false if !@prem_rate_category.nil? && @prem_rate_category.to_s.length > 32
      return false if !@rate_round_type.nil? && @rate_round_type.to_s.length > 16
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
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
    # @param [Object] amount_pct Value to be assigned
    def amount_pct=(amount_pct)
      if amount_pct.nil?
        fail ArgumentError, 'amount_pct cannot be nil'
      end

      @amount_pct = amount_pct
    end

    # Custom attribute writer method with validation
    # @param [Object] dist_type Value to be assigned
    def dist_type=(dist_type)
      if !dist_type.nil? && dist_type.to_s.length > 8
        fail ArgumentError, 'invalid value for "dist_type", the character length must be smaller than or equal to 8.'
      end

      @dist_type = dist_type
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
    # @param [Object] payor_id Value to be assigned
    def payor_id=(payor_id)
      if !payor_id.nil? && payor_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "payor_id", the character length must be smaller than or equal to 20.'
      end

      @payor_id = payor_id
    end

    # Custom attribute writer method with validation
    # @param [Object] policy_number Value to be assigned
    def policy_number=(policy_number)
      if !policy_number.nil? && policy_number.to_s.length > 25
        fail ArgumentError, 'invalid value for "policy_number", the character length must be smaller than or equal to 25.'
      end

      @policy_number = policy_number
    end

    # Custom attribute writer method with validation
    # @param [Object] prem_rate_category Value to be assigned
    def prem_rate_category=(prem_rate_category)
      if !prem_rate_category.nil? && prem_rate_category.to_s.length > 32
        fail ArgumentError, 'invalid value for "prem_rate_category", the character length must be smaller than or equal to 32.'
      end

      @prem_rate_category = prem_rate_category
    end

    # Custom attribute writer method with validation
    # @param [Object] rate_round_type Value to be assigned
    def rate_round_type=(rate_round_type)
      if !rate_round_type.nil? && rate_round_type.to_s.length > 16
        fail ArgumentError, 'invalid value for "rate_round_type", the character length must be smaller than or equal to 16.'
      end

      @rate_round_type = rate_round_type
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
          prem_rate_key == o.prem_rate_key &&
          payee_id == o.payee_id &&
          account_key == o.account_key &&
          amount == o.amount &&
          amount_max == o.amount_max &&
          amount_pct == o.amount_pct &&
          dist_type == o.dist_type &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          payor_id == o.payor_id &&
          policy_number == o.policy_number &&
          prem_rate_category == o.prem_rate_category &&
          priority == o.priority &&
          rate == o.rate &&
          rate_max == o.rate_max &&
          rate_min == o.rate_min &&
          rate_round_precision == o.rate_round_precision &&
          rate_round_type == o.rate_round_type &&
          rate_var1 == o.rate_var1 &&
          rate_var2 == o.rate_var2 &&
          rate_var3 == o.rate_var3 &&
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
      [prem_rate_key, payee_id, account_key, amount, amount_max, amount_pct, dist_type, entry_date, entry_user, payor_id, policy_number, prem_rate_category, priority, rate, rate_max, rate_min, rate_round_precision, rate_round_type, rate_var1, rate_var2, rate_var3, update_date, update_user].hash
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
