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
  class ProviderCredAttestation
    # Unique identifier for each attestation question. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :provider_cred_attestation_key

    # Answer to the selected attestation question.
    attr_accessor :answer_date

    # Answer to the selected attestation question.
    attr_accessor :answer_numeric

    # Answer to the selected attestation question.
    attr_accessor :answer_text

    # Answer to the selected attestation question.
    attr_accessor :answer_yes_no

    # Allows the User to select the method of the selected attestation question.
    attr_accessor :cred_attestation_method_key

    # Allows the User to select a question from the available attestation questions. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :cred_attestation_question_key

    # Allows the User to select the source of the selected attestation question.
    attr_accessor :cred_attestation_source_key

    # Allows the User to select the type of the selected attestation question.
    attr_accessor :cred_attestation_type_key

    # User that first added the record to the system.
    attr_accessor :entry_date

    # Date when the record was first added to the system.
    attr_accessor :entry_user

    # Associates these custom question values with the credentialing process (ProviderCred.ProviderCred_Key) Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :provider_cred_key

    # Identifies the date when the attestation question was administered.
    attr_accessor :question_date

    # User that last updated the record in the system.
    attr_accessor :update_date

    # Date when the record was last updated in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'provider_cred_attestation_key' => :'providerCredAttestation_Key',
        :'answer_date' => :'answerDate',
        :'answer_numeric' => :'answerNumeric',
        :'answer_text' => :'answerText',
        :'answer_yes_no' => :'answerYesNo',
        :'cred_attestation_method_key' => :'credAttestationMethod_Key',
        :'cred_attestation_question_key' => :'credAttestationQuestion_Key',
        :'cred_attestation_source_key' => :'credAttestationSource_Key',
        :'cred_attestation_type_key' => :'credAttestationType_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'provider_cred_key' => :'providerCred_Key',
        :'question_date' => :'question_Date',
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
        :'provider_cred_attestation_key' => :'Integer',
        :'answer_date' => :'Time',
        :'answer_numeric' => :'Integer',
        :'answer_text' => :'String',
        :'answer_yes_no' => :'Boolean',
        :'cred_attestation_method_key' => :'Integer',
        :'cred_attestation_question_key' => :'Integer',
        :'cred_attestation_source_key' => :'Integer',
        :'cred_attestation_type_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'provider_cred_key' => :'Integer',
        :'question_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'answer_date',
        :'answer_numeric',
        :'answer_text',
        :'answer_yes_no',
        :'cred_attestation_method_key',
        :'cred_attestation_source_key',
        :'cred_attestation_type_key',
        :'entry_user',
        :'question_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ProviderCredAttestation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ProviderCredAttestation`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider_cred_attestation_key')
        self.provider_cred_attestation_key = attributes[:'provider_cred_attestation_key']
      else
        self.provider_cred_attestation_key = nil
      end

      if attributes.key?(:'answer_date')
        self.answer_date = attributes[:'answer_date']
      end

      if attributes.key?(:'answer_numeric')
        self.answer_numeric = attributes[:'answer_numeric']
      end

      if attributes.key?(:'answer_text')
        self.answer_text = attributes[:'answer_text']
      end

      if attributes.key?(:'answer_yes_no')
        self.answer_yes_no = attributes[:'answer_yes_no']
      end

      if attributes.key?(:'cred_attestation_method_key')
        self.cred_attestation_method_key = attributes[:'cred_attestation_method_key']
      end

      if attributes.key?(:'cred_attestation_question_key')
        self.cred_attestation_question_key = attributes[:'cred_attestation_question_key']
      else
        self.cred_attestation_question_key = nil
      end

      if attributes.key?(:'cred_attestation_source_key')
        self.cred_attestation_source_key = attributes[:'cred_attestation_source_key']
      end

      if attributes.key?(:'cred_attestation_type_key')
        self.cred_attestation_type_key = attributes[:'cred_attestation_type_key']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'provider_cred_key')
        self.provider_cred_key = attributes[:'provider_cred_key']
      else
        self.provider_cred_key = nil
      end

      if attributes.key?(:'question_date')
        self.question_date = attributes[:'question_date']
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
      if @provider_cred_attestation_key.nil?
        invalid_properties.push('invalid value for "provider_cred_attestation_key", provider_cred_attestation_key cannot be nil.')
      end

      if !@answer_text.nil? && @answer_text.to_s.length > 512
        invalid_properties.push('invalid value for "answer_text", the character length must be smaller than or equal to 512.')
      end

      if @cred_attestation_question_key.nil?
        invalid_properties.push('invalid value for "cred_attestation_question_key", cred_attestation_question_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 16
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 16.')
      end

      if @provider_cred_key.nil?
        invalid_properties.push('invalid value for "provider_cred_key", provider_cred_key cannot be nil.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 16
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 16.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @provider_cred_attestation_key.nil?
      return false if !@answer_text.nil? && @answer_text.to_s.length > 512
      return false if @cred_attestation_question_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 16
      return false if @provider_cred_key.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 16
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_cred_attestation_key Value to be assigned
    def provider_cred_attestation_key=(provider_cred_attestation_key)
      if provider_cred_attestation_key.nil?
        fail ArgumentError, 'provider_cred_attestation_key cannot be nil'
      end

      @provider_cred_attestation_key = provider_cred_attestation_key
    end

    # Custom attribute writer method with validation
    # @param [Object] answer_text Value to be assigned
    def answer_text=(answer_text)
      if !answer_text.nil? && answer_text.to_s.length > 512
        fail ArgumentError, 'invalid value for "answer_text", the character length must be smaller than or equal to 512.'
      end

      @answer_text = answer_text
    end

    # Custom attribute writer method with validation
    # @param [Object] cred_attestation_question_key Value to be assigned
    def cred_attestation_question_key=(cred_attestation_question_key)
      if cred_attestation_question_key.nil?
        fail ArgumentError, 'cred_attestation_question_key cannot be nil'
      end

      @cred_attestation_question_key = cred_attestation_question_key
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_user Value to be assigned
    def entry_user=(entry_user)
      if !entry_user.nil? && entry_user.to_s.length > 16
        fail ArgumentError, 'invalid value for "entry_user", the character length must be smaller than or equal to 16.'
      end

      @entry_user = entry_user
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
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 16
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 16.'
      end

      @update_user = update_user
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          provider_cred_attestation_key == o.provider_cred_attestation_key &&
          answer_date == o.answer_date &&
          answer_numeric == o.answer_numeric &&
          answer_text == o.answer_text &&
          answer_yes_no == o.answer_yes_no &&
          cred_attestation_method_key == o.cred_attestation_method_key &&
          cred_attestation_question_key == o.cred_attestation_question_key &&
          cred_attestation_source_key == o.cred_attestation_source_key &&
          cred_attestation_type_key == o.cred_attestation_type_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          provider_cred_key == o.provider_cred_key &&
          question_date == o.question_date &&
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
      [provider_cred_attestation_key, answer_date, answer_numeric, answer_text, answer_yes_no, cred_attestation_method_key, cred_attestation_question_key, cred_attestation_source_key, cred_attestation_type_key, entry_date, entry_user, provider_cred_key, question_date, update_date, update_user].hash
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
