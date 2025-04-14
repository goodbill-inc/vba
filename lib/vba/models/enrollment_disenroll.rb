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
  class EnrollmentDisenroll
    # The user for which this request is executed on behalf of.
    attr_accessor :user_id

    # The Subscirber ID of the Member being disenrolled.  You can get the Subscriber ID via the SearchConfig process using ENROLLMENT searchConfigId (https://vbapi-docs.vbasoftware.com/developer-portal/search/).
    attr_accessor :subscriber_id

    # The Member Sequence of the Member being disenrolled.  If this is a Subscriber Disenroll, the Member Sequence provided is the Insured Member Sequence.  You can get the Member Seq via the SearchConfig process using ENROLLMENT searchConfigId (https://vbapi-docs.vbasoftware.com/developer-portal/search/).
    attr_accessor :member_seq

    # The Group ID of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.
    attr_accessor :group_id

    # The Division ID of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.
    attr_accessor :division_id

    # The Group Coverage Start of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank.
    attr_accessor :group_coverage_start

    # The Start Date of the current Subenrollment record (the members current or most recent enrollment).  You can use the List SubEnrollment API (https://vbapi.vbasoftware.com/vbasoftware/subscribers/{subscriberID}/enrollments) to get the values you need.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank.
    attr_accessor :start_date

    # The Disenroll Date for this disenroll process.
    attr_accessor :disenroll_date

    # Term Date is an informational field used in some reports.  It doesn't impact the process but is often populated with the same value as the Disenroll Date.
    attr_accessor :term_date

    # The Subscriber value is a flag indicating if the member being disenrolled is the Insured.  Send 1 if this is the Subscriber, send 0 if this is a Spouse/Dependent/Other.  This is only required on Subscriber/Member Disenrolls, for Group/Division Disenroll, this can be blank.
    attr_accessor :subscriber

    # Reason ID is the reson for this disenroll.  You can get a list of valid Reason IDs from the List Reasons API (https://vbapi.vbasoftware.com/vbasoftware/reasons).
    attr_accessor :reason_id

    # When not using the PremRates list of PremRate_Key values, this indicates the COBRA Premium for some reports.
    attr_accessor :premium

    # The DisenrollFamily indicator lets the Disenroll process know exactly how to perform the Disenroll.  You can get a list of valid DisenrollFamily values from the List Disenrollment Family Options API (https://vbapi.vbasoftware.com/vbasoftware/disenroll-family-options).
    attr_accessor :disenroll_family

    # The TerminateAuth flag lets us know if Auths approved or requested beyond the Disenroll Date should be cancelled.
    attr_accessor :terminate_auth

    # The DisenrollFuture indicator will tell us how to handle any future enrollments beyond the Disenroll Date related to this disenroll.  The valid values are:  2 - Disenroll Future Enrollments  3 - Do Not Disenroll any Future Enrollments
    attr_accessor :disenroll_future

    # The list of COBRA Rates associated with this Disenroll process.
    attr_accessor :prem_rates

    # If you intend to auto-adjust existing premiums based on this disenroll you would populate your adjustments here.
    attr_accessor :prem_invoice_adjustments

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_id' => :'user_ID',
        :'subscriber_id' => :'subscriber_ID',
        :'member_seq' => :'member_Seq',
        :'group_id' => :'group_ID',
        :'division_id' => :'division_ID',
        :'group_coverage_start' => :'group_Coverage_Start',
        :'start_date' => :'start_Date',
        :'disenroll_date' => :'disenroll_Date',
        :'term_date' => :'term_Date',
        :'subscriber' => :'subscriber',
        :'reason_id' => :'reason_ID',
        :'premium' => :'premium',
        :'disenroll_family' => :'disenrollFamily',
        :'terminate_auth' => :'terminateAuth',
        :'disenroll_future' => :'disenrollFuture',
        :'prem_rates' => :'premRates',
        :'prem_invoice_adjustments' => :'premInvoiceAdjustments'
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
        :'group_coverage_start' => :'Time',
        :'start_date' => :'Time',
        :'disenroll_date' => :'Time',
        :'term_date' => :'Time',
        :'subscriber' => :'Boolean',
        :'reason_id' => :'Integer',
        :'premium' => :'Float',
        :'disenroll_family' => :'Integer',
        :'terminate_auth' => :'Boolean',
        :'disenroll_future' => :'Integer',
        :'prem_rates' => :'Array<Integer>',
        :'prem_invoice_adjustments' => :'Array<PremInvoiceAdjustment>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'term_date',
        :'premium',
        :'prem_rates',
        :'prem_invoice_adjustments'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::EnrollmentDisenroll` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::EnrollmentDisenroll`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
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
      else
        self.subscriber_id = nil
      end

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      else
        self.member_seq = nil
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      else
        self.group_id = nil
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      else
        self.division_id = nil
      end

      if attributes.key?(:'group_coverage_start')
        self.group_coverage_start = attributes[:'group_coverage_start']
      else
        self.group_coverage_start = nil
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      else
        self.start_date = nil
      end

      if attributes.key?(:'disenroll_date')
        self.disenroll_date = attributes[:'disenroll_date']
      else
        self.disenroll_date = nil
      end

      if attributes.key?(:'term_date')
        self.term_date = attributes[:'term_date']
      end

      if attributes.key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      else
        self.subscriber = nil
      end

      if attributes.key?(:'reason_id')
        self.reason_id = attributes[:'reason_id']
      else
        self.reason_id = nil
      end

      if attributes.key?(:'premium')
        self.premium = attributes[:'premium']
      end

      if attributes.key?(:'disenroll_family')
        self.disenroll_family = attributes[:'disenroll_family']
      else
        self.disenroll_family = nil
      end

      if attributes.key?(:'terminate_auth')
        self.terminate_auth = attributes[:'terminate_auth']
      else
        self.terminate_auth = nil
      end

      if attributes.key?(:'disenroll_future')
        self.disenroll_future = attributes[:'disenroll_future']
      else
        self.disenroll_future = nil
      end

      if attributes.key?(:'prem_rates')
        if (value = attributes[:'prem_rates']).is_a?(Array)
          self.prem_rates = value
        end
      end

      if attributes.key?(:'prem_invoice_adjustments')
        if (value = attributes[:'prem_invoice_adjustments']).is_a?(Array)
          self.prem_invoice_adjustments = value
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

      if @subscriber_id.nil?
        invalid_properties.push('invalid value for "subscriber_id", subscriber_id cannot be nil.')
      end

      if @subscriber_id.to_s.length > 9
        invalid_properties.push('invalid value for "subscriber_id", the character length must be smaller than or equal to 9.')
      end

      if @subscriber_id.to_s.length < 1
        invalid_properties.push('invalid value for "subscriber_id", the character length must be great than or equal to 1.')
      end

      if @member_seq.nil?
        invalid_properties.push('invalid value for "member_seq", member_seq cannot be nil.')
      end

      if @member_seq.to_s.length > 2
        invalid_properties.push('invalid value for "member_seq", the character length must be smaller than or equal to 2.')
      end

      if @member_seq.to_s.length < 1
        invalid_properties.push('invalid value for "member_seq", the character length must be great than or equal to 1.')
      end

      if @group_id.nil?
        invalid_properties.push('invalid value for "group_id", group_id cannot be nil.')
      end

      if @group_id.to_s.length > 20
        invalid_properties.push('invalid value for "group_id", the character length must be smaller than or equal to 20.')
      end

      if @group_id.to_s.length < 1
        invalid_properties.push('invalid value for "group_id", the character length must be great than or equal to 1.')
      end

      if @division_id.nil?
        invalid_properties.push('invalid value for "division_id", division_id cannot be nil.')
      end

      if @division_id.to_s.length > 20
        invalid_properties.push('invalid value for "division_id", the character length must be smaller than or equal to 20.')
      end

      if @division_id.to_s.length < 1
        invalid_properties.push('invalid value for "division_id", the character length must be great than or equal to 1.')
      end

      if @group_coverage_start.nil?
        invalid_properties.push('invalid value for "group_coverage_start", group_coverage_start cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @disenroll_date.nil?
        invalid_properties.push('invalid value for "disenroll_date", disenroll_date cannot be nil.')
      end

      if @subscriber.nil?
        invalid_properties.push('invalid value for "subscriber", subscriber cannot be nil.')
      end

      if @reason_id.nil?
        invalid_properties.push('invalid value for "reason_id", reason_id cannot be nil.')
      end

      if @disenroll_family.nil?
        invalid_properties.push('invalid value for "disenroll_family", disenroll_family cannot be nil.')
      end

      if @terminate_auth.nil?
        invalid_properties.push('invalid value for "terminate_auth", terminate_auth cannot be nil.')
      end

      if @disenroll_future.nil?
        invalid_properties.push('invalid value for "disenroll_future", disenroll_future cannot be nil.')
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
      return false if @subscriber_id.nil?
      return false if @subscriber_id.to_s.length > 9
      return false if @subscriber_id.to_s.length < 1
      return false if @member_seq.nil?
      return false if @member_seq.to_s.length > 2
      return false if @member_seq.to_s.length < 1
      return false if @group_id.nil?
      return false if @group_id.to_s.length > 20
      return false if @group_id.to_s.length < 1
      return false if @division_id.nil?
      return false if @division_id.to_s.length > 20
      return false if @division_id.to_s.length < 1
      return false if @group_coverage_start.nil?
      return false if @start_date.nil?
      return false if @disenroll_date.nil?
      return false if @subscriber.nil?
      return false if @reason_id.nil?
      return false if @disenroll_family.nil?
      return false if @terminate_auth.nil?
      return false if @disenroll_future.nil?
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
    # @param [Object] member_seq Value to be assigned
    def member_seq=(member_seq)
      if member_seq.nil?
        fail ArgumentError, 'member_seq cannot be nil'
      end

      if member_seq.to_s.length > 2
        fail ArgumentError, 'invalid value for "member_seq", the character length must be smaller than or equal to 2.'
      end

      if member_seq.to_s.length < 1
        fail ArgumentError, 'invalid value for "member_seq", the character length must be great than or equal to 1.'
      end

      @member_seq = member_seq
    end

    # Custom attribute writer method with validation
    # @param [Object] group_id Value to be assigned
    def group_id=(group_id)
      if group_id.nil?
        fail ArgumentError, 'group_id cannot be nil'
      end

      if group_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "group_id", the character length must be smaller than or equal to 20.'
      end

      if group_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "group_id", the character length must be great than or equal to 1.'
      end

      @group_id = group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] division_id Value to be assigned
    def division_id=(division_id)
      if division_id.nil?
        fail ArgumentError, 'division_id cannot be nil'
      end

      if division_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "division_id", the character length must be smaller than or equal to 20.'
      end

      if division_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "division_id", the character length must be great than or equal to 1.'
      end

      @division_id = division_id
    end

    # Custom attribute writer method with validation
    # @param [Object] group_coverage_start Value to be assigned
    def group_coverage_start=(group_coverage_start)
      if group_coverage_start.nil?
        fail ArgumentError, 'group_coverage_start cannot be nil'
      end

      @group_coverage_start = group_coverage_start
    end

    # Custom attribute writer method with validation
    # @param [Object] start_date Value to be assigned
    def start_date=(start_date)
      if start_date.nil?
        fail ArgumentError, 'start_date cannot be nil'
      end

      @start_date = start_date
    end

    # Custom attribute writer method with validation
    # @param [Object] disenroll_date Value to be assigned
    def disenroll_date=(disenroll_date)
      if disenroll_date.nil?
        fail ArgumentError, 'disenroll_date cannot be nil'
      end

      @disenroll_date = disenroll_date
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber Value to be assigned
    def subscriber=(subscriber)
      if subscriber.nil?
        fail ArgumentError, 'subscriber cannot be nil'
      end

      @subscriber = subscriber
    end

    # Custom attribute writer method with validation
    # @param [Object] reason_id Value to be assigned
    def reason_id=(reason_id)
      if reason_id.nil?
        fail ArgumentError, 'reason_id cannot be nil'
      end

      @reason_id = reason_id
    end

    # Custom attribute writer method with validation
    # @param [Object] disenroll_family Value to be assigned
    def disenroll_family=(disenroll_family)
      if disenroll_family.nil?
        fail ArgumentError, 'disenroll_family cannot be nil'
      end

      @disenroll_family = disenroll_family
    end

    # Custom attribute writer method with validation
    # @param [Object] terminate_auth Value to be assigned
    def terminate_auth=(terminate_auth)
      if terminate_auth.nil?
        fail ArgumentError, 'terminate_auth cannot be nil'
      end

      @terminate_auth = terminate_auth
    end

    # Custom attribute writer method with validation
    # @param [Object] disenroll_future Value to be assigned
    def disenroll_future=(disenroll_future)
      if disenroll_future.nil?
        fail ArgumentError, 'disenroll_future cannot be nil'
      end

      @disenroll_future = disenroll_future
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
          group_coverage_start == o.group_coverage_start &&
          start_date == o.start_date &&
          disenroll_date == o.disenroll_date &&
          term_date == o.term_date &&
          subscriber == o.subscriber &&
          reason_id == o.reason_id &&
          premium == o.premium &&
          disenroll_family == o.disenroll_family &&
          terminate_auth == o.terminate_auth &&
          disenroll_future == o.disenroll_future &&
          prem_rates == o.prem_rates &&
          prem_invoice_adjustments == o.prem_invoice_adjustments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_id, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, disenroll_date, term_date, subscriber, reason_id, premium, disenroll_family, terminate_auth, disenroll_future, prem_rates, prem_invoice_adjustments].hash
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
