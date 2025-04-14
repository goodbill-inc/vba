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
  class CredAttestationQuestion
    # Unique Identity Key associated with this table. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :cred_attestation_question_key

    # Identifies that the question requires a date answer. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :date_answer

    # Specifies the default method that will be used to administer the question.
    attr_accessor :default_method_key

    # Specifies the default source of the question.
    attr_accessor :default_source_key

    # Specifies the default question type.
    attr_accessor :default_type_key

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # Identifies that the question requires a numeric answer. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :numeric_answer

    # Displays the text of the question.
    attr_accessor :question

    # Identifies that the question requires a text answer. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :text_answer

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Identifies that the question requires a yes or no answer. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :yes_no_answer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cred_attestation_question_key' => :'credAttestationQuestion_Key',
        :'date_answer' => :'dateAnswer',
        :'default_method_key' => :'default_Method_Key',
        :'default_source_key' => :'default_Source_Key',
        :'default_type_key' => :'default_Type_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'numeric_answer' => :'numericAnswer',
        :'question' => :'question',
        :'text_answer' => :'textAnswer',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'yes_no_answer' => :'yesNoAnswer'
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
        :'cred_attestation_question_key' => :'Integer',
        :'date_answer' => :'Boolean',
        :'default_method_key' => :'Integer',
        :'default_source_key' => :'Integer',
        :'default_type_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'numeric_answer' => :'Boolean',
        :'question' => :'String',
        :'text_answer' => :'Boolean',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'yes_no_answer' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'default_method_key',
        :'default_source_key',
        :'default_type_key',
        :'entry_user',
        :'question',
        :'update_user',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CredAttestationQuestion` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CredAttestationQuestion`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cred_attestation_question_key')
        self.cred_attestation_question_key = attributes[:'cred_attestation_question_key']
      else
        self.cred_attestation_question_key = nil
      end

      if attributes.key?(:'date_answer')
        self.date_answer = attributes[:'date_answer']
      else
        self.date_answer = nil
      end

      if attributes.key?(:'default_method_key')
        self.default_method_key = attributes[:'default_method_key']
      end

      if attributes.key?(:'default_source_key')
        self.default_source_key = attributes[:'default_source_key']
      end

      if attributes.key?(:'default_type_key')
        self.default_type_key = attributes[:'default_type_key']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'numeric_answer')
        self.numeric_answer = attributes[:'numeric_answer']
      else
        self.numeric_answer = nil
      end

      if attributes.key?(:'question')
        self.question = attributes[:'question']
      end

      if attributes.key?(:'text_answer')
        self.text_answer = attributes[:'text_answer']
      else
        self.text_answer = nil
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'yes_no_answer')
        self.yes_no_answer = attributes[:'yes_no_answer']
      else
        self.yes_no_answer = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @cred_attestation_question_key.nil?
        invalid_properties.push('invalid value for "cred_attestation_question_key", cred_attestation_question_key cannot be nil.')
      end

      if @date_answer.nil?
        invalid_properties.push('invalid value for "date_answer", date_answer cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @numeric_answer.nil?
        invalid_properties.push('invalid value for "numeric_answer", numeric_answer cannot be nil.')
      end

      if !@question.nil? && @question.to_s.length > 512
        invalid_properties.push('invalid value for "question", the character length must be smaller than or equal to 512.')
      end

      if @text_answer.nil?
        invalid_properties.push('invalid value for "text_answer", text_answer cannot be nil.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @yes_no_answer.nil?
        invalid_properties.push('invalid value for "yes_no_answer", yes_no_answer cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @cred_attestation_question_key.nil?
      return false if @date_answer.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @numeric_answer.nil?
      return false if !@question.nil? && @question.to_s.length > 512
      return false if @text_answer.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @yes_no_answer.nil?
      true
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
    # @param [Object] date_answer Value to be assigned
    def date_answer=(date_answer)
      if date_answer.nil?
        fail ArgumentError, 'date_answer cannot be nil'
      end

      @date_answer = date_answer
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
    # @param [Object] numeric_answer Value to be assigned
    def numeric_answer=(numeric_answer)
      if numeric_answer.nil?
        fail ArgumentError, 'numeric_answer cannot be nil'
      end

      @numeric_answer = numeric_answer
    end

    # Custom attribute writer method with validation
    # @param [Object] question Value to be assigned
    def question=(question)
      if !question.nil? && question.to_s.length > 512
        fail ArgumentError, 'invalid value for "question", the character length must be smaller than or equal to 512.'
      end

      @question = question
    end

    # Custom attribute writer method with validation
    # @param [Object] text_answer Value to be assigned
    def text_answer=(text_answer)
      if text_answer.nil?
        fail ArgumentError, 'text_answer cannot be nil'
      end

      @text_answer = text_answer
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
    # @param [Object] yes_no_answer Value to be assigned
    def yes_no_answer=(yes_no_answer)
      if yes_no_answer.nil?
        fail ArgumentError, 'yes_no_answer cannot be nil'
      end

      @yes_no_answer = yes_no_answer
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cred_attestation_question_key == o.cred_attestation_question_key &&
          date_answer == o.date_answer &&
          default_method_key == o.default_method_key &&
          default_source_key == o.default_source_key &&
          default_type_key == o.default_type_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          numeric_answer == o.numeric_answer &&
          question == o.question &&
          text_answer == o.text_answer &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          yes_no_answer == o.yes_no_answer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cred_attestation_question_key, date_answer, default_method_key, default_source_key, default_type_key, entry_date, entry_user, numeric_answer, question, text_answer, update_date, update_user, yes_no_answer].hash
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
