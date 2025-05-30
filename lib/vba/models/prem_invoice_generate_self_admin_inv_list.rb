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
  class PremInvoiceGenerateSelfAdminInvList
    attr_accessor :selected

    attr_accessor :invoice_level_sort

    attr_accessor :invoice_level_id

    attr_accessor :invoice_level

    attr_accessor :group_id

    attr_accessor :group_name

    attr_accessor :division_id

    attr_accessor :division_name

    attr_accessor :bill_cycle

    attr_accessor :last_bill_thru

    attr_accessor :invoice_date

    attr_accessor :bill_from

    attr_accessor :bill_thru

    attr_accessor :inv_date_bill_from

    attr_accessor :inv_date_bill_thru

    attr_accessor :bill_date_option

    attr_accessor :subscribers

    attr_accessor :dependents

    attr_accessor :members

    attr_accessor :invoice_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'selected' => :'selected',
        :'invoice_level_sort' => :'invoice_Level_Sort',
        :'invoice_level_id' => :'invoice_Level_ID',
        :'invoice_level' => :'invoice_Level',
        :'group_id' => :'group_ID',
        :'group_name' => :'group_Name',
        :'division_id' => :'division_ID',
        :'division_name' => :'division_Name',
        :'bill_cycle' => :'bill_Cycle',
        :'last_bill_thru' => :'last_Bill_Thru',
        :'invoice_date' => :'invoice_Date',
        :'bill_from' => :'bill_From',
        :'bill_thru' => :'bill_Thru',
        :'inv_date_bill_from' => :'inv_Date_Bill_From',
        :'inv_date_bill_thru' => :'inv_Date_Bill_Thru',
        :'bill_date_option' => :'bill_Date_Option',
        :'subscribers' => :'subscribers',
        :'dependents' => :'dependents',
        :'members' => :'members',
        :'invoice_key' => :'invoice_Key'
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
        :'selected' => :'Integer',
        :'invoice_level_sort' => :'Integer',
        :'invoice_level_id' => :'String',
        :'invoice_level' => :'String',
        :'group_id' => :'String',
        :'group_name' => :'String',
        :'division_id' => :'String',
        :'division_name' => :'String',
        :'bill_cycle' => :'String',
        :'last_bill_thru' => :'Time',
        :'invoice_date' => :'Time',
        :'bill_from' => :'Time',
        :'bill_thru' => :'Time',
        :'inv_date_bill_from' => :'Time',
        :'inv_date_bill_thru' => :'Time',
        :'bill_date_option' => :'Integer',
        :'subscribers' => :'Integer',
        :'dependents' => :'Integer',
        :'members' => :'Integer',
        :'invoice_key' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'invoice_level_id',
        :'invoice_level',
        :'group_id',
        :'group_name',
        :'division_id',
        :'division_name',
        :'bill_cycle',
        :'last_bill_thru',
        :'invoice_date',
        :'bill_from',
        :'bill_thru',
        :'inv_date_bill_from',
        :'inv_date_bill_thru',
        :'subscribers',
        :'dependents',
        :'members',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PremInvoiceGenerateSelfAdminInvList` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PremInvoiceGenerateSelfAdminInvList`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'selected')
        self.selected = attributes[:'selected']
      end

      if attributes.key?(:'invoice_level_sort')
        self.invoice_level_sort = attributes[:'invoice_level_sort']
      end

      if attributes.key?(:'invoice_level_id')
        self.invoice_level_id = attributes[:'invoice_level_id']
      end

      if attributes.key?(:'invoice_level')
        self.invoice_level = attributes[:'invoice_level']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.key?(:'group_name')
        self.group_name = attributes[:'group_name']
      end

      if attributes.key?(:'division_id')
        self.division_id = attributes[:'division_id']
      end

      if attributes.key?(:'division_name')
        self.division_name = attributes[:'division_name']
      end

      if attributes.key?(:'bill_cycle')
        self.bill_cycle = attributes[:'bill_cycle']
      end

      if attributes.key?(:'last_bill_thru')
        self.last_bill_thru = attributes[:'last_bill_thru']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'bill_from')
        self.bill_from = attributes[:'bill_from']
      end

      if attributes.key?(:'bill_thru')
        self.bill_thru = attributes[:'bill_thru']
      end

      if attributes.key?(:'inv_date_bill_from')
        self.inv_date_bill_from = attributes[:'inv_date_bill_from']
      end

      if attributes.key?(:'inv_date_bill_thru')
        self.inv_date_bill_thru = attributes[:'inv_date_bill_thru']
      end

      if attributes.key?(:'bill_date_option')
        self.bill_date_option = attributes[:'bill_date_option']
      end

      if attributes.key?(:'subscribers')
        self.subscribers = attributes[:'subscribers']
      end

      if attributes.key?(:'dependents')
        self.dependents = attributes[:'dependents']
      end

      if attributes.key?(:'members')
        self.members = attributes[:'members']
      end

      if attributes.key?(:'invoice_key')
        self.invoice_key = attributes[:'invoice_key']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          selected == o.selected &&
          invoice_level_sort == o.invoice_level_sort &&
          invoice_level_id == o.invoice_level_id &&
          invoice_level == o.invoice_level &&
          group_id == o.group_id &&
          group_name == o.group_name &&
          division_id == o.division_id &&
          division_name == o.division_name &&
          bill_cycle == o.bill_cycle &&
          last_bill_thru == o.last_bill_thru &&
          invoice_date == o.invoice_date &&
          bill_from == o.bill_from &&
          bill_thru == o.bill_thru &&
          inv_date_bill_from == o.inv_date_bill_from &&
          inv_date_bill_thru == o.inv_date_bill_thru &&
          bill_date_option == o.bill_date_option &&
          subscribers == o.subscribers &&
          dependents == o.dependents &&
          members == o.members &&
          invoice_key == o.invoice_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [selected, invoice_level_sort, invoice_level_id, invoice_level, group_id, group_name, division_id, division_name, bill_cycle, last_bill_thru, invoice_date, bill_from, bill_thru, inv_date_bill_from, inv_date_bill_thru, bill_date_option, subscribers, dependents, members, invoice_key].hash
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
