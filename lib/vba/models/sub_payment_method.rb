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
  class SubPaymentMethod
    # The primary key and identifier of the record Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :sub_payment_method_key

    # Day of the month the ACH payment will be taken from the account
    attr_accessor :ac_h_pull_day

    # References the benefit code associated with the payment method
    attr_accessor :benefit_code

    # The effective date of the payment method Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :effective_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # The payment method associated with the subscriber, plan, benefit code combination
    attr_accessor :payment_method

    # References the plan associated with the payment method
    attr_accessor :plan_id

    # References the subscriber associated with the payment method
    attr_accessor :subscriber_id

    # The termination date of the payment method
    attr_accessor :term_date

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sub_payment_method_key' => :'sub_Payment_Method_Key',
        :'ac_h_pull_day' => :'acH_Pull_Day',
        :'benefit_code' => :'benefit_Code',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'payment_method' => :'payment_Method',
        :'plan_id' => :'plan_ID',
        :'subscriber_id' => :'subscriber_ID',
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
        :'sub_payment_method_key' => :'Integer',
        :'ac_h_pull_day' => :'Integer',
        :'benefit_code' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'payment_method' => :'String',
        :'plan_id' => :'String',
        :'subscriber_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ac_h_pull_day',
        :'benefit_code',
        :'entry_user',
        :'plan_id',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::SubPaymentMethod` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::SubPaymentMethod`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sub_payment_method_key')
        self.sub_payment_method_key = attributes[:'sub_payment_method_key']
      else
        self.sub_payment_method_key = nil
      end

      if attributes.key?(:'ac_h_pull_day')
        self.ac_h_pull_day = attributes[:'ac_h_pull_day']
      end

      if attributes.key?(:'benefit_code')
        self.benefit_code = attributes[:'benefit_code']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      else
        self.effective_date = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      else
        self.payment_method = nil
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      else
        self.subscriber_id = nil
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
      if @sub_payment_method_key.nil?
        invalid_properties.push('invalid value for "sub_payment_method_key", sub_payment_method_key cannot be nil.')
      end

      if !@benefit_code.nil? && @benefit_code.to_s.length > 10
        invalid_properties.push('invalid value for "benefit_code", the character length must be smaller than or equal to 10.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @payment_method.nil?
        invalid_properties.push('invalid value for "payment_method", payment_method cannot be nil.')
      end

      if @payment_method.to_s.length > 20
        invalid_properties.push('invalid value for "payment_method", the character length must be smaller than or equal to 20.')
      end

      if @payment_method.to_s.length < 1
        invalid_properties.push('invalid value for "payment_method", the character length must be great than or equal to 1.')
      end

      if !@plan_id.nil? && @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @subscriber_id.nil?
        invalid_properties.push('invalid value for "subscriber_id", subscriber_id cannot be nil.')
      end

      if @subscriber_id.to_s.length > 9
        invalid_properties.push('invalid value for "subscriber_id", the character length must be smaller than or equal to 9.')
      end

      if @subscriber_id.to_s.length < 1
        invalid_properties.push('invalid value for "subscriber_id", the character length must be great than or equal to 1.')
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
      return false if @sub_payment_method_key.nil?
      return false if !@benefit_code.nil? && @benefit_code.to_s.length > 10
      return false if @effective_date.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @payment_method.nil?
      return false if @payment_method.to_s.length > 20
      return false if @payment_method.to_s.length < 1
      return false if !@plan_id.nil? && @plan_id.to_s.length > 20
      return false if @subscriber_id.nil?
      return false if @subscriber_id.to_s.length > 9
      return false if @subscriber_id.to_s.length < 1
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] sub_payment_method_key Value to be assigned
    def sub_payment_method_key=(sub_payment_method_key)
      if sub_payment_method_key.nil?
        fail ArgumentError, 'sub_payment_method_key cannot be nil'
      end

      @sub_payment_method_key = sub_payment_method_key
    end

    # Custom attribute writer method with validation
    # @param [Object] benefit_code Value to be assigned
    def benefit_code=(benefit_code)
      if !benefit_code.nil? && benefit_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "benefit_code", the character length must be smaller than or equal to 10.'
      end

      @benefit_code = benefit_code
    end

    # Custom attribute writer method with validation
    # @param [Object] effective_date Value to be assigned
    def effective_date=(effective_date)
      if effective_date.nil?
        fail ArgumentError, 'effective_date cannot be nil'
      end

      @effective_date = effective_date
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
    # @param [Object] payment_method Value to be assigned
    def payment_method=(payment_method)
      if payment_method.nil?
        fail ArgumentError, 'payment_method cannot be nil'
      end

      if payment_method.to_s.length > 20
        fail ArgumentError, 'invalid value for "payment_method", the character length must be smaller than or equal to 20.'
      end

      if payment_method.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_method", the character length must be great than or equal to 1.'
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_id Value to be assigned
    def plan_id=(plan_id)
      if !plan_id.nil? && plan_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "plan_id", the character length must be smaller than or equal to 20.'
      end

      @plan_id = plan_id
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber_id Value to be assigned
    def subscriber_id=(subscriber_id)
      if subscriber_id.nil?
        fail ArgumentError, 'subscriber_id cannot be nil'
      end

      if subscriber_id.to_s.length > 9
        fail ArgumentError, 'invalid value for "subscriber_id", the character length must be smaller than or equal to 9.'
      end

      if subscriber_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "subscriber_id", the character length must be great than or equal to 1.'
      end

      @subscriber_id = subscriber_id
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
          sub_payment_method_key == o.sub_payment_method_key &&
          ac_h_pull_day == o.ac_h_pull_day &&
          benefit_code == o.benefit_code &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          payment_method == o.payment_method &&
          plan_id == o.plan_id &&
          subscriber_id == o.subscriber_id &&
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
      [sub_payment_method_key, ac_h_pull_day, benefit_code, effective_date, entry_date, entry_user, payment_method, plan_id, subscriber_id, term_date, update_date, update_user].hash
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
