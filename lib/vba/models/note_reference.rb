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
  class NoteReference
    # ID of the note reference. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :reference_key

    # Defines the subject of 'Key_Value1'.
    attr_accessor :column_name1

    # Defines the subject of 'Key_Value2'.
    attr_accessor :column_name2

    # Defines the subject of 'Key_Value3'.
    attr_accessor :column_name3

    # Defines the subject of 'Key_Value4'.
    attr_accessor :column_name4

    # Defines the subject of 'Key_Value5'.
    attr_accessor :column_name5

    # Identifies the type of data of the value specified by 'Key_Value1'.
    attr_accessor :column_type1

    # Identifies the type of data of the value specified by 'Key_Value2'.
    attr_accessor :column_type2

    # Identifies the type of data of the value specified by 'Key_Value3'.
    attr_accessor :column_type3

    # Identifies the type of data of the value specified by 'Key_Value4'.
    attr_accessor :column_type4

    # Identifies the type of data of the value specified by 'Key_Value5'.
    attr_accessor :column_type5

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Value of the subject specified by 'Column_Name1'.
    attr_accessor :key_value1

    # Value of the subject specified by 'Column_Name2'.
    attr_accessor :key_value2

    # Value of the subject specified by 'Column_Name3'.
    attr_accessor :key_value3

    # Value of the subject specified by 'Column_Name4'.
    attr_accessor :key_value4

    # Value of the subject specified by 'Column_Name5'.
    attr_accessor :key_value5

    # PowerBuilder object connected to the note that is used for navigation
    attr_accessor :navigate_object

    # ID of the associated note. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :note_key

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference_key' => :'reference_Key',
        :'column_name1' => :'column_Name1',
        :'column_name2' => :'column_Name2',
        :'column_name3' => :'column_Name3',
        :'column_name4' => :'column_Name4',
        :'column_name5' => :'column_Name5',
        :'column_type1' => :'column_Type1',
        :'column_type2' => :'column_Type2',
        :'column_type3' => :'column_Type3',
        :'column_type4' => :'column_Type4',
        :'column_type5' => :'column_Type5',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'key_value1' => :'key_Value1',
        :'key_value2' => :'key_Value2',
        :'key_value3' => :'key_Value3',
        :'key_value4' => :'key_Value4',
        :'key_value5' => :'key_Value5',
        :'navigate_object' => :'navigate_Object',
        :'note_key' => :'note_Key',
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
        :'reference_key' => :'Integer',
        :'column_name1' => :'String',
        :'column_name2' => :'String',
        :'column_name3' => :'String',
        :'column_name4' => :'String',
        :'column_name5' => :'String',
        :'column_type1' => :'String',
        :'column_type2' => :'String',
        :'column_type3' => :'String',
        :'column_type4' => :'String',
        :'column_type5' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'key_value1' => :'String',
        :'key_value2' => :'String',
        :'key_value3' => :'String',
        :'key_value4' => :'String',
        :'key_value5' => :'String',
        :'navigate_object' => :'String',
        :'note_key' => :'Integer',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'column_name2',
        :'column_name3',
        :'column_name4',
        :'column_name5',
        :'column_type1',
        :'column_type2',
        :'column_type3',
        :'column_type4',
        :'column_type5',
        :'entry_user',
        :'key_value2',
        :'key_value3',
        :'key_value4',
        :'key_value5',
        :'navigate_object',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::NoteReference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::NoteReference`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference_key')
        self.reference_key = attributes[:'reference_key']
      else
        self.reference_key = nil
      end

      if attributes.key?(:'column_name1')
        self.column_name1 = attributes[:'column_name1']
      else
        self.column_name1 = nil
      end

      if attributes.key?(:'column_name2')
        self.column_name2 = attributes[:'column_name2']
      end

      if attributes.key?(:'column_name3')
        self.column_name3 = attributes[:'column_name3']
      end

      if attributes.key?(:'column_name4')
        self.column_name4 = attributes[:'column_name4']
      end

      if attributes.key?(:'column_name5')
        self.column_name5 = attributes[:'column_name5']
      end

      if attributes.key?(:'column_type1')
        self.column_type1 = attributes[:'column_type1']
      end

      if attributes.key?(:'column_type2')
        self.column_type2 = attributes[:'column_type2']
      end

      if attributes.key?(:'column_type3')
        self.column_type3 = attributes[:'column_type3']
      end

      if attributes.key?(:'column_type4')
        self.column_type4 = attributes[:'column_type4']
      end

      if attributes.key?(:'column_type5')
        self.column_type5 = attributes[:'column_type5']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'key_value1')
        self.key_value1 = attributes[:'key_value1']
      else
        self.key_value1 = nil
      end

      if attributes.key?(:'key_value2')
        self.key_value2 = attributes[:'key_value2']
      end

      if attributes.key?(:'key_value3')
        self.key_value3 = attributes[:'key_value3']
      end

      if attributes.key?(:'key_value4')
        self.key_value4 = attributes[:'key_value4']
      end

      if attributes.key?(:'key_value5')
        self.key_value5 = attributes[:'key_value5']
      end

      if attributes.key?(:'navigate_object')
        self.navigate_object = attributes[:'navigate_object']
      end

      if attributes.key?(:'note_key')
        self.note_key = attributes[:'note_key']
      else
        self.note_key = nil
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
      if @reference_key.nil?
        invalid_properties.push('invalid value for "reference_key", reference_key cannot be nil.')
      end

      if @column_name1.nil?
        invalid_properties.push('invalid value for "column_name1", column_name1 cannot be nil.')
      end

      if @column_name1.to_s.length > 128
        invalid_properties.push('invalid value for "column_name1", the character length must be smaller than or equal to 128.')
      end

      if @column_name1.to_s.length < 1
        invalid_properties.push('invalid value for "column_name1", the character length must be great than or equal to 1.')
      end

      if !@column_name2.nil? && @column_name2.to_s.length > 128
        invalid_properties.push('invalid value for "column_name2", the character length must be smaller than or equal to 128.')
      end

      if !@column_name3.nil? && @column_name3.to_s.length > 128
        invalid_properties.push('invalid value for "column_name3", the character length must be smaller than or equal to 128.')
      end

      if !@column_name4.nil? && @column_name4.to_s.length > 128
        invalid_properties.push('invalid value for "column_name4", the character length must be smaller than or equal to 128.')
      end

      if !@column_name5.nil? && @column_name5.to_s.length > 128
        invalid_properties.push('invalid value for "column_name5", the character length must be smaller than or equal to 128.')
      end

      if !@column_type1.nil? && @column_type1.to_s.length > 32
        invalid_properties.push('invalid value for "column_type1", the character length must be smaller than or equal to 32.')
      end

      if !@column_type2.nil? && @column_type2.to_s.length > 32
        invalid_properties.push('invalid value for "column_type2", the character length must be smaller than or equal to 32.')
      end

      if !@column_type3.nil? && @column_type3.to_s.length > 32
        invalid_properties.push('invalid value for "column_type3", the character length must be smaller than or equal to 32.')
      end

      if !@column_type4.nil? && @column_type4.to_s.length > 32
        invalid_properties.push('invalid value for "column_type4", the character length must be smaller than or equal to 32.')
      end

      if !@column_type5.nil? && @column_type5.to_s.length > 32
        invalid_properties.push('invalid value for "column_type5", the character length must be smaller than or equal to 32.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @key_value1.nil?
        invalid_properties.push('invalid value for "key_value1", key_value1 cannot be nil.')
      end

      if @key_value1.to_s.length > 128
        invalid_properties.push('invalid value for "key_value1", the character length must be smaller than or equal to 128.')
      end

      if @key_value1.to_s.length < 1
        invalid_properties.push('invalid value for "key_value1", the character length must be great than or equal to 1.')
      end

      if !@key_value2.nil? && @key_value2.to_s.length > 128
        invalid_properties.push('invalid value for "key_value2", the character length must be smaller than or equal to 128.')
      end

      if !@key_value3.nil? && @key_value3.to_s.length > 128
        invalid_properties.push('invalid value for "key_value3", the character length must be smaller than or equal to 128.')
      end

      if !@key_value4.nil? && @key_value4.to_s.length > 128
        invalid_properties.push('invalid value for "key_value4", the character length must be smaller than or equal to 128.')
      end

      if !@key_value5.nil? && @key_value5.to_s.length > 128
        invalid_properties.push('invalid value for "key_value5", the character length must be smaller than or equal to 128.')
      end

      if !@navigate_object.nil? && @navigate_object.to_s.length > 128
        invalid_properties.push('invalid value for "navigate_object", the character length must be smaller than or equal to 128.')
      end

      if @note_key.nil?
        invalid_properties.push('invalid value for "note_key", note_key cannot be nil.')
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
      return false if @reference_key.nil?
      return false if @column_name1.nil?
      return false if @column_name1.to_s.length > 128
      return false if @column_name1.to_s.length < 1
      return false if !@column_name2.nil? && @column_name2.to_s.length > 128
      return false if !@column_name3.nil? && @column_name3.to_s.length > 128
      return false if !@column_name4.nil? && @column_name4.to_s.length > 128
      return false if !@column_name5.nil? && @column_name5.to_s.length > 128
      return false if !@column_type1.nil? && @column_type1.to_s.length > 32
      return false if !@column_type2.nil? && @column_type2.to_s.length > 32
      return false if !@column_type3.nil? && @column_type3.to_s.length > 32
      return false if !@column_type4.nil? && @column_type4.to_s.length > 32
      return false if !@column_type5.nil? && @column_type5.to_s.length > 32
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @key_value1.nil?
      return false if @key_value1.to_s.length > 128
      return false if @key_value1.to_s.length < 1
      return false if !@key_value2.nil? && @key_value2.to_s.length > 128
      return false if !@key_value3.nil? && @key_value3.to_s.length > 128
      return false if !@key_value4.nil? && @key_value4.to_s.length > 128
      return false if !@key_value5.nil? && @key_value5.to_s.length > 128
      return false if !@navigate_object.nil? && @navigate_object.to_s.length > 128
      return false if @note_key.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_key Value to be assigned
    def reference_key=(reference_key)
      if reference_key.nil?
        fail ArgumentError, 'reference_key cannot be nil'
      end

      @reference_key = reference_key
    end

    # Custom attribute writer method with validation
    # @param [Object] column_name1 Value to be assigned
    def column_name1=(column_name1)
      if column_name1.nil?
        fail ArgumentError, 'column_name1 cannot be nil'
      end

      if column_name1.to_s.length > 128
        fail ArgumentError, 'invalid value for "column_name1", the character length must be smaller than or equal to 128.'
      end

      if column_name1.to_s.length < 1
        fail ArgumentError, 'invalid value for "column_name1", the character length must be great than or equal to 1.'
      end

      @column_name1 = column_name1
    end

    # Custom attribute writer method with validation
    # @param [Object] column_name2 Value to be assigned
    def column_name2=(column_name2)
      if !column_name2.nil? && column_name2.to_s.length > 128
        fail ArgumentError, 'invalid value for "column_name2", the character length must be smaller than or equal to 128.'
      end

      @column_name2 = column_name2
    end

    # Custom attribute writer method with validation
    # @param [Object] column_name3 Value to be assigned
    def column_name3=(column_name3)
      if !column_name3.nil? && column_name3.to_s.length > 128
        fail ArgumentError, 'invalid value for "column_name3", the character length must be smaller than or equal to 128.'
      end

      @column_name3 = column_name3
    end

    # Custom attribute writer method with validation
    # @param [Object] column_name4 Value to be assigned
    def column_name4=(column_name4)
      if !column_name4.nil? && column_name4.to_s.length > 128
        fail ArgumentError, 'invalid value for "column_name4", the character length must be smaller than or equal to 128.'
      end

      @column_name4 = column_name4
    end

    # Custom attribute writer method with validation
    # @param [Object] column_name5 Value to be assigned
    def column_name5=(column_name5)
      if !column_name5.nil? && column_name5.to_s.length > 128
        fail ArgumentError, 'invalid value for "column_name5", the character length must be smaller than or equal to 128.'
      end

      @column_name5 = column_name5
    end

    # Custom attribute writer method with validation
    # @param [Object] column_type1 Value to be assigned
    def column_type1=(column_type1)
      if !column_type1.nil? && column_type1.to_s.length > 32
        fail ArgumentError, 'invalid value for "column_type1", the character length must be smaller than or equal to 32.'
      end

      @column_type1 = column_type1
    end

    # Custom attribute writer method with validation
    # @param [Object] column_type2 Value to be assigned
    def column_type2=(column_type2)
      if !column_type2.nil? && column_type2.to_s.length > 32
        fail ArgumentError, 'invalid value for "column_type2", the character length must be smaller than or equal to 32.'
      end

      @column_type2 = column_type2
    end

    # Custom attribute writer method with validation
    # @param [Object] column_type3 Value to be assigned
    def column_type3=(column_type3)
      if !column_type3.nil? && column_type3.to_s.length > 32
        fail ArgumentError, 'invalid value for "column_type3", the character length must be smaller than or equal to 32.'
      end

      @column_type3 = column_type3
    end

    # Custom attribute writer method with validation
    # @param [Object] column_type4 Value to be assigned
    def column_type4=(column_type4)
      if !column_type4.nil? && column_type4.to_s.length > 32
        fail ArgumentError, 'invalid value for "column_type4", the character length must be smaller than or equal to 32.'
      end

      @column_type4 = column_type4
    end

    # Custom attribute writer method with validation
    # @param [Object] column_type5 Value to be assigned
    def column_type5=(column_type5)
      if !column_type5.nil? && column_type5.to_s.length > 32
        fail ArgumentError, 'invalid value for "column_type5", the character length must be smaller than or equal to 32.'
      end

      @column_type5 = column_type5
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
    # @param [Object] key_value1 Value to be assigned
    def key_value1=(key_value1)
      if key_value1.nil?
        fail ArgumentError, 'key_value1 cannot be nil'
      end

      if key_value1.to_s.length > 128
        fail ArgumentError, 'invalid value for "key_value1", the character length must be smaller than or equal to 128.'
      end

      if key_value1.to_s.length < 1
        fail ArgumentError, 'invalid value for "key_value1", the character length must be great than or equal to 1.'
      end

      @key_value1 = key_value1
    end

    # Custom attribute writer method with validation
    # @param [Object] key_value2 Value to be assigned
    def key_value2=(key_value2)
      if !key_value2.nil? && key_value2.to_s.length > 128
        fail ArgumentError, 'invalid value for "key_value2", the character length must be smaller than or equal to 128.'
      end

      @key_value2 = key_value2
    end

    # Custom attribute writer method with validation
    # @param [Object] key_value3 Value to be assigned
    def key_value3=(key_value3)
      if !key_value3.nil? && key_value3.to_s.length > 128
        fail ArgumentError, 'invalid value for "key_value3", the character length must be smaller than or equal to 128.'
      end

      @key_value3 = key_value3
    end

    # Custom attribute writer method with validation
    # @param [Object] key_value4 Value to be assigned
    def key_value4=(key_value4)
      if !key_value4.nil? && key_value4.to_s.length > 128
        fail ArgumentError, 'invalid value for "key_value4", the character length must be smaller than or equal to 128.'
      end

      @key_value4 = key_value4
    end

    # Custom attribute writer method with validation
    # @param [Object] key_value5 Value to be assigned
    def key_value5=(key_value5)
      if !key_value5.nil? && key_value5.to_s.length > 128
        fail ArgumentError, 'invalid value for "key_value5", the character length must be smaller than or equal to 128.'
      end

      @key_value5 = key_value5
    end

    # Custom attribute writer method with validation
    # @param [Object] navigate_object Value to be assigned
    def navigate_object=(navigate_object)
      if !navigate_object.nil? && navigate_object.to_s.length > 128
        fail ArgumentError, 'invalid value for "navigate_object", the character length must be smaller than or equal to 128.'
      end

      @navigate_object = navigate_object
    end

    # Custom attribute writer method with validation
    # @param [Object] note_key Value to be assigned
    def note_key=(note_key)
      if note_key.nil?
        fail ArgumentError, 'note_key cannot be nil'
      end

      @note_key = note_key
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
          reference_key == o.reference_key &&
          column_name1 == o.column_name1 &&
          column_name2 == o.column_name2 &&
          column_name3 == o.column_name3 &&
          column_name4 == o.column_name4 &&
          column_name5 == o.column_name5 &&
          column_type1 == o.column_type1 &&
          column_type2 == o.column_type2 &&
          column_type3 == o.column_type3 &&
          column_type4 == o.column_type4 &&
          column_type5 == o.column_type5 &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          key_value1 == o.key_value1 &&
          key_value2 == o.key_value2 &&
          key_value3 == o.key_value3 &&
          key_value4 == o.key_value4 &&
          key_value5 == o.key_value5 &&
          navigate_object == o.navigate_object &&
          note_key == o.note_key &&
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
      [reference_key, column_name1, column_name2, column_name3, column_name4, column_name5, column_type1, column_type2, column_type3, column_type4, column_type5, entry_date, entry_user, key_value1, key_value2, key_value3, key_value4, key_value5, navigate_object, note_key, update_date, update_user].hash
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
