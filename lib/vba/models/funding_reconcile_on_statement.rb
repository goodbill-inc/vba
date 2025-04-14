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
  class FundingReconcileOnStatement
    # ID of the reconciliation offset. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :on_statement_key

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Offset amount used for the funding reconciliation.
    attr_accessor :issue_amount

    # Date when the associated issue was created.
    attr_accessor :issue_date

    # ID of the issue associated with the funding reconciliation.
    attr_accessor :issue_id

    # Issue Type' associated with the funding reconciliation. 'Funding Issue Types' are configured within 'Accounting Configuration'.
    attr_accessor :issue_type

    # ID of the Payor being used for the associated reconciliation.
    attr_accessor :payor_id

    # ID of the reconciliation associated with the offset. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :reconcile_key

    # Indicates whether the associated offset is a credit or a debit.
    attr_accessor :reconcile_type

    # Indicates that this offest will be applied to the current reconciliation when the User selects 'Update'. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :selected

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'on_statement_key' => :'on_Statement_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'issue_amount' => :'issue_Amount',
        :'issue_date' => :'issue_Date',
        :'issue_id' => :'issue_ID',
        :'issue_type' => :'issue_Type',
        :'payor_id' => :'payor_ID',
        :'reconcile_key' => :'reconcile_Key',
        :'reconcile_type' => :'reconcile_Type',
        :'selected' => :'selected',
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
        :'on_statement_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'issue_amount' => :'Float',
        :'issue_date' => :'Time',
        :'issue_id' => :'String',
        :'issue_type' => :'String',
        :'payor_id' => :'String',
        :'reconcile_key' => :'Integer',
        :'reconcile_type' => :'String',
        :'selected' => :'Boolean',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_user',
        :'issue_amount',
        :'issue_date',
        :'issue_id',
        :'issue_type',
        :'payor_id',
        :'reconcile_type',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::FundingReconcileOnStatement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::FundingReconcileOnStatement`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'on_statement_key')
        self.on_statement_key = attributes[:'on_statement_key']
      else
        self.on_statement_key = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'issue_amount')
        self.issue_amount = attributes[:'issue_amount']
      end

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'issue_id')
        self.issue_id = attributes[:'issue_id']
      end

      if attributes.key?(:'issue_type')
        self.issue_type = attributes[:'issue_type']
      end

      if attributes.key?(:'payor_id')
        self.payor_id = attributes[:'payor_id']
      end

      if attributes.key?(:'reconcile_key')
        self.reconcile_key = attributes[:'reconcile_key']
      else
        self.reconcile_key = nil
      end

      if attributes.key?(:'reconcile_type')
        self.reconcile_type = attributes[:'reconcile_type']
      end

      if attributes.key?(:'selected')
        self.selected = attributes[:'selected']
      else
        self.selected = nil
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
      if @on_statement_key.nil?
        invalid_properties.push('invalid value for "on_statement_key", on_statement_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@issue_id.nil? && @issue_id.to_s.length > 32
        invalid_properties.push('invalid value for "issue_id", the character length must be smaller than or equal to 32.')
      end

      if !@issue_type.nil? && @issue_type.to_s.length > 32
        invalid_properties.push('invalid value for "issue_type", the character length must be smaller than or equal to 32.')
      end

      if !@payor_id.nil? && @payor_id.to_s.length > 20
        invalid_properties.push('invalid value for "payor_id", the character length must be smaller than or equal to 20.')
      end

      if @reconcile_key.nil?
        invalid_properties.push('invalid value for "reconcile_key", reconcile_key cannot be nil.')
      end

      if !@reconcile_type.nil? && @reconcile_type.to_s.length > 32
        invalid_properties.push('invalid value for "reconcile_type", the character length must be smaller than or equal to 32.')
      end

      if @selected.nil?
        invalid_properties.push('invalid value for "selected", selected cannot be nil.')
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
      return false if @on_statement_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@issue_id.nil? && @issue_id.to_s.length > 32
      return false if !@issue_type.nil? && @issue_type.to_s.length > 32
      return false if !@payor_id.nil? && @payor_id.to_s.length > 20
      return false if @reconcile_key.nil?
      return false if !@reconcile_type.nil? && @reconcile_type.to_s.length > 32
      return false if @selected.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] on_statement_key Value to be assigned
    def on_statement_key=(on_statement_key)
      if on_statement_key.nil?
        fail ArgumentError, 'on_statement_key cannot be nil'
      end

      @on_statement_key = on_statement_key
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
    # @param [Object] issue_id Value to be assigned
    def issue_id=(issue_id)
      if !issue_id.nil? && issue_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "issue_id", the character length must be smaller than or equal to 32.'
      end

      @issue_id = issue_id
    end

    # Custom attribute writer method with validation
    # @param [Object] issue_type Value to be assigned
    def issue_type=(issue_type)
      if !issue_type.nil? && issue_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "issue_type", the character length must be smaller than or equal to 32.'
      end

      @issue_type = issue_type
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
    # @param [Object] reconcile_key Value to be assigned
    def reconcile_key=(reconcile_key)
      if reconcile_key.nil?
        fail ArgumentError, 'reconcile_key cannot be nil'
      end

      @reconcile_key = reconcile_key
    end

    # Custom attribute writer method with validation
    # @param [Object] reconcile_type Value to be assigned
    def reconcile_type=(reconcile_type)
      if !reconcile_type.nil? && reconcile_type.to_s.length > 32
        fail ArgumentError, 'invalid value for "reconcile_type", the character length must be smaller than or equal to 32.'
      end

      @reconcile_type = reconcile_type
    end

    # Custom attribute writer method with validation
    # @param [Object] selected Value to be assigned
    def selected=(selected)
      if selected.nil?
        fail ArgumentError, 'selected cannot be nil'
      end

      @selected = selected
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
          on_statement_key == o.on_statement_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          issue_amount == o.issue_amount &&
          issue_date == o.issue_date &&
          issue_id == o.issue_id &&
          issue_type == o.issue_type &&
          payor_id == o.payor_id &&
          reconcile_key == o.reconcile_key &&
          reconcile_type == o.reconcile_type &&
          selected == o.selected &&
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
      [on_statement_key, entry_date, entry_user, issue_amount, issue_date, issue_id, issue_type, payor_id, reconcile_key, reconcile_type, selected, update_date, update_user].hash
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
