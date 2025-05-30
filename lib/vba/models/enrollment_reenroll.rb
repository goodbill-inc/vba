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
  class EnrollmentReenroll
    # The user for which this request is executed on behalf of.
    attr_accessor :user_id

    attr_accessor :subscriber_id

    attr_accessor :member_seq

    attr_accessor :group_id

    attr_accessor :division_id

    attr_accessor :reenroll_family

    attr_accessor :subscriber

    attr_accessor :start_date

    attr_accessor :reenroll_cobra

    attr_accessor :reset_auth

    attr_accessor :disenroll_date

    attr_accessor :cobra_division

    attr_accessor :cobra_cov_start

    attr_accessor :cobra_start

    attr_accessor :cobra_end

    attr_accessor :cobra_reason

    attr_accessor :generate_invoice

    attr_accessor :invoice_date

    attr_accessor :group_reenroll

    attr_accessor :reset_group_disenroll

    attr_accessor :reenroll_all

    attr_accessor :cobra_plan_criterias

    attr_accessor :member_seq_criterias

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_id' => :'user_ID',
        :'subscriber_id' => :'subscriber_ID',
        :'member_seq' => :'member_Seq',
        :'group_id' => :'group_ID',
        :'division_id' => :'division_ID',
        :'reenroll_family' => :'reenrollFamily',
        :'subscriber' => :'subscriber',
        :'start_date' => :'start_Date',
        :'reenroll_cobra' => :'reenrollCOBRA',
        :'reset_auth' => :'resetAuth',
        :'disenroll_date' => :'disenroll_Date',
        :'cobra_division' => :'cobraDivision',
        :'cobra_cov_start' => :'cobraCovStart',
        :'cobra_start' => :'cobraStart',
        :'cobra_end' => :'cobraEnd',
        :'cobra_reason' => :'cobraReason',
        :'generate_invoice' => :'generateInvoice',
        :'invoice_date' => :'invoiceDate',
        :'group_reenroll' => :'groupReenroll',
        :'reset_group_disenroll' => :'resetGroupDisenroll',
        :'reenroll_all' => :'reenrollAll',
        :'cobra_plan_criterias' => :'cobraPlanCriterias',
        :'member_seq_criterias' => :'memberSeqCriterias'
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
        :'user_id' => :'String',
        :'subscriber_id' => :'String',
        :'member_seq' => :'String',
        :'group_id' => :'String',
        :'division_id' => :'String',
        :'reenroll_family' => :'Integer',
        :'subscriber' => :'Boolean',
        :'start_date' => :'Time',
        :'reenroll_cobra' => :'Boolean',
        :'reset_auth' => :'Boolean',
        :'disenroll_date' => :'Time',
        :'cobra_division' => :'String',
        :'cobra_cov_start' => :'Time',
        :'cobra_start' => :'Time',
        :'cobra_end' => :'Time',
        :'cobra_reason' => :'Integer',
        :'generate_invoice' => :'Boolean',
        :'invoice_date' => :'Time',
        :'group_reenroll' => :'Boolean',
        :'reset_group_disenroll' => :'Boolean',
        :'reenroll_all' => :'Boolean',
        :'cobra_plan_criterias' => :'Array<COBRAPlanCriteria>',
        :'member_seq_criterias' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'subscriber_id',
        :'member_seq',
        :'group_id',
        :'division_id',
        :'reenroll_family',
        :'start_date',
        :'disenroll_date',
        :'cobra_division',
        :'cobra_cov_start',
        :'cobra_start',
        :'cobra_end',
        :'cobra_reason',
        :'invoice_date',
        :'cobra_plan_criterias',
        :'member_seq_criterias'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::EnrollmentReenroll` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::EnrollmentReenroll`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      else
        self.user_id = nil
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      end

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'reenroll_family')
        self.reenroll_family = attributes[:'reenroll_family']
      end

      if attributes.key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'reenroll_cobra')
        self.reenroll_cobra = attributes[:'reenroll_cobra']
      end

      if attributes.key?(:'reset_auth')
        self.reset_auth = attributes[:'reset_auth']
      end

      if attributes.key?(:'disenroll_date')
        self.disenroll_date = attributes[:'disenroll_date']
      end

      if attributes.key?(:'cobra_division')
        self.cobra_division = attributes[:'cobra_division']
      end

      if attributes.key?(:'cobra_cov_start')
        self.cobra_cov_start = attributes[:'cobra_cov_start']
      end

      if attributes.key?(:'cobra_start')
        self.cobra_start = attributes[:'cobra_start']
      end

      if attributes.key?(:'cobra_end')
        self.cobra_end = attributes[:'cobra_end']
      end

      if attributes.key?(:'cobra_reason')
        self.cobra_reason = attributes[:'cobra_reason']
      end

      if attributes.key?(:'generate_invoice')
        self.generate_invoice = attributes[:'generate_invoice']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'group_reenroll')
        self.group_reenroll = attributes[:'group_reenroll']
      end

      if attributes.key?(:'reset_group_disenroll')
        self.reset_group_disenroll = attributes[:'reset_group_disenroll']
      end

      if attributes.key?(:'reenroll_all')
        self.reenroll_all = attributes[:'reenroll_all']
      end

      if attributes.key?(:'cobra_plan_criterias')
        if (value = attributes[:'cobra_plan_criterias']).is_a?(Array)
          self.cobra_plan_criterias = value
        end
      end

      if attributes.key?(:'member_seq_criterias')
        if (value = attributes[:'member_seq_criterias']).is_a?(Array)
          self.member_seq_criterias = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @user_id.to_s.length > 20
        invalid_properties.push('invalid value for "user_id", the character length must be smaller than or equal to 20.')
      end

      if @user_id.to_s.length < 1
        invalid_properties.push('invalid value for "user_id", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @user_id.nil?
      return false if @user_id.to_s.length > 20
      return false if @user_id.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if user_id.nil?
        fail ArgumentError, 'user_id cannot be nil'
      end

      if user_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "user_id", the character length must be smaller than or equal to 20.'
      end

      if user_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "user_id", the character length must be great than or equal to 1.'
      end

      @user_id = user_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_id == o.user_id &&
          subscriber_id == o.subscriber_id &&
          member_seq == o.member_seq &&
          group_id == o.group_id &&
          division_id == o.division_id &&
          reenroll_family == o.reenroll_family &&
          subscriber == o.subscriber &&
          start_date == o.start_date &&
          reenroll_cobra == o.reenroll_cobra &&
          reset_auth == o.reset_auth &&
          disenroll_date == o.disenroll_date &&
          cobra_division == o.cobra_division &&
          cobra_cov_start == o.cobra_cov_start &&
          cobra_start == o.cobra_start &&
          cobra_end == o.cobra_end &&
          cobra_reason == o.cobra_reason &&
          generate_invoice == o.generate_invoice &&
          invoice_date == o.invoice_date &&
          group_reenroll == o.group_reenroll &&
          reset_group_disenroll == o.reset_group_disenroll &&
          reenroll_all == o.reenroll_all &&
          cobra_plan_criterias == o.cobra_plan_criterias &&
          member_seq_criterias == o.member_seq_criterias
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_id, subscriber_id, member_seq, group_id, division_id, reenroll_family, subscriber, start_date, reenroll_cobra, reset_auth, disenroll_date, cobra_division, cobra_cov_start, cobra_start, cobra_end, cobra_reason, generate_invoice, invoice_date, group_reenroll, reset_group_disenroll, reenroll_all, cobra_plan_criterias, member_seq_criterias].hash
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
