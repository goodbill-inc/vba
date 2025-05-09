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
  class ProviderCred
    # Unique identifier assigned to this credentialing process. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :provider_cred_key

    # The date the application for this credentialing process based on the CredType.
    attr_accessor :application_start_date

    # Date when the Committee approved the credential.
    attr_accessor :committee_date

    # Identifies the type of credential. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :cred_type_key

    # Indicates the organization through which the Provider was credentialed.
    attr_accessor :cred_organization

    # Indicates the status of the credentialing. These status options are configured from 'Credential Status' within 'Credentialing Congifuration'.
    attr_accessor :cred_status

    # Date when the credentialing status becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :effective_date

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # The Payee that is associated with the Provider's credential.
    attr_accessor :practice_payee_id

    # Indicates where checks should be sent. This is often to the Provider themselves or to their practice.
    attr_accessor :practice_send_check_to

    # Allows the User to select from the available practice addresses if 'Practice' is selected from the 'Send Check To' option.
    attr_accessor :practice_send_check_to_address

    # Free form entry of a provider bio for the provider directory on VBAGateway.
    attr_accessor :provider_bio

    # Provider assigned to this credentialing process.
    attr_accessor :provider_id

    # Identifies the specialty that is associated with the Provider's credential.
    attr_accessor :specialty_code

    # Date when the credentialing status expires/expired.
    attr_accessor :term_date

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'provider_cred_key' => :'providerCred_Key',
        :'application_start_date' => :'application_Start_Date',
        :'committee_date' => :'committee_Date',
        :'cred_type_key' => :'credType_Key',
        :'cred_organization' => :'cred_Organization',
        :'cred_status' => :'cred_Status',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'practice_payee_id' => :'practice_Payee_ID',
        :'practice_send_check_to' => :'practice_Send_Check_To',
        :'practice_send_check_to_address' => :'practice_Send_Check_To_Address',
        :'provider_bio' => :'provider_Bio',
        :'provider_id' => :'provider_ID',
        :'specialty_code' => :'specialty_Code',
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
        :'provider_cred_key' => :'Integer',
        :'application_start_date' => :'Time',
        :'committee_date' => :'Time',
        :'cred_type_key' => :'Integer',
        :'cred_organization' => :'String',
        :'cred_status' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'practice_payee_id' => :'String',
        :'practice_send_check_to' => :'String',
        :'practice_send_check_to_address' => :'String',
        :'provider_bio' => :'String',
        :'provider_id' => :'String',
        :'specialty_code' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'application_start_date',
        :'committee_date',
        :'cred_organization',
        :'cred_status',
        :'entry_user',
        :'practice_payee_id',
        :'practice_send_check_to',
        :'practice_send_check_to_address',
        :'provider_bio',
        :'specialty_code',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ProviderCred` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ProviderCred`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider_cred_key')
        self.provider_cred_key = attributes[:'provider_cred_key']
      else
        self.provider_cred_key = nil
      end

      if attributes.key?(:'application_start_date')
        self.application_start_date = attributes[:'application_start_date']
      end

      if attributes.key?(:'committee_date')
        self.committee_date = attributes[:'committee_date']
      end

      if attributes.key?(:'cred_type_key')
        self.cred_type_key = attributes[:'cred_type_key']
      else
        self.cred_type_key = nil
      end

      if attributes.key?(:'cred_organization')
        self.cred_organization = attributes[:'cred_organization']
      end

      if attributes.key?(:'cred_status')
        self.cred_status = attributes[:'cred_status']
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

      if attributes.key?(:'practice_payee_id')
        self.practice_payee_id = attributes[:'practice_payee_id']
      end

      if attributes.key?(:'practice_send_check_to')
        self.practice_send_check_to = attributes[:'practice_send_check_to']
      end

      if attributes.key?(:'practice_send_check_to_address')
        self.practice_send_check_to_address = attributes[:'practice_send_check_to_address']
      end

      if attributes.key?(:'provider_bio')
        self.provider_bio = attributes[:'provider_bio']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      else
        self.provider_id = nil
      end

      if attributes.key?(:'specialty_code')
        self.specialty_code = attributes[:'specialty_code']
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
      if @provider_cred_key.nil?
        invalid_properties.push('invalid value for "provider_cred_key", provider_cred_key cannot be nil.')
      end

      if @cred_type_key.nil?
        invalid_properties.push('invalid value for "cred_type_key", cred_type_key cannot be nil.')
      end

      if !@cred_organization.nil? && @cred_organization.to_s.length > 512
        invalid_properties.push('invalid value for "cred_organization", the character length must be smaller than or equal to 512.')
      end

      if !@cred_status.nil? && @cred_status.to_s.length > 16
        invalid_properties.push('invalid value for "cred_status", the character length must be smaller than or equal to 16.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@practice_payee_id.nil? && @practice_payee_id.to_s.length > 20
        invalid_properties.push('invalid value for "practice_payee_id", the character length must be smaller than or equal to 20.')
      end

      if !@practice_send_check_to.nil? && @practice_send_check_to.to_s.length > 8
        invalid_properties.push('invalid value for "practice_send_check_to", the character length must be smaller than or equal to 8.')
      end

      if !@practice_send_check_to_address.nil? && @practice_send_check_to_address.to_s.length > 20
        invalid_properties.push('invalid value for "practice_send_check_to_address", the character length must be smaller than or equal to 20.')
      end

      if !@provider_bio.nil? && @provider_bio.to_s.length > 1024
        invalid_properties.push('invalid value for "provider_bio", the character length must be smaller than or equal to 1024.')
      end

      if @provider_id.nil?
        invalid_properties.push('invalid value for "provider_id", provider_id cannot be nil.')
      end

      if @provider_id.to_s.length > 20
        invalid_properties.push('invalid value for "provider_id", the character length must be smaller than or equal to 20.')
      end

      if @provider_id.to_s.length < 1
        invalid_properties.push('invalid value for "provider_id", the character length must be great than or equal to 1.')
      end

      if !@specialty_code.nil? && @specialty_code.to_s.length > 10
        invalid_properties.push('invalid value for "specialty_code", the character length must be smaller than or equal to 10.')
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
      return false if @provider_cred_key.nil?
      return false if @cred_type_key.nil?
      return false if !@cred_organization.nil? && @cred_organization.to_s.length > 512
      return false if !@cred_status.nil? && @cred_status.to_s.length > 16
      return false if @effective_date.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@practice_payee_id.nil? && @practice_payee_id.to_s.length > 20
      return false if !@practice_send_check_to.nil? && @practice_send_check_to.to_s.length > 8
      return false if !@practice_send_check_to_address.nil? && @practice_send_check_to_address.to_s.length > 20
      return false if !@provider_bio.nil? && @provider_bio.to_s.length > 1024
      return false if @provider_id.nil?
      return false if @provider_id.to_s.length > 20
      return false if @provider_id.to_s.length < 1
      return false if !@specialty_code.nil? && @specialty_code.to_s.length > 10
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_cred_key Value to be assigned
    def provider_cred_key=(provider_cred_key)
      if provider_cred_key.nil?
        fail ArgumentError, 'provider_cred_key cannot be nil'
      end

      @provider_cred_key = provider_cred_key
    end

    # Custom attribute writer method with validation
    # @param [Object] cred_type_key Value to be assigned
    def cred_type_key=(cred_type_key)
      if cred_type_key.nil?
        fail ArgumentError, 'cred_type_key cannot be nil'
      end

      @cred_type_key = cred_type_key
    end

    # Custom attribute writer method with validation
    # @param [Object] cred_organization Value to be assigned
    def cred_organization=(cred_organization)
      if !cred_organization.nil? && cred_organization.to_s.length > 512
        fail ArgumentError, 'invalid value for "cred_organization", the character length must be smaller than or equal to 512.'
      end

      @cred_organization = cred_organization
    end

    # Custom attribute writer method with validation
    # @param [Object] cred_status Value to be assigned
    def cred_status=(cred_status)
      if !cred_status.nil? && cred_status.to_s.length > 16
        fail ArgumentError, 'invalid value for "cred_status", the character length must be smaller than or equal to 16.'
      end

      @cred_status = cred_status
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
    # @param [Object] practice_payee_id Value to be assigned
    def practice_payee_id=(practice_payee_id)
      if !practice_payee_id.nil? && practice_payee_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "practice_payee_id", the character length must be smaller than or equal to 20.'
      end

      @practice_payee_id = practice_payee_id
    end

    # Custom attribute writer method with validation
    # @param [Object] practice_send_check_to Value to be assigned
    def practice_send_check_to=(practice_send_check_to)
      if !practice_send_check_to.nil? && practice_send_check_to.to_s.length > 8
        fail ArgumentError, 'invalid value for "practice_send_check_to", the character length must be smaller than or equal to 8.'
      end

      @practice_send_check_to = practice_send_check_to
    end

    # Custom attribute writer method with validation
    # @param [Object] practice_send_check_to_address Value to be assigned
    def practice_send_check_to_address=(practice_send_check_to_address)
      if !practice_send_check_to_address.nil? && practice_send_check_to_address.to_s.length > 20
        fail ArgumentError, 'invalid value for "practice_send_check_to_address", the character length must be smaller than or equal to 20.'
      end

      @practice_send_check_to_address = practice_send_check_to_address
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_bio Value to be assigned
    def provider_bio=(provider_bio)
      if !provider_bio.nil? && provider_bio.to_s.length > 1024
        fail ArgumentError, 'invalid value for "provider_bio", the character length must be smaller than or equal to 1024.'
      end

      @provider_bio = provider_bio
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_id Value to be assigned
    def provider_id=(provider_id)
      if provider_id.nil?
        fail ArgumentError, 'provider_id cannot be nil'
      end

      if provider_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "provider_id", the character length must be smaller than or equal to 20.'
      end

      if provider_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "provider_id", the character length must be great than or equal to 1.'
      end

      @provider_id = provider_id
    end

    # Custom attribute writer method with validation
    # @param [Object] specialty_code Value to be assigned
    def specialty_code=(specialty_code)
      if !specialty_code.nil? && specialty_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "specialty_code", the character length must be smaller than or equal to 10.'
      end

      @specialty_code = specialty_code
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
          provider_cred_key == o.provider_cred_key &&
          application_start_date == o.application_start_date &&
          committee_date == o.committee_date &&
          cred_type_key == o.cred_type_key &&
          cred_organization == o.cred_organization &&
          cred_status == o.cred_status &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          practice_payee_id == o.practice_payee_id &&
          practice_send_check_to == o.practice_send_check_to &&
          practice_send_check_to_address == o.practice_send_check_to_address &&
          provider_bio == o.provider_bio &&
          provider_id == o.provider_id &&
          specialty_code == o.specialty_code &&
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
      [provider_cred_key, application_start_date, committee_date, cred_type_key, cred_organization, cred_status, effective_date, entry_date, entry_user, practice_payee_id, practice_send_check_to, practice_send_check_to_address, provider_bio, provider_id, specialty_code, term_date, update_date, update_user].hash
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
