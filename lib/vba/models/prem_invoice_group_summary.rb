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
  class PremInvoiceGroupSummary
    attr_accessor :subscriber_count

    attr_accessor :paid_subscriber_count

    attr_accessor :dependent_count

    attr_accessor :paid_dependent_count

    attr_accessor :member_count

    attr_accessor :paid_member_count

    attr_accessor :premium

    attr_accessor :premium_received

    attr_accessor :posted_payment

    attr_accessor :unposted_amount

    attr_accessor :amount_due

    attr_accessor :header_adjustment

    attr_accessor :subscriber_adjustment

    attr_accessor :adjustment_received

    attr_accessor :detail_adjustment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subscriber_count' => :'subscriberCount',
        :'paid_subscriber_count' => :'paidSubscriberCount',
        :'dependent_count' => :'dependentCount',
        :'paid_dependent_count' => :'paidDependentCount',
        :'member_count' => :'memberCount',
        :'paid_member_count' => :'paidMemberCount',
        :'premium' => :'premium',
        :'premium_received' => :'premiumReceived',
        :'posted_payment' => :'postedPayment',
        :'unposted_amount' => :'unpostedAmount',
        :'amount_due' => :'amountDue',
        :'header_adjustment' => :'headerAdjustment',
        :'subscriber_adjustment' => :'subscriberAdjustment',
        :'adjustment_received' => :'adjustmentReceived',
        :'detail_adjustment' => :'detailAdjustment'
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
        :'subscriber_count' => :'Integer',
        :'paid_subscriber_count' => :'Integer',
        :'dependent_count' => :'Integer',
        :'paid_dependent_count' => :'Integer',
        :'member_count' => :'Integer',
        :'paid_member_count' => :'Integer',
        :'premium' => :'Float',
        :'premium_received' => :'Float',
        :'posted_payment' => :'Float',
        :'unposted_amount' => :'Float',
        :'amount_due' => :'Float',
        :'header_adjustment' => :'Float',
        :'subscriber_adjustment' => :'Float',
        :'adjustment_received' => :'Float',
        :'detail_adjustment' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PremInvoiceGroupSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PremInvoiceGroupSummary`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'subscriber_count')
        self.subscriber_count = attributes[:'subscriber_count']
      else
        self.subscriber_count = nil
      end

      if attributes.key?(:'paid_subscriber_count')
        self.paid_subscriber_count = attributes[:'paid_subscriber_count']
      else
        self.paid_subscriber_count = nil
      end

      if attributes.key?(:'dependent_count')
        self.dependent_count = attributes[:'dependent_count']
      else
        self.dependent_count = nil
      end

      if attributes.key?(:'paid_dependent_count')
        self.paid_dependent_count = attributes[:'paid_dependent_count']
      else
        self.paid_dependent_count = nil
      end

      if attributes.key?(:'member_count')
        self.member_count = attributes[:'member_count']
      else
        self.member_count = nil
      end

      if attributes.key?(:'paid_member_count')
        self.paid_member_count = attributes[:'paid_member_count']
      else
        self.paid_member_count = nil
      end

      if attributes.key?(:'premium')
        self.premium = attributes[:'premium']
      else
        self.premium = nil
      end

      if attributes.key?(:'premium_received')
        self.premium_received = attributes[:'premium_received']
      else
        self.premium_received = nil
      end

      if attributes.key?(:'posted_payment')
        self.posted_payment = attributes[:'posted_payment']
      else
        self.posted_payment = nil
      end

      if attributes.key?(:'unposted_amount')
        self.unposted_amount = attributes[:'unposted_amount']
      else
        self.unposted_amount = nil
      end

      if attributes.key?(:'amount_due')
        self.amount_due = attributes[:'amount_due']
      else
        self.amount_due = nil
      end

      if attributes.key?(:'header_adjustment')
        self.header_adjustment = attributes[:'header_adjustment']
      else
        self.header_adjustment = nil
      end

      if attributes.key?(:'subscriber_adjustment')
        self.subscriber_adjustment = attributes[:'subscriber_adjustment']
      else
        self.subscriber_adjustment = nil
      end

      if attributes.key?(:'adjustment_received')
        self.adjustment_received = attributes[:'adjustment_received']
      else
        self.adjustment_received = nil
      end

      if attributes.key?(:'detail_adjustment')
        self.detail_adjustment = attributes[:'detail_adjustment']
      else
        self.detail_adjustment = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @subscriber_count.nil?
        invalid_properties.push('invalid value for "subscriber_count", subscriber_count cannot be nil.')
      end

      if @paid_subscriber_count.nil?
        invalid_properties.push('invalid value for "paid_subscriber_count", paid_subscriber_count cannot be nil.')
      end

      if @dependent_count.nil?
        invalid_properties.push('invalid value for "dependent_count", dependent_count cannot be nil.')
      end

      if @paid_dependent_count.nil?
        invalid_properties.push('invalid value for "paid_dependent_count", paid_dependent_count cannot be nil.')
      end

      if @member_count.nil?
        invalid_properties.push('invalid value for "member_count", member_count cannot be nil.')
      end

      if @paid_member_count.nil?
        invalid_properties.push('invalid value for "paid_member_count", paid_member_count cannot be nil.')
      end

      if @premium.nil?
        invalid_properties.push('invalid value for "premium", premium cannot be nil.')
      end

      if @premium_received.nil?
        invalid_properties.push('invalid value for "premium_received", premium_received cannot be nil.')
      end

      if @posted_payment.nil?
        invalid_properties.push('invalid value for "posted_payment", posted_payment cannot be nil.')
      end

      if @unposted_amount.nil?
        invalid_properties.push('invalid value for "unposted_amount", unposted_amount cannot be nil.')
      end

      if @amount_due.nil?
        invalid_properties.push('invalid value for "amount_due", amount_due cannot be nil.')
      end

      if @header_adjustment.nil?
        invalid_properties.push('invalid value for "header_adjustment", header_adjustment cannot be nil.')
      end

      if @subscriber_adjustment.nil?
        invalid_properties.push('invalid value for "subscriber_adjustment", subscriber_adjustment cannot be nil.')
      end

      if @adjustment_received.nil?
        invalid_properties.push('invalid value for "adjustment_received", adjustment_received cannot be nil.')
      end

      if @detail_adjustment.nil?
        invalid_properties.push('invalid value for "detail_adjustment", detail_adjustment cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @subscriber_count.nil?
      return false if @paid_subscriber_count.nil?
      return false if @dependent_count.nil?
      return false if @paid_dependent_count.nil?
      return false if @member_count.nil?
      return false if @paid_member_count.nil?
      return false if @premium.nil?
      return false if @premium_received.nil?
      return false if @posted_payment.nil?
      return false if @unposted_amount.nil?
      return false if @amount_due.nil?
      return false if @header_adjustment.nil?
      return false if @subscriber_adjustment.nil?
      return false if @adjustment_received.nil?
      return false if @detail_adjustment.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber_count Value to be assigned
    def subscriber_count=(subscriber_count)
      if subscriber_count.nil?
        fail ArgumentError, 'subscriber_count cannot be nil'
      end

      @subscriber_count = subscriber_count
    end

    # Custom attribute writer method with validation
    # @param [Object] paid_subscriber_count Value to be assigned
    def paid_subscriber_count=(paid_subscriber_count)
      if paid_subscriber_count.nil?
        fail ArgumentError, 'paid_subscriber_count cannot be nil'
      end

      @paid_subscriber_count = paid_subscriber_count
    end

    # Custom attribute writer method with validation
    # @param [Object] dependent_count Value to be assigned
    def dependent_count=(dependent_count)
      if dependent_count.nil?
        fail ArgumentError, 'dependent_count cannot be nil'
      end

      @dependent_count = dependent_count
    end

    # Custom attribute writer method with validation
    # @param [Object] paid_dependent_count Value to be assigned
    def paid_dependent_count=(paid_dependent_count)
      if paid_dependent_count.nil?
        fail ArgumentError, 'paid_dependent_count cannot be nil'
      end

      @paid_dependent_count = paid_dependent_count
    end

    # Custom attribute writer method with validation
    # @param [Object] member_count Value to be assigned
    def member_count=(member_count)
      if member_count.nil?
        fail ArgumentError, 'member_count cannot be nil'
      end

      @member_count = member_count
    end

    # Custom attribute writer method with validation
    # @param [Object] paid_member_count Value to be assigned
    def paid_member_count=(paid_member_count)
      if paid_member_count.nil?
        fail ArgumentError, 'paid_member_count cannot be nil'
      end

      @paid_member_count = paid_member_count
    end

    # Custom attribute writer method with validation
    # @param [Object] premium Value to be assigned
    def premium=(premium)
      if premium.nil?
        fail ArgumentError, 'premium cannot be nil'
      end

      @premium = premium
    end

    # Custom attribute writer method with validation
    # @param [Object] premium_received Value to be assigned
    def premium_received=(premium_received)
      if premium_received.nil?
        fail ArgumentError, 'premium_received cannot be nil'
      end

      @premium_received = premium_received
    end

    # Custom attribute writer method with validation
    # @param [Object] posted_payment Value to be assigned
    def posted_payment=(posted_payment)
      if posted_payment.nil?
        fail ArgumentError, 'posted_payment cannot be nil'
      end

      @posted_payment = posted_payment
    end

    # Custom attribute writer method with validation
    # @param [Object] unposted_amount Value to be assigned
    def unposted_amount=(unposted_amount)
      if unposted_amount.nil?
        fail ArgumentError, 'unposted_amount cannot be nil'
      end

      @unposted_amount = unposted_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] amount_due Value to be assigned
    def amount_due=(amount_due)
      if amount_due.nil?
        fail ArgumentError, 'amount_due cannot be nil'
      end

      @amount_due = amount_due
    end

    # Custom attribute writer method with validation
    # @param [Object] header_adjustment Value to be assigned
    def header_adjustment=(header_adjustment)
      if header_adjustment.nil?
        fail ArgumentError, 'header_adjustment cannot be nil'
      end

      @header_adjustment = header_adjustment
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber_adjustment Value to be assigned
    def subscriber_adjustment=(subscriber_adjustment)
      if subscriber_adjustment.nil?
        fail ArgumentError, 'subscriber_adjustment cannot be nil'
      end

      @subscriber_adjustment = subscriber_adjustment
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_received Value to be assigned
    def adjustment_received=(adjustment_received)
      if adjustment_received.nil?
        fail ArgumentError, 'adjustment_received cannot be nil'
      end

      @adjustment_received = adjustment_received
    end

    # Custom attribute writer method with validation
    # @param [Object] detail_adjustment Value to be assigned
    def detail_adjustment=(detail_adjustment)
      if detail_adjustment.nil?
        fail ArgumentError, 'detail_adjustment cannot be nil'
      end

      @detail_adjustment = detail_adjustment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          subscriber_count == o.subscriber_count &&
          paid_subscriber_count == o.paid_subscriber_count &&
          dependent_count == o.dependent_count &&
          paid_dependent_count == o.paid_dependent_count &&
          member_count == o.member_count &&
          paid_member_count == o.paid_member_count &&
          premium == o.premium &&
          premium_received == o.premium_received &&
          posted_payment == o.posted_payment &&
          unposted_amount == o.unposted_amount &&
          amount_due == o.amount_due &&
          header_adjustment == o.header_adjustment &&
          subscriber_adjustment == o.subscriber_adjustment &&
          adjustment_received == o.adjustment_received &&
          detail_adjustment == o.detail_adjustment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [subscriber_count, paid_subscriber_count, dependent_count, paid_dependent_count, member_count, paid_member_count, premium, premium_received, posted_payment, unposted_amount, amount_due, header_adjustment, subscriber_adjustment, adjustment_received, detail_adjustment].hash
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
