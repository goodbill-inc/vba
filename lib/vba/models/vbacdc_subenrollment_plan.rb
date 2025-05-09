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
  class VBACDCSubenrollmentPlan
    attr_accessor :subscriber_id

    attr_accessor :group_id

    attr_accessor :division_id

    attr_accessor :group_coverage_start

    attr_accessor :start_date

    attr_accessor :plan_id

    attr_accessor :plan_start

    attr_accessor :plan_end

    attr_accessor :tier

    attr_accessor :dollar_amount

    attr_accessor :use_volume_scale

    attr_accessor :paid_through

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :update_date

    attr_accessor :update_user

    attr_accessor :reason_id

    attr_accessor :lt_c_daily_benefit_amount

    attr_accessor :lt_c_monthly_benefit_amount

    attr_accessor :lt_c_lifetime_max_days

    attr_accessor :lt_c_lifetime_max_years

    attr_accessor :lt_c_lifetime_max_amount

    attr_accessor :writing_commission_agency_rep_key

    attr_accessor :application_received_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subscriber_id' => :'subscriber_ID',
        :'group_id' => :'group_ID',
        :'division_id' => :'division_ID',
        :'group_coverage_start' => :'group_Coverage_Start',
        :'start_date' => :'start_Date',
        :'plan_id' => :'plan_ID',
        :'plan_start' => :'plan_Start',
        :'plan_end' => :'plan_End',
        :'tier' => :'tier',
        :'dollar_amount' => :'dollar_Amount',
        :'use_volume_scale' => :'use_Volume_Scale',
        :'paid_through' => :'paid_Through',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'reason_id' => :'reason_ID',
        :'lt_c_daily_benefit_amount' => :'ltC_Daily_Benefit_Amount',
        :'lt_c_monthly_benefit_amount' => :'ltC_Monthly_Benefit_Amount',
        :'lt_c_lifetime_max_days' => :'ltC_Lifetime_Max_Days',
        :'lt_c_lifetime_max_years' => :'ltC_Lifetime_Max_Years',
        :'lt_c_lifetime_max_amount' => :'ltC_Lifetime_Max_Amount',
        :'writing_commission_agency_rep_key' => :'writing_CommissionAgencyRep_Key',
        :'application_received_date' => :'application_Received_Date'
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
        :'subscriber_id' => :'String',
        :'group_id' => :'String',
        :'division_id' => :'String',
        :'group_coverage_start' => :'Time',
        :'start_date' => :'Time',
        :'plan_id' => :'String',
        :'plan_start' => :'Time',
        :'plan_end' => :'Time',
        :'tier' => :'String',
        :'dollar_amount' => :'Float',
        :'use_volume_scale' => :'Boolean',
        :'paid_through' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'reason_id' => :'Integer',
        :'lt_c_daily_benefit_amount' => :'Float',
        :'lt_c_monthly_benefit_amount' => :'Float',
        :'lt_c_lifetime_max_days' => :'Integer',
        :'lt_c_lifetime_max_years' => :'Integer',
        :'lt_c_lifetime_max_amount' => :'Float',
        :'writing_commission_agency_rep_key' => :'Integer',
        :'application_received_date' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'subscriber_id',
        :'group_id',
        :'division_id',
        :'group_coverage_start',
        :'start_date',
        :'plan_id',
        :'plan_start',
        :'plan_end',
        :'tier',
        :'dollar_amount',
        :'use_volume_scale',
        :'paid_through',
        :'entry_date',
        :'entry_user',
        :'update_date',
        :'update_user',
        :'reason_id',
        :'lt_c_daily_benefit_amount',
        :'lt_c_monthly_benefit_amount',
        :'lt_c_lifetime_max_days',
        :'lt_c_lifetime_max_years',
        :'lt_c_lifetime_max_amount',
        :'writing_commission_agency_rep_key',
        :'application_received_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::VBACDCSubenrollmentPlan` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::VBACDCSubenrollmentPlan`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'group_coverage_start')
        self.group_coverage_start = attributes[:'group_coverage_start']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      end

      if attributes.key?(:'plan_start')
        self.plan_start = attributes[:'plan_start']
      end

      if attributes.key?(:'plan_end')
        self.plan_end = attributes[:'plan_end']
      end

      if attributes.key?(:'tier')
        self.tier = attributes[:'tier']
      end

      if attributes.key?(:'dollar_amount')
        self.dollar_amount = attributes[:'dollar_amount']
      end

      if attributes.key?(:'use_volume_scale')
        self.use_volume_scale = attributes[:'use_volume_scale']
      end

      if attributes.key?(:'paid_through')
        self.paid_through = attributes[:'paid_through']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'reason_id')
        self.reason_id = attributes[:'reason_id']
      end

      if attributes.key?(:'lt_c_daily_benefit_amount')
        self.lt_c_daily_benefit_amount = attributes[:'lt_c_daily_benefit_amount']
      end

      if attributes.key?(:'lt_c_monthly_benefit_amount')
        self.lt_c_monthly_benefit_amount = attributes[:'lt_c_monthly_benefit_amount']
      end

      if attributes.key?(:'lt_c_lifetime_max_days')
        self.lt_c_lifetime_max_days = attributes[:'lt_c_lifetime_max_days']
      end

      if attributes.key?(:'lt_c_lifetime_max_years')
        self.lt_c_lifetime_max_years = attributes[:'lt_c_lifetime_max_years']
      end

      if attributes.key?(:'lt_c_lifetime_max_amount')
        self.lt_c_lifetime_max_amount = attributes[:'lt_c_lifetime_max_amount']
      end

      if attributes.key?(:'writing_commission_agency_rep_key')
        self.writing_commission_agency_rep_key = attributes[:'writing_commission_agency_rep_key']
      end

      if attributes.key?(:'application_received_date')
        self.application_received_date = attributes[:'application_received_date']
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
          subscriber_id == o.subscriber_id &&
          group_id == o.group_id &&
          division_id == o.division_id &&
          group_coverage_start == o.group_coverage_start &&
          start_date == o.start_date &&
          plan_id == o.plan_id &&
          plan_start == o.plan_start &&
          plan_end == o.plan_end &&
          tier == o.tier &&
          dollar_amount == o.dollar_amount &&
          use_volume_scale == o.use_volume_scale &&
          paid_through == o.paid_through &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          reason_id == o.reason_id &&
          lt_c_daily_benefit_amount == o.lt_c_daily_benefit_amount &&
          lt_c_monthly_benefit_amount == o.lt_c_monthly_benefit_amount &&
          lt_c_lifetime_max_days == o.lt_c_lifetime_max_days &&
          lt_c_lifetime_max_years == o.lt_c_lifetime_max_years &&
          lt_c_lifetime_max_amount == o.lt_c_lifetime_max_amount &&
          writing_commission_agency_rep_key == o.writing_commission_agency_rep_key &&
          application_received_date == o.application_received_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, plan_end, tier, dollar_amount, use_volume_scale, paid_through, entry_date, entry_user, update_date, update_user, reason_id, lt_c_daily_benefit_amount, lt_c_monthly_benefit_amount, lt_c_lifetime_max_days, lt_c_lifetime_max_years, lt_c_lifetime_max_amount, writing_commission_agency_rep_key, application_received_date].hash
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
