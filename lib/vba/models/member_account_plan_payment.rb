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
  class MemberAccountPlanPayment
    # Unique identifier for each payment record. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :payment_key

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # References the MemberAccount.MemberAccount_Key value on the parent record. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :member_account_key

    # References the SubenrollmentPlan.Plan_ID value for this members enrollment.
    attr_accessor :plan_id

    # Total amount of the transaction.
    attr_accessor :transaction_amount

    # Date when the transaction occurred.
    attr_accessor :transaction_date

    # Identifier assigned to the associated transaction.
    attr_accessor :transaction_id

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_key' => :'payment_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'member_account_key' => :'memberAccount_Key',
        :'plan_id' => :'plan_ID',
        :'transaction_amount' => :'transaction_Amount',
        :'transaction_date' => :'transaction_Date',
        :'transaction_id' => :'transaction_ID',
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
        :'payment_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'member_account_key' => :'Integer',
        :'plan_id' => :'String',
        :'transaction_amount' => :'Float',
        :'transaction_date' => :'Time',
        :'transaction_id' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_user',
        :'transaction_amount',
        :'transaction_date',
        :'transaction_id',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::MemberAccountPlanPayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::MemberAccountPlanPayment`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_key')
        self.payment_key = attributes[:'payment_key']
      else
        self.payment_key = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'member_account_key')
        self.member_account_key = attributes[:'member_account_key']
      else
        self.member_account_key = nil
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      else
        self.plan_id = nil
      end

      if attributes.key?(:'transaction_amount')
        self.transaction_amount = attributes[:'transaction_amount']
      end

      if attributes.key?(:'transaction_date')
        self.transaction_date = attributes[:'transaction_date']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
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
      if @payment_key.nil?
        invalid_properties.push('invalid value for "payment_key", payment_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @member_account_key.nil?
        invalid_properties.push('invalid value for "member_account_key", member_account_key cannot be nil.')
      end

      if @plan_id.nil?
        invalid_properties.push('invalid value for "plan_id", plan_id cannot be nil.')
      end

      if @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.to_s.length < 1
        invalid_properties.push('invalid value for "plan_id", the character length must be great than or equal to 1.')
      end

      if !@transaction_id.nil? && @transaction_id.to_s.length > 20
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 20.')
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
      return false if @payment_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @member_account_key.nil?
      return false if @plan_id.nil?
      return false if @plan_id.to_s.length > 20
      return false if @plan_id.to_s.length < 1
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_key Value to be assigned
    def payment_key=(payment_key)
      if payment_key.nil?
        fail ArgumentError, 'payment_key cannot be nil'
      end

      @payment_key = payment_key
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
    # @param [Object] member_account_key Value to be assigned
    def member_account_key=(member_account_key)
      if member_account_key.nil?
        fail ArgumentError, 'member_account_key cannot be nil'
      end

      @member_account_key = member_account_key
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
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 20.'
      end

      @transaction_id = transaction_id
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
          payment_key == o.payment_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          member_account_key == o.member_account_key &&
          plan_id == o.plan_id &&
          transaction_amount == o.transaction_amount &&
          transaction_date == o.transaction_date &&
          transaction_id == o.transaction_id &&
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
      [payment_key, entry_date, entry_user, member_account_key, plan_id, transaction_amount, transaction_date, transaction_id, update_date, update_user].hash
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
