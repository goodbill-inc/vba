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
  class VBAFundingAccountClaimInfo
    attr_accessor :claim_number

    attr_accessor :claim_paid_amount

    attr_accessor :claim_funded_status

    attr_accessor :service_lines

    attr_accessor :claim_status

    attr_accessor :payor_id

    attr_accessor :account_key

    attr_accessor :group_id

    attr_accessor :division_id

    attr_accessor :batch_number

    attr_accessor :batch_claim

    attr_accessor :provider_id

    attr_accessor :subscriber_id

    attr_accessor :member_seq

    attr_accessor :payee_id

    attr_accessor :provider_first_name

    attr_accessor :provider_last_name

    attr_accessor :org_name

    attr_accessor :payee_name

    attr_accessor :member_first_name

    attr_accessor :member_last_name

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :long_name

    attr_accessor :i_d_code_data

    attr_accessor :service_date

    attr_accessor :service_thru

    attr_accessor :send_check_to

    attr_accessor :pay_to_id

    attr_accessor :pay_to_name

    attr_accessor :selected

    attr_accessor :spec_claim

    attr_accessor :reins_claim

    attr_accessor :current_loss_amount

    attr_accessor :accumulated_loss_amount

    attr_accessor :over_spec_amount

    attr_accessor :include_in_spec_calc

    attr_accessor :partial_over_spec

    attr_accessor :over_reporting_limit

    attr_accessor :received_date

    attr_accessor :processed_date

    attr_accessor :claim_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'claim_number' => :'claim_Number',
        :'claim_paid_amount' => :'claimPaidAmount',
        :'claim_funded_status' => :'claim_Funded_Status',
        :'service_lines' => :'serviceLines',
        :'claim_status' => :'claim_Status',
        :'payor_id' => :'payor_ID',
        :'account_key' => :'account_Key',
        :'group_id' => :'group_ID',
        :'division_id' => :'division_ID',
        :'batch_number' => :'batch_Number',
        :'batch_claim' => :'batch_Claim',
        :'provider_id' => :'provider_ID',
        :'subscriber_id' => :'subscriber_ID',
        :'member_seq' => :'member_Seq',
        :'payee_id' => :'payee_ID',
        :'provider_first_name' => :'provider_First_Name',
        :'provider_last_name' => :'provider_Last_Name',
        :'org_name' => :'org_Name',
        :'payee_name' => :'payee_Name',
        :'member_first_name' => :'member_First_Name',
        :'member_last_name' => :'member_Last_Name',
        :'first_name' => :'first_Name',
        :'last_name' => :'last_Name',
        :'long_name' => :'long_Name',
        :'i_d_code_data' => :'iD_Code_Data',
        :'service_date' => :'service_Date',
        :'service_thru' => :'service_Thru',
        :'send_check_to' => :'send_Check_To',
        :'pay_to_id' => :'payToId',
        :'pay_to_name' => :'payToName',
        :'selected' => :'selected',
        :'spec_claim' => :'specClaim',
        :'reins_claim' => :'reinsClaim',
        :'current_loss_amount' => :'current_Loss_Amount',
        :'accumulated_loss_amount' => :'accumulated_Loss_Amount',
        :'over_spec_amount' => :'over_Spec_Amount',
        :'include_in_spec_calc' => :'include_In_Spec_Calc',
        :'partial_over_spec' => :'partial_Over_Spec',
        :'over_reporting_limit' => :'over_Reporting_Limit',
        :'received_date' => :'received_Date',
        :'processed_date' => :'processed_Date',
        :'claim_type' => :'claim_Type'
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
        :'claim_number' => :'Integer',
        :'claim_paid_amount' => :'Float',
        :'claim_funded_status' => :'String',
        :'service_lines' => :'Integer',
        :'claim_status' => :'String',
        :'payor_id' => :'String',
        :'account_key' => :'Integer',
        :'group_id' => :'String',
        :'division_id' => :'String',
        :'batch_number' => :'Integer',
        :'batch_claim' => :'Integer',
        :'provider_id' => :'String',
        :'subscriber_id' => :'String',
        :'member_seq' => :'String',
        :'payee_id' => :'String',
        :'provider_first_name' => :'String',
        :'provider_last_name' => :'String',
        :'org_name' => :'String',
        :'payee_name' => :'String',
        :'member_first_name' => :'String',
        :'member_last_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'long_name' => :'String',
        :'i_d_code_data' => :'String',
        :'service_date' => :'Time',
        :'service_thru' => :'Time',
        :'send_check_to' => :'String',
        :'pay_to_id' => :'String',
        :'pay_to_name' => :'String',
        :'selected' => :'Integer',
        :'spec_claim' => :'Integer',
        :'reins_claim' => :'Integer',
        :'current_loss_amount' => :'Float',
        :'accumulated_loss_amount' => :'Float',
        :'over_spec_amount' => :'Float',
        :'include_in_spec_calc' => :'Integer',
        :'partial_over_spec' => :'Integer',
        :'over_reporting_limit' => :'Integer',
        :'received_date' => :'Time',
        :'processed_date' => :'Time',
        :'claim_type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'claim_funded_status',
        :'claim_status',
        :'payor_id',
        :'account_key',
        :'group_id',
        :'division_id',
        :'batch_number',
        :'batch_claim',
        :'provider_id',
        :'subscriber_id',
        :'member_seq',
        :'payee_id',
        :'provider_first_name',
        :'provider_last_name',
        :'org_name',
        :'payee_name',
        :'member_first_name',
        :'member_last_name',
        :'first_name',
        :'last_name',
        :'long_name',
        :'i_d_code_data',
        :'service_date',
        :'service_thru',
        :'send_check_to',
        :'pay_to_id',
        :'pay_to_name',
        :'received_date',
        :'processed_date',
        :'claim_type'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::VBAFundingAccountClaimInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::VBAFundingAccountClaimInfo`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'claim_number')
        self.claim_number = attributes[:'claim_number']
      end

      if attributes.key?(:'claim_paid_amount')
        self.claim_paid_amount = attributes[:'claim_paid_amount']
      end

      if attributes.key?(:'claim_funded_status')
        self.claim_funded_status = attributes[:'claim_funded_status']
      end

      if attributes.key?(:'service_lines')
        self.service_lines = attributes[:'service_lines']
      end

      if attributes.key?(:'claim_status')
        self.claim_status = attributes[:'claim_status']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'account_key')
        self.account_key = attributes[:'account_key']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'batch_number')
        self.batch_number = attributes[:'batch_number']
      end

      if attributes.key?(:'batch_claim')
        self.batch_claim = attributes[:'batch_claim']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      end

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      end

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'provider_first_name')
        self.provider_first_name = attributes[:'provider_first_name']
      end

      if attributes.key?(:'provider_last_name')
        self.provider_last_name = attributes[:'provider_last_name']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'payee_name')
        self.payee_name = attributes[:'payee_name']
      end

      if attributes.key?(:'member_first_name')
        self.member_first_name = attributes[:'member_first_name']
      end

      if attributes.key?(:'member_last_name')
        self.member_last_name = attributes[:'member_last_name']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'long_name')
        self.long_name = attributes[:'long_name']
      end

      if attributes.key?(:'i_d_code_data')
        self.i_d_code_data = attributes[:'i_d_code_data']
      end

      if attributes.key?(:'service_date')
        self.service_date = attributes[:'service_date']
      end

      if attributes.key?(:'service_thru')
        self.service_thru = attributes[:'service_thru']
      end

      if attributes.key?(:'send_check_to')
        self.send_check_to = attributes[:'send_check_to']
      end

      if attributes.key?(:'pay_to_id')
        self.pay_to_id = attributes[:'pay_to_id']
      end

      if attributes.key?(:'pay_to_name')
        self.pay_to_name = attributes[:'pay_to_name']
      end

      if attributes.key?(:'selected')
        self.selected = attributes[:'selected']
      end

      if attributes.key?(:'spec_claim')
        self.spec_claim = attributes[:'spec_claim']
      end

      if attributes.key?(:'reins_claim')
        self.reins_claim = attributes[:'reins_claim']
      end

      if attributes.key?(:'current_loss_amount')
        self.current_loss_amount = attributes[:'current_loss_amount']
      end

      if attributes.key?(:'accumulated_loss_amount')
        self.accumulated_loss_amount = attributes[:'accumulated_loss_amount']
      end

      if attributes.key?(:'over_spec_amount')
        self.over_spec_amount = attributes[:'over_spec_amount']
      end

      if attributes.key?(:'include_in_spec_calc')
        self.include_in_spec_calc = attributes[:'include_in_spec_calc']
      end

      if attributes.key?(:'partial_over_spec')
        self.partial_over_spec = attributes[:'partial_over_spec']
      end

      if attributes.key?(:'over_reporting_limit')
        self.over_reporting_limit = attributes[:'over_reporting_limit']
      end

      if attributes.key?(:'received_date')
        self.received_date = attributes[:'received_date']
      end

      if attributes.key?(:'processed_date')
        self.processed_date = attributes[:'processed_date']
      end

      if attributes.key?(:'claim_type')
        self.claim_type = attributes[:'claim_type']
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
          claim_number == o.claim_number &&
          claim_paid_amount == o.claim_paid_amount &&
          claim_funded_status == o.claim_funded_status &&
          service_lines == o.service_lines &&
          claim_status == o.claim_status &&
          payor_id == o.payor_id &&
          account_key == o.account_key &&
          group_id == o.group_id &&
          division_id == o.division_id &&
          batch_number == o.batch_number &&
          batch_claim == o.batch_claim &&
          provider_id == o.provider_id &&
          subscriber_id == o.subscriber_id &&
          member_seq == o.member_seq &&
          payee_id == o.payee_id &&
          provider_first_name == o.provider_first_name &&
          provider_last_name == o.provider_last_name &&
          org_name == o.org_name &&
          payee_name == o.payee_name &&
          member_first_name == o.member_first_name &&
          member_last_name == o.member_last_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          long_name == o.long_name &&
          i_d_code_data == o.i_d_code_data &&
          service_date == o.service_date &&
          service_thru == o.service_thru &&
          send_check_to == o.send_check_to &&
          pay_to_id == o.pay_to_id &&
          pay_to_name == o.pay_to_name &&
          selected == o.selected &&
          spec_claim == o.spec_claim &&
          reins_claim == o.reins_claim &&
          current_loss_amount == o.current_loss_amount &&
          accumulated_loss_amount == o.accumulated_loss_amount &&
          over_spec_amount == o.over_spec_amount &&
          include_in_spec_calc == o.include_in_spec_calc &&
          partial_over_spec == o.partial_over_spec &&
          over_reporting_limit == o.over_reporting_limit &&
          received_date == o.received_date &&
          processed_date == o.processed_date &&
          claim_type == o.claim_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [claim_number, claim_paid_amount, claim_funded_status, service_lines, claim_status, payor_id, account_key, group_id, division_id, batch_number, batch_claim, provider_id, subscriber_id, member_seq, payee_id, provider_first_name, provider_last_name, org_name, payee_name, member_first_name, member_last_name, first_name, last_name, long_name, i_d_code_data, service_date, service_thru, send_check_to, pay_to_id, pay_to_name, selected, spec_claim, reins_claim, current_loss_amount, accumulated_loss_amount, over_spec_amount, include_in_spec_calc, partial_over_spec, over_reporting_limit, received_date, processed_date, claim_type].hash
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
