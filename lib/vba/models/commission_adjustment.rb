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
  class CommissionAdjustment
    # Unique identifier for the Commission Activity Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :commission_adjustment_key

    # Account for this Commission Adjustment
    attr_accessor :account_key

    # Amount of the adjustment
    attr_accessor :adjustment_amount

    # Date of the adjustment
    attr_accessor :adjustment_date

    # Check Batch for this Commission Adjustment
    attr_accessor :check_batch

    # Check for this Commission Adjustment
    attr_accessor :check_id

    # Unique identifier for the CommissionAgencyRepRate table
    attr_accessor :commission_agency_rep_rate_key

    # Unique identifier for the CommissionTransaction table
    attr_accessor :commission_transaction_key

    # Reason for the Commission Adjustment
    attr_accessor :commission_adjustment_reason

    # Type of the Commission Adjustment
    attr_accessor :commission_adjustment_type

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Payor for this Commission Adjustment
    attr_accessor :payor_id

    # TBD Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :pre_payment_adjustment

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    attr_accessor :commission_agency_rep_key

    attr_accessor :commission_rate_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commission_adjustment_key' => :'commissionAdjustment_Key',
        :'account_key' => :'account_Key',
        :'adjustment_amount' => :'adjustment_Amount',
        :'adjustment_date' => :'adjustment_Date',
        :'check_batch' => :'check_Batch',
        :'check_id' => :'check_ID',
        :'commission_agency_rep_rate_key' => :'commissionAgencyRepRate_Key',
        :'commission_transaction_key' => :'commissionTransaction_Key',
        :'commission_adjustment_reason' => :'commission_Adjustment_Reason',
        :'commission_adjustment_type' => :'commission_Adjustment_Type',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'payor_id' => :'payor_ID',
        :'pre_payment_adjustment' => :'pre_Payment_Adjustment',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'commission_agency_rep_key' => :'commissionAgencyRep_Key',
        :'commission_rate_key' => :'commissionRate_Key'
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
        :'commission_adjustment_key' => :'Integer',
        :'account_key' => :'Integer',
        :'adjustment_amount' => :'Float',
        :'adjustment_date' => :'Time',
        :'check_batch' => :'Integer',
        :'check_id' => :'Integer',
        :'commission_agency_rep_rate_key' => :'Integer',
        :'commission_transaction_key' => :'Integer',
        :'commission_adjustment_reason' => :'String',
        :'commission_adjustment_type' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'payor_id' => :'String',
        :'pre_payment_adjustment' => :'Boolean',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'commission_agency_rep_key' => :'Integer',
        :'commission_rate_key' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_key',
        :'adjustment_amount',
        :'adjustment_date',
        :'check_batch',
        :'check_id',
        :'commission_agency_rep_rate_key',
        :'commission_transaction_key',
        :'commission_adjustment_reason',
        :'commission_adjustment_type',
        :'entry_user',
        :'payor_id',
        :'update_user',
        :'commission_agency_rep_key',
        :'commission_rate_key'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CommissionAdjustment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CommissionAdjustment`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'commission_adjustment_key')
        self.commission_adjustment_key = attributes[:'commission_adjustment_key']
      else
        self.commission_adjustment_key = nil
      end

      if attributes.key?(:'account_key')
        self.account_key = attributes[:'account_key']
      end

      if attributes.key?(:'adjustment_amount')
        self.adjustment_amount = attributes[:'adjustment_amount']
      end

      if attributes.key?(:'adjustment_date')
        self.adjustment_date = attributes[:'adjustment_date']
      end

      if attributes.key?(:'check_batch')
        self.check_batch = attributes[:'check_batch']
      end

      if attributes.key?(:'check_id')
        self.check_id = attributes[:'check_id']
      end

      if attributes.key?(:'commission_agency_rep_rate_key')
        self.commission_agency_rep_rate_key = attributes[:'commission_agency_rep_rate_key']
      end

      if attributes.key?(:'commission_transaction_key')
        self.commission_transaction_key = attributes[:'commission_transaction_key']
      end

      if attributes.key?(:'commission_adjustment_reason')
        self.commission_adjustment_reason = attributes[:'commission_adjustment_reason']
      end

      if attributes.key?(:'commission_adjustment_type')
        self.commission_adjustment_type = attributes[:'commission_adjustment_type']
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

      if attributes.key?(:'pre_payment_adjustment')
        self.pre_payment_adjustment = attributes[:'pre_payment_adjustment']
      else
        self.pre_payment_adjustment = nil
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'commission_agency_rep_key')
        self.commission_agency_rep_key = attributes[:'commission_agency_rep_key']
      end

      if attributes.key?(:'commission_rate_key')
        self.commission_rate_key = attributes[:'commission_rate_key']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @commission_adjustment_key.nil?
        invalid_properties.push('invalid value for "commission_adjustment_key", commission_adjustment_key cannot be nil.')
      end

      if !@commission_adjustment_reason.nil? && @commission_adjustment_reason.to_s.length > 8
        invalid_properties.push('invalid value for "commission_adjustment_reason", the character length must be smaller than or equal to 8.')
      end

      if !@commission_adjustment_type.nil? && @commission_adjustment_type.to_s.length > 8
        invalid_properties.push('invalid value for "commission_adjustment_type", the character length must be smaller than or equal to 8.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@payor_id.nil? && @payor_id.to_s.length > 20
        invalid_properties.push('invalid value for "payor_id", the character length must be smaller than or equal to 20.')
      end

      if @pre_payment_adjustment.nil?
        invalid_properties.push('invalid value for "pre_payment_adjustment", pre_payment_adjustment cannot be nil.')
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
      return false if @commission_adjustment_key.nil?
      return false if !@commission_adjustment_reason.nil? && @commission_adjustment_reason.to_s.length > 8
      return false if !@commission_adjustment_type.nil? && @commission_adjustment_type.to_s.length > 8
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@payor_id.nil? && @payor_id.to_s.length > 20
      return false if @pre_payment_adjustment.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_adjustment_key Value to be assigned
    def commission_adjustment_key=(commission_adjustment_key)
      if commission_adjustment_key.nil?
        fail ArgumentError, 'commission_adjustment_key cannot be nil'
      end

      @commission_adjustment_key = commission_adjustment_key
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_adjustment_reason Value to be assigned
    def commission_adjustment_reason=(commission_adjustment_reason)
      if !commission_adjustment_reason.nil? && commission_adjustment_reason.to_s.length > 8
        fail ArgumentError, 'invalid value for "commission_adjustment_reason", the character length must be smaller than or equal to 8.'
      end

      @commission_adjustment_reason = commission_adjustment_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_adjustment_type Value to be assigned
    def commission_adjustment_type=(commission_adjustment_type)
      if !commission_adjustment_type.nil? && commission_adjustment_type.to_s.length > 8
        fail ArgumentError, 'invalid value for "commission_adjustment_type", the character length must be smaller than or equal to 8.'
      end

      @commission_adjustment_type = commission_adjustment_type
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
    # @param [Object] pre_payment_adjustment Value to be assigned
    def pre_payment_adjustment=(pre_payment_adjustment)
      if pre_payment_adjustment.nil?
        fail ArgumentError, 'pre_payment_adjustment cannot be nil'
      end

      @pre_payment_adjustment = pre_payment_adjustment
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
          commission_adjustment_key == o.commission_adjustment_key &&
          account_key == o.account_key &&
          adjustment_amount == o.adjustment_amount &&
          adjustment_date == o.adjustment_date &&
          check_batch == o.check_batch &&
          check_id == o.check_id &&
          commission_agency_rep_rate_key == o.commission_agency_rep_rate_key &&
          commission_transaction_key == o.commission_transaction_key &&
          commission_adjustment_reason == o.commission_adjustment_reason &&
          commission_adjustment_type == o.commission_adjustment_type &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          payor_id == o.payor_id &&
          pre_payment_adjustment == o.pre_payment_adjustment &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          commission_agency_rep_key == o.commission_agency_rep_key &&
          commission_rate_key == o.commission_rate_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [commission_adjustment_key, account_key, adjustment_amount, adjustment_date, check_batch, check_id, commission_agency_rep_rate_key, commission_transaction_key, commission_adjustment_reason, commission_adjustment_type, entry_date, entry_user, payor_id, pre_payment_adjustment, update_date, update_user, commission_agency_rep_key, commission_rate_key].hash
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
