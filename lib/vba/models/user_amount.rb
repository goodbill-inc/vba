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
  class UserAmount
    # ID of the User amount. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :user_amount_key

    # Identifies the claim type that the amount limit will be applied to.
    attr_accessor :claim_type

    # Identifies the amount limit that will be applied.
    attr_accessor :detail_amount

    # Identifies the claim detail that the amount limit will be applied to.
    attr_accessor :detail_column

    # Date when the amount limit becomes/became effective.
    attr_accessor :effective_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Identifies the Ex Code that will be applied to any adjudicated claim that exceeds the ‘User Limit’.
    attr_accessor :ex_code

    # Date when the amount limit expires/expired.
    attr_accessor :term_date

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # ID of the User to whom the amount will be applied.
    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_amount_key' => :'userAmount_Key',
        :'claim_type' => :'claim_Type',
        :'detail_amount' => :'detail_Amount',
        :'detail_column' => :'detail_Column',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'ex_code' => :'ex_Code',
        :'term_date' => :'term_Date',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'user_id' => :'user_ID'
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
        :'user_amount_key' => :'Integer',
        :'claim_type' => :'String',
        :'detail_amount' => :'Float',
        :'detail_column' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'ex_code' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'user_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'detail_amount',
        :'effective_date',
        :'entry_user',
        :'ex_code',
        :'term_date',
        :'update_user',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::UserAmount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::UserAmount`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_amount_key')
        self.user_amount_key = attributes[:'user_amount_key']
      else
        self.user_amount_key = nil
      end

      if attributes.key?(:'claim_type')
        self.claim_type = attributes[:'claim_type']
      else
        self.claim_type = nil
      end

      if attributes.key?(:'detail_amount')
        self.detail_amount = attributes[:'detail_amount']
      end

      if attributes.key?(:'detail_column')
        self.detail_column = attributes[:'detail_column']
      else
        self.detail_column = nil
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
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

      if attributes.key?(:'term_date')
        self.term_date = attributes[:'term_date']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      else
        self.user_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @user_amount_key.nil?
        invalid_properties.push('invalid value for "user_amount_key", user_amount_key cannot be nil.')
      end

      if @claim_type.nil?
        invalid_properties.push('invalid value for "claim_type", claim_type cannot be nil.')
      end

      if @claim_type.to_s.length > 20
        invalid_properties.push('invalid value for "claim_type", the character length must be smaller than or equal to 20.')
      end

      if @claim_type.to_s.length < 1
        invalid_properties.push('invalid value for "claim_type", the character length must be great than or equal to 1.')
      end

      if @detail_column.nil?
        invalid_properties.push('invalid value for "detail_column", detail_column cannot be nil.')
      end

      if @detail_column.to_s.length > 64
        invalid_properties.push('invalid value for "detail_column", the character length must be smaller than or equal to 64.')
      end

      if @detail_column.to_s.length < 1
        invalid_properties.push('invalid value for "detail_column", the character length must be great than or equal to 1.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@ex_code.nil? && @ex_code.to_s.length > 6
        invalid_properties.push('invalid value for "ex_code", the character length must be smaller than or equal to 6.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @user_id.to_s.length > 16
        invalid_properties.push('invalid value for "user_id", the character length must be smaller than or equal to 16.')
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
      return false if @user_amount_key.nil?
      return false if @claim_type.nil?
      return false if @claim_type.to_s.length > 20
      return false if @claim_type.to_s.length < 1
      return false if @detail_column.nil?
      return false if @detail_column.to_s.length > 64
      return false if @detail_column.to_s.length < 1
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@ex_code.nil? && @ex_code.to_s.length > 6
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @user_id.nil?
      return false if @user_id.to_s.length > 16
      return false if @user_id.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_amount_key Value to be assigned
    def user_amount_key=(user_amount_key)
      if user_amount_key.nil?
        fail ArgumentError, 'user_amount_key cannot be nil'
      end

      @user_amount_key = user_amount_key
    end

    # Custom attribute writer method with validation
    # @param [Object] claim_type Value to be assigned
    def claim_type=(claim_type)
      if claim_type.nil?
        fail ArgumentError, 'claim_type cannot be nil'
      end

      if claim_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "claim_type", the character length must be smaller than or equal to 20.'
      end

      if claim_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "claim_type", the character length must be great than or equal to 1.'
      end

      @claim_type = claim_type
    end

    # Custom attribute writer method with validation
    # @param [Object] detail_column Value to be assigned
    def detail_column=(detail_column)
      if detail_column.nil?
        fail ArgumentError, 'detail_column cannot be nil'
      end

      if detail_column.to_s.length > 64
        fail ArgumentError, 'invalid value for "detail_column", the character length must be smaller than or equal to 64.'
      end

      if detail_column.to_s.length < 1
        fail ArgumentError, 'invalid value for "detail_column", the character length must be great than or equal to 1.'
      end

      @detail_column = detail_column
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
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 20.'
      end

      @update_user = update_user
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if user_id.nil?
        fail ArgumentError, 'user_id cannot be nil'
      end

      if user_id.to_s.length > 16
        fail ArgumentError, 'invalid value for "user_id", the character length must be smaller than or equal to 16.'
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
          user_amount_key == o.user_amount_key &&
          claim_type == o.claim_type &&
          detail_amount == o.detail_amount &&
          detail_column == o.detail_column &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          ex_code == o.ex_code &&
          term_date == o.term_date &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_amount_key, claim_type, detail_amount, detail_column, effective_date, entry_date, entry_user, ex_code, term_date, update_date, update_user, user_id].hash
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
