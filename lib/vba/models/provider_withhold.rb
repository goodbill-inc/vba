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
  class ProviderWithhold
    # Unique identifier for each Withhold setting.
    attr_accessor :provider_withhold_key

    # This field indicates the funding account criteria by which the withhold is applied to a claim.
    attr_accessor :account_key

    # Benefit code required for adjudication matching.
    attr_accessor :benefit_code

    # Start of the range of acceptable service dates for the admin fee.
    attr_accessor :effective_date

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # Ex code associated with the price line.
    attr_accessor :ex_code

    # Allows setting the Tax ID that this withhold will apply when applying a withhold across multiple Providers.
    attr_accessor :federal_id

    # Identifies the required Network for adjudication matching.
    attr_accessor :network_id

    # This field indicates the payor criteria by which the withhold is applied to a claim.
    attr_accessor :payor_id

    # The Provider ID this Withhold setting is being applied.
    attr_accessor :provider_id

    # End of the range of acceptable service dates for the admin fee.
    attr_accessor :term_date

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Shows the withheld percentage.
    attr_accessor :withhold

    # Indicates the max Withhold that can be taken for this withhold configuration.
    attr_accessor :withhold_max

    # Indicates if the Withhold value on this table is a Percentage or a Flat amount.
    attr_accessor :withhold_pct

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'provider_withhold_key' => :'providerWithhold_Key',
        :'account_key' => :'account_Key',
        :'benefit_code' => :'benefit_Code',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'ex_code' => :'ex_Code',
        :'federal_id' => :'federal_ID',
        :'network_id' => :'network_ID',
        :'payor_id' => :'payor_ID',
        :'provider_id' => :'provider_ID',
        :'term_date' => :'term_Date',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'withhold' => :'withhold',
        :'withhold_max' => :'withhold_Max',
        :'withhold_pct' => :'withhold_Pct'
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
        :'provider_withhold_key' => :'Integer',
        :'account_key' => :'Integer',
        :'benefit_code' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'ex_code' => :'String',
        :'federal_id' => :'String',
        :'network_id' => :'String',
        :'payor_id' => :'String',
        :'provider_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'withhold' => :'Float',
        :'withhold_max' => :'Float',
        :'withhold_pct' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_key',
        :'benefit_code',
        :'entry_user',
        :'ex_code',
        :'federal_id',
        :'network_id',
        :'payor_id',
        :'provider_id',
        :'term_date',
        :'update_user',
        :'withhold',
        :'withhold_max',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ProviderWithhold` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ProviderWithhold`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider_withhold_key')
        self.provider_withhold_key = attributes[:'provider_withhold_key']
      else
        self.provider_withhold_key = nil
      end

      if attributes.key?(:'account_key')
        self.account_key = attributes[:'account_key']
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

      if attributes.key?(:'ex_code')
        self.ex_code = attributes[:'ex_code']
      end

      if attributes.key?(:'federal_id')
        self.federal_id = attributes[:'federal_id']
      end

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
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

      if attributes.key?(:'withhold')
        self.withhold = attributes[:'withhold']
      end

      if attributes.key?(:'withhold_max')
        self.withhold_max = attributes[:'withhold_max']
      end

      if attributes.key?(:'withhold_pct')
        self.withhold_pct = attributes[:'withhold_pct']
      else
        self.withhold_pct = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @provider_withhold_key.nil?
        invalid_properties.push('invalid value for "provider_withhold_key", provider_withhold_key cannot be nil.')
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

      if !@ex_code.nil? && @ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "ex_code", the character length must be smaller than or equal to 6.')
      end

      if !@federal_id.nil? && @federal_id.to_s.length > 20
        invalid_properties.push('invalid value for "federal_id", the character length must be smaller than or equal to 20.')
      end

      if !@network_id.nil? && @network_id.to_s.length > 10
        invalid_properties.push('invalid value for "network_id", the character length must be smaller than or equal to 10.')
      end

      if !@payor_id.nil? && @payor_id.to_s.length > 20
        invalid_properties.push('invalid value for "payor_id", the character length must be smaller than or equal to 20.')
      end

      if !@provider_id.nil? && @provider_id.to_s.length > 20
        invalid_properties.push('invalid value for "provider_id", the character length must be smaller than or equal to 20.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @withhold_pct.nil?
        invalid_properties.push('invalid value for "withhold_pct", withhold_pct cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @provider_withhold_key.nil?
      return false if !@benefit_code.nil? && @benefit_code.to_s.length > 10
      return false if @effective_date.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@ex_code.nil? && @ex_code.to_s.length > 6
      return false if !@federal_id.nil? && @federal_id.to_s.length > 20
      return false if !@network_id.nil? && @network_id.to_s.length > 10
      return false if !@payor_id.nil? && @payor_id.to_s.length > 20
      return false if !@provider_id.nil? && @provider_id.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @withhold_pct.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_withhold_key Value to be assigned
    def provider_withhold_key=(provider_withhold_key)
      if provider_withhold_key.nil?
        fail ArgumentError, 'provider_withhold_key cannot be nil'
      end

      @provider_withhold_key = provider_withhold_key
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
    # @param [Object] ex_code Value to be assigned
    def ex_code=(ex_code)
      if !ex_code.nil? && ex_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "ex_code", the character length must be smaller than or equal to 6.'
      end

      @ex_code = ex_code
    end

    # Custom attribute writer method with validation
    # @param [Object] federal_id Value to be assigned
    def federal_id=(federal_id)
      if !federal_id.nil? && federal_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "federal_id", the character length must be smaller than or equal to 20.'
      end

      @federal_id = federal_id
    end

    # Custom attribute writer method with validation
    # @param [Object] network_id Value to be assigned
    def network_id=(network_id)
      if !network_id.nil? && network_id.to_s.length > 10
        fail ArgumentError, 'invalid value for "network_id", the character length must be smaller than or equal to 10.'
      end

      @network_id = network_id
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
    # @param [Object] provider_id Value to be assigned
    def provider_id=(provider_id)
      if !provider_id.nil? && provider_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "provider_id", the character length must be smaller than or equal to 20.'
      end

      @provider_id = provider_id
    end

    # Custom attribute writer method with validation
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 20.'
      end

      @update_user = update_user
    end

    # Custom attribute writer method with validation
    # @param [Object] withhold_pct Value to be assigned
    def withhold_pct=(withhold_pct)
      if withhold_pct.nil?
        fail ArgumentError, 'withhold_pct cannot be nil'
      end

      @withhold_pct = withhold_pct
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          provider_withhold_key == o.provider_withhold_key &&
          account_key == o.account_key &&
          benefit_code == o.benefit_code &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          ex_code == o.ex_code &&
          federal_id == o.federal_id &&
          network_id == o.network_id &&
          payor_id == o.payor_id &&
          provider_id == o.provider_id &&
          term_date == o.term_date &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          withhold == o.withhold &&
          withhold_max == o.withhold_max &&
          withhold_pct == o.withhold_pct
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [provider_withhold_key, account_key, benefit_code, effective_date, entry_date, entry_user, ex_code, federal_id, network_id, payor_id, provider_id, term_date, update_date, update_user, withhold, withhold_max, withhold_pct].hash
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
