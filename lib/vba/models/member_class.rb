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
  class MemberClass
    # Unique identifier for each Class entry for this member. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :member_class_key

    # List of 'classes' that can be associated with a Member. This can be configured within Enrollment Services > Enrollment Configuration > Classes.
    attr_accessor :class_code

    # Date when the 'class' becomes/became effective.
    attr_accessor :effective_date

    # User that first added the record to the system.
    attr_accessor :entry_date

    # Date when the record was first added to the system.
    attr_accessor :entry_user

    # References Members.Member_Seq value on the parent record.
    attr_accessor :member_seq

    # References Members.Subscriber_ID value on the parent record.
    attr_accessor :subscriber_id

    # Date when the 'class' becomes/became terminated.
    attr_accessor :term_date

    # User that last updated the record in the system.
    attr_accessor :update_date

    # Date when the record was last updated in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'member_class_key' => :'memberClass_Key',
        :'class_code' => :'class_Code',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'member_seq' => :'member_Seq',
        :'subscriber_id' => :'subscriber_ID',
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
        :'member_class_key' => :'Integer',
        :'class_code' => :'String',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'member_seq' => :'String',
        :'subscriber_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'effective_date',
        :'entry_user',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::MemberClass` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::MemberClass`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'member_class_key')
        self.member_class_key = attributes[:'member_class_key']
      else
        self.member_class_key = nil
      end

      if attributes.key?(:'class_code')
        self.class_code = attributes[:'class_code']
      else
        self.class_code = nil
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

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      else
        self.member_seq = nil
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      else
        self.subscriber_id = nil
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
      if @member_class_key.nil?
        invalid_properties.push('invalid value for "member_class_key", member_class_key cannot be nil.')
      end

      if @class_code.nil?
        invalid_properties.push('invalid value for "class_code", class_code cannot be nil.')
      end

      if @class_code.to_s.length > 32
        invalid_properties.push('invalid value for "class_code", the character length must be smaller than or equal to 32.')
      end

      if @class_code.to_s.length < 1
        invalid_properties.push('invalid value for "class_code", the character length must be great than or equal to 1.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
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

      if @subscriber_id.nil?
        invalid_properties.push('invalid value for "subscriber_id", subscriber_id cannot be nil.')
      end

      if @subscriber_id.to_s.length > 9
        invalid_properties.push('invalid value for "subscriber_id", the character length must be smaller than or equal to 9.')
      end

      if @subscriber_id.to_s.length < 1
        invalid_properties.push('invalid value for "subscriber_id", the character length must be great than or equal to 1.')
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
      return false if @member_class_key.nil?
      return false if @class_code.nil?
      return false if @class_code.to_s.length > 32
      return false if @class_code.to_s.length < 1
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @member_seq.nil?
      return false if @member_seq.to_s.length > 2
      return false if @member_seq.to_s.length < 1
      return false if @subscriber_id.nil?
      return false if @subscriber_id.to_s.length > 9
      return false if @subscriber_id.to_s.length < 1
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] member_class_key Value to be assigned
    def member_class_key=(member_class_key)
      if member_class_key.nil?
        fail ArgumentError, 'member_class_key cannot be nil'
      end

      @member_class_key = member_class_key
    end

    # Custom attribute writer method with validation
    # @param [Object] class_code Value to be assigned
    def class_code=(class_code)
      if class_code.nil?
        fail ArgumentError, 'class_code cannot be nil'
      end

      if class_code.to_s.length > 32
        fail ArgumentError, 'invalid value for "class_code", the character length must be smaller than or equal to 32.'
      end

      if class_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "class_code", the character length must be great than or equal to 1.'
      end

      @class_code = class_code
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
          member_class_key == o.member_class_key &&
          class_code == o.class_code &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          member_seq == o.member_seq &&
          subscriber_id == o.subscriber_id &&
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
      [member_class_key, class_code, effective_date, entry_date, entry_user, member_seq, subscriber_id, term_date, update_date, update_user].hash
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
