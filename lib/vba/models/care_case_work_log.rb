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
  class CareCaseWorkLog
    attr_accessor :care_case_work_log_key

    attr_accessor :case_key

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :member_impact_score

    attr_accessor :plan_impact_score

    attr_accessor :update_date

    attr_accessor :update_user

    attr_accessor :work_log_billable

    attr_accessor :work_log_comment

    attr_accessor :work_log_date

    attr_accessor :work_log_hour

    attr_accessor :work_log_minute

    attr_accessor :work_log_secondary_type

    attr_accessor :work_log_secondary_type2

    attr_accessor :work_log_secondary_type3

    attr_accessor :work_log_secondary_type4

    attr_accessor :work_log_secondary_type5

    attr_accessor :work_log_type

    attr_accessor :work_log_units

    attr_accessor :work_log_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'care_case_work_log_key' => :'careCaseWorkLog_Key',
        :'case_key' => :'case_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'member_impact_score' => :'member_Impact_Score',
        :'plan_impact_score' => :'plan_Impact_Score',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'work_log_billable' => :'workLog_Billable',
        :'work_log_comment' => :'workLog_Comment',
        :'work_log_date' => :'workLog_Date',
        :'work_log_hour' => :'workLog_Hour',
        :'work_log_minute' => :'workLog_Minute',
        :'work_log_secondary_type' => :'workLog_SecondaryType',
        :'work_log_secondary_type2' => :'workLog_SecondaryType2',
        :'work_log_secondary_type3' => :'workLog_SecondaryType3',
        :'work_log_secondary_type4' => :'workLog_SecondaryType4',
        :'work_log_secondary_type5' => :'workLog_SecondaryType5',
        :'work_log_type' => :'workLog_Type',
        :'work_log_units' => :'workLog_Units',
        :'work_log_user' => :'workLog_User'
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
        :'care_case_work_log_key' => :'Integer',
        :'case_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'member_impact_score' => :'Float',
        :'plan_impact_score' => :'Float',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'work_log_billable' => :'Boolean',
        :'work_log_comment' => :'String',
        :'work_log_date' => :'Time',
        :'work_log_hour' => :'Integer',
        :'work_log_minute' => :'Integer',
        :'work_log_secondary_type' => :'String',
        :'work_log_secondary_type2' => :'String',
        :'work_log_secondary_type3' => :'String',
        :'work_log_secondary_type4' => :'String',
        :'work_log_secondary_type5' => :'String',
        :'work_log_type' => :'String',
        :'work_log_units' => :'Integer',
        :'work_log_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_user',
        :'member_impact_score',
        :'plan_impact_score',
        :'update_user',
        :'work_log_comment',
        :'work_log_date',
        :'work_log_hour',
        :'work_log_minute',
        :'work_log_secondary_type',
        :'work_log_secondary_type2',
        :'work_log_secondary_type3',
        :'work_log_secondary_type4',
        :'work_log_secondary_type5',
        :'work_log_type',
        :'work_log_units',
        :'work_log_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CareCaseWorkLog` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CareCaseWorkLog`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'care_case_work_log_key')
        self.care_case_work_log_key = attributes[:'care_case_work_log_key']
      else
        self.care_case_work_log_key = nil
      end

      if attributes.key?(:'case_key')
        self.case_key = attributes[:'case_key']
      else
        self.case_key = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'member_impact_score')
        self.member_impact_score = attributes[:'member_impact_score']
      end

      if attributes.key?(:'plan_impact_score')
        self.plan_impact_score = attributes[:'plan_impact_score']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'work_log_billable')
        self.work_log_billable = attributes[:'work_log_billable']
      else
        self.work_log_billable = nil
      end

      if attributes.key?(:'work_log_comment')
        self.work_log_comment = attributes[:'work_log_comment']
      end

      if attributes.key?(:'work_log_date')
        self.work_log_date = attributes[:'work_log_date']
      end

      if attributes.key?(:'work_log_hour')
        self.work_log_hour = attributes[:'work_log_hour']
      end

      if attributes.key?(:'work_log_minute')
        self.work_log_minute = attributes[:'work_log_minute']
      end

      if attributes.key?(:'work_log_secondary_type')
        self.work_log_secondary_type = attributes[:'work_log_secondary_type']
      end

      if attributes.key?(:'work_log_secondary_type2')
        self.work_log_secondary_type2 = attributes[:'work_log_secondary_type2']
      end

      if attributes.key?(:'work_log_secondary_type3')
        self.work_log_secondary_type3 = attributes[:'work_log_secondary_type3']
      end

      if attributes.key?(:'work_log_secondary_type4')
        self.work_log_secondary_type4 = attributes[:'work_log_secondary_type4']
      end

      if attributes.key?(:'work_log_secondary_type5')
        self.work_log_secondary_type5 = attributes[:'work_log_secondary_type5']
      end

      if attributes.key?(:'work_log_type')
        self.work_log_type = attributes[:'work_log_type']
      end

      if attributes.key?(:'work_log_units')
        self.work_log_units = attributes[:'work_log_units']
      end

      if attributes.key?(:'work_log_user')
        self.work_log_user = attributes[:'work_log_user']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @care_case_work_log_key.nil?
        invalid_properties.push('invalid value for "care_case_work_log_key", care_case_work_log_key cannot be nil.')
      end

      if @case_key.nil?
        invalid_properties.push('invalid value for "case_key", case_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @work_log_billable.nil?
        invalid_properties.push('invalid value for "work_log_billable", work_log_billable cannot be nil.')
      end

      if !@work_log_secondary_type.nil? && @work_log_secondary_type.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_secondary_type", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_secondary_type2.nil? && @work_log_secondary_type2.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_secondary_type2", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_secondary_type3.nil? && @work_log_secondary_type3.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_secondary_type3", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_secondary_type4.nil? && @work_log_secondary_type4.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_secondary_type4", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_secondary_type5.nil? && @work_log_secondary_type5.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_secondary_type5", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_type.nil? && @work_log_type.to_s.length > 32
        invalid_properties.push('invalid value for "work_log_type", the character length must be smaller than or equal to 32.')
      end

      if !@work_log_user.nil? && @work_log_user.to_s.length > 20
        invalid_properties.push('invalid value for "work_log_user", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @care_case_work_log_key.nil?
      return false if @case_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @work_log_billable.nil?
      return false if !@work_log_secondary_type.nil? && @work_log_secondary_type.to_s.length > 32
      return false if !@work_log_secondary_type2.nil? && @work_log_secondary_type2.to_s.length > 32
      return false if !@work_log_secondary_type3.nil? && @work_log_secondary_type3.to_s.length > 32
      return false if !@work_log_secondary_type4.nil? && @work_log_secondary_type4.to_s.length > 32
      return false if !@work_log_secondary_type5.nil? && @work_log_secondary_type5.to_s.length > 32
      return false if !@work_log_type.nil? && @work_log_type.to_s.length > 32
      return false if !@work_log_user.nil? && @work_log_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] care_case_work_log_key Value to be assigned
    def care_case_work_log_key=(care_case_work_log_key)
      if care_case_work_log_key.nil?
        fail ArgumentError, 'care_case_work_log_key cannot be nil'
      end

      @care_case_work_log_key = care_case_work_log_key
    end

    # Custom attribute writer method with validation
    # @param [Object] case_key Value to be assigned
    def case_key=(case_key)
      if case_key.nil?
        fail ArgumentError, 'case_key cannot be nil'
      end

      @case_key = case_key
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
    # @param [Object] update_user Value to be assigned
    def update_user=(update_user)
      if !update_user.nil? && update_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "update_user", the character length must be smaller than or equal to 20.'
      end

      @update_user = update_user
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_billable Value to be assigned
    def work_log_billable=(work_log_billable)
      if work_log_billable.nil?
        fail ArgumentError, 'work_log_billable cannot be nil'
      end

      @work_log_billable = work_log_billable
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_secondary_type Value to be assigned
    def work_log_secondary_type=(work_log_secondary_type)
      if !work_log_secondary_type.nil? && work_log_secondary_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_secondary_type", the character length must be smaller than or equal to 32.'
      end

      @work_log_secondary_type = work_log_secondary_type
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_secondary_type2 Value to be assigned
    def work_log_secondary_type2=(work_log_secondary_type2)
      if !work_log_secondary_type2.nil? && work_log_secondary_type2.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_secondary_type2", the character length must be smaller than or equal to 32.'
      end

      @work_log_secondary_type2 = work_log_secondary_type2
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_secondary_type3 Value to be assigned
    def work_log_secondary_type3=(work_log_secondary_type3)
      if !work_log_secondary_type3.nil? && work_log_secondary_type3.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_secondary_type3", the character length must be smaller than or equal to 32.'
      end

      @work_log_secondary_type3 = work_log_secondary_type3
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_secondary_type4 Value to be assigned
    def work_log_secondary_type4=(work_log_secondary_type4)
      if !work_log_secondary_type4.nil? && work_log_secondary_type4.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_secondary_type4", the character length must be smaller than or equal to 32.'
      end

      @work_log_secondary_type4 = work_log_secondary_type4
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_secondary_type5 Value to be assigned
    def work_log_secondary_type5=(work_log_secondary_type5)
      if !work_log_secondary_type5.nil? && work_log_secondary_type5.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_secondary_type5", the character length must be smaller than or equal to 32.'
      end

      @work_log_secondary_type5 = work_log_secondary_type5
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_type Value to be assigned
    def work_log_type=(work_log_type)
      if !work_log_type.nil? && work_log_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "work_log_type", the character length must be smaller than or equal to 32.'
      end

      @work_log_type = work_log_type
    end

    # Custom attribute writer method with validation
    # @param [Object] work_log_user Value to be assigned
    def work_log_user=(work_log_user)
      if !work_log_user.nil? && work_log_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "work_log_user", the character length must be smaller than or equal to 20.'
      end

      @work_log_user = work_log_user
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          care_case_work_log_key == o.care_case_work_log_key &&
          case_key == o.case_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          member_impact_score == o.member_impact_score &&
          plan_impact_score == o.plan_impact_score &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          work_log_billable == o.work_log_billable &&
          work_log_comment == o.work_log_comment &&
          work_log_date == o.work_log_date &&
          work_log_hour == o.work_log_hour &&
          work_log_minute == o.work_log_minute &&
          work_log_secondary_type == o.work_log_secondary_type &&
          work_log_secondary_type2 == o.work_log_secondary_type2 &&
          work_log_secondary_type3 == o.work_log_secondary_type3 &&
          work_log_secondary_type4 == o.work_log_secondary_type4 &&
          work_log_secondary_type5 == o.work_log_secondary_type5 &&
          work_log_type == o.work_log_type &&
          work_log_units == o.work_log_units &&
          work_log_user == o.work_log_user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [care_case_work_log_key, case_key, entry_date, entry_user, member_impact_score, plan_impact_score, update_date, update_user, work_log_billable, work_log_comment, work_log_date, work_log_hour, work_log_minute, work_log_secondary_type, work_log_secondary_type2, work_log_secondary_type3, work_log_secondary_type4, work_log_secondary_type5, work_log_type, work_log_units, work_log_user].hash
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
