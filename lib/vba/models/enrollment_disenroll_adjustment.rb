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
  class EnrollmentDisenrollAdjustment
    attr_accessor :selected

    attr_accessor :invoice_key

    attr_accessor :invoice_number

    attr_accessor :invoice_date

    attr_accessor :billing_from

    attr_accessor :billing_thru

    attr_accessor :group_id

    attr_accessor :division_id

    attr_accessor :prem_rate_key

    attr_accessor :rate_type

    attr_accessor :rate_description

    attr_accessor :invoice_days

    attr_accessor :pro_rate_days

    attr_accessor :invoice_amount

    attr_accessor :invoice_received

    attr_accessor :invoice_amount_per_day

    attr_accessor :pro_rate_amount

    attr_accessor :adjustment_amount

    attr_accessor :auto_adjust

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'selected' => :'selected',
        :'invoice_key' => :'invoice_Key',
        :'invoice_number' => :'invoice_Number',
        :'invoice_date' => :'invoice_Date',
        :'billing_from' => :'billing_From',
        :'billing_thru' => :'billing_Thru',
        :'group_id' => :'group_ID',
        :'division_id' => :'division_ID',
        :'prem_rate_key' => :'premRate_Key',
        :'rate_type' => :'rate_Type',
        :'rate_description' => :'rate_Description',
        :'invoice_days' => :'invoice_Days',
        :'pro_rate_days' => :'proRate_Days',
        :'invoice_amount' => :'invoice_Amount',
        :'invoice_received' => :'invoice_Received',
        :'invoice_amount_per_day' => :'invoice_Amount_Per_Day',
        :'pro_rate_amount' => :'proRate_Amount',
        :'adjustment_amount' => :'adjustment_Amount',
        :'auto_adjust' => :'auto_Adjust'
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
        :'selected' => :'Integer',
        :'invoice_key' => :'Integer',
        :'invoice_number' => :'String',
        :'invoice_date' => :'Time',
        :'billing_from' => :'Time',
        :'billing_thru' => :'Time',
        :'group_id' => :'String',
        :'division_id' => :'String',
        :'prem_rate_key' => :'Integer',
        :'rate_type' => :'String',
        :'rate_description' => :'String',
        :'invoice_days' => :'Integer',
        :'pro_rate_days' => :'Integer',
        :'invoice_amount' => :'Float',
        :'invoice_received' => :'Float',
        :'invoice_amount_per_day' => :'Float',
        :'pro_rate_amount' => :'Float',
        :'adjustment_amount' => :'Float',
        :'auto_adjust' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'invoice_number',
        :'invoice_date',
        :'billing_from',
        :'billing_thru',
        :'group_id',
        :'division_id',
        :'prem_rate_key',
        :'rate_type',
        :'rate_description',
        :'invoice_days',
        :'pro_rate_days',
        :'invoice_amount',
        :'invoice_received',
        :'invoice_amount_per_day',
        :'pro_rate_amount',
        :'adjustment_amount',
        :'auto_adjust'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::EnrollmentDisenrollAdjustment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::EnrollmentDisenrollAdjustment`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'selected')
        self.selected = attributes[:'selected']
      end

      if attributes.key?(:'invoice_key')
        self.invoice_key = attributes[:'invoice_key']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'billing_from')
        self.billing_from = attributes[:'billing_from']
      end

      if attributes.key?(:'billing_thru')
        self.billing_thru = attributes[:'billing_thru']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'prem_rate_key')
        self.prem_rate_key = attributes[:'prem_rate_key']
      end

      if attributes.key?(:'rate_type')
        self.rate_type = attributes[:'rate_type']
      end

      if attributes.key?(:'rate_description')
        self.rate_description = attributes[:'rate_description']
      end

      if attributes.key?(:'invoice_days')
        self.invoice_days = attributes[:'invoice_days']
      end

      if attributes.key?(:'pro_rate_days')
        self.pro_rate_days = attributes[:'pro_rate_days']
      end

      if attributes.key?(:'invoice_amount')
        self.invoice_amount = attributes[:'invoice_amount']
      end

      if attributes.key?(:'invoice_received')
        self.invoice_received = attributes[:'invoice_received']
      end

      if attributes.key?(:'invoice_amount_per_day')
        self.invoice_amount_per_day = attributes[:'invoice_amount_per_day']
      end

      if attributes.key?(:'pro_rate_amount')
        self.pro_rate_amount = attributes[:'pro_rate_amount']
      end

      if attributes.key?(:'adjustment_amount')
        self.adjustment_amount = attributes[:'adjustment_amount']
      end

      if attributes.key?(:'auto_adjust')
        self.auto_adjust = attributes[:'auto_adjust']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          selected == o.selected &&
          invoice_key == o.invoice_key &&
          invoice_number == o.invoice_number &&
          invoice_date == o.invoice_date &&
          billing_from == o.billing_from &&
          billing_thru == o.billing_thru &&
          group_id == o.group_id &&
          division_id == o.division_id &&
          prem_rate_key == o.prem_rate_key &&
          rate_type == o.rate_type &&
          rate_description == o.rate_description &&
          invoice_days == o.invoice_days &&
          pro_rate_days == o.pro_rate_days &&
          invoice_amount == o.invoice_amount &&
          invoice_received == o.invoice_received &&
          invoice_amount_per_day == o.invoice_amount_per_day &&
          pro_rate_amount == o.pro_rate_amount &&
          adjustment_amount == o.adjustment_amount &&
          auto_adjust == o.auto_adjust
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [selected, invoice_key, invoice_number, invoice_date, billing_from, billing_thru, group_id, division_id, prem_rate_key, rate_type, rate_description, invoice_days, pro_rate_days, invoice_amount, invoice_received, invoice_amount_per_day, pro_rate_amount, adjustment_amount, auto_adjust].hash
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
