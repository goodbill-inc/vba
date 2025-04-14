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
  class SubscriberWritingAgent
    # Unique identifier for the Subscriber Writing Agent entry. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :subscriber_writing_agent_key

    # Date account is effective for the Rep Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :effective_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # ID of the plan that the commission is associated with.
    attr_accessor :plan_id

    # The percentage the Rep receives for this Commission. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :split

    # Unique identifier assigned to the Subscriber by the system.
    attr_accessor :subscriber_id

    # Date account is no longer effective for the Rep Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :term_date

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Unique identifier for the CommissionAgencyRep table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :writing_commission_agency_rep_key

    attr_accessor :primary_agent

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subscriber_writing_agent_key' => :'subscriberWritingAgent_Key',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'plan_id' => :'plan_ID',
        :'split' => :'split',
        :'subscriber_id' => :'subscriber_ID',
        :'term_date' => :'term_Date',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'writing_commission_agency_rep_key' => :'writing_CommissionAgencyRep_Key',
        :'primary_agent' => :'primary_Agent'
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
        :'subscriber_writing_agent_key' => :'Integer',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'plan_id' => :'String',
        :'split' => :'Float',
        :'subscriber_id' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'writing_commission_agency_rep_key' => :'Integer',
        :'primary_agent' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_user',
        :'update_user',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::SubscriberWritingAgent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::SubscriberWritingAgent`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'subscriber_writing_agent_key')
        self.subscriber_writing_agent_key = attributes[:'subscriber_writing_agent_key']
      else
        self.subscriber_writing_agent_key = nil
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

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      else
        self.plan_id = nil
      end

      if attributes.key?(:'split')
        self.split = attributes[:'split']
      else
        self.split = nil
      end

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      else
        self.subscriber_id = nil
      end

      if attributes.key?(:'term_date')
        self.term_date = attributes[:'term_date']
      else
        self.term_date = nil
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'writing_commission_agency_rep_key')
        self.writing_commission_agency_rep_key = attributes[:'writing_commission_agency_rep_key']
      else
        self.writing_commission_agency_rep_key = nil
      end

      if attributes.key?(:'primary_agent')
        self.primary_agent = attributes[:'primary_agent']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @subscriber_writing_agent_key.nil?
        invalid_properties.push('invalid value for "subscriber_writing_agent_key", subscriber_writing_agent_key cannot be nil.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.nil?
        invalid_properties.push('invalid value for "plan_id", plan_id cannot be nil.')
      end

      if @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.to_s.length < 1
        invalid_properties.push('invalid value for "plan_id", the character length must be great than or equal to 1.')
      end

      if @split.nil?
        invalid_properties.push('invalid value for "split", split cannot be nil.')
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

      if @term_date.nil?
        invalid_properties.push('invalid value for "term_date", term_date cannot be nil.')
      end

      if !@update_user.nil? && @update_user.to_s.length > 20
        invalid_properties.push('invalid value for "update_user", the character length must be smaller than or equal to 20.')
      end

      if @writing_commission_agency_rep_key.nil?
        invalid_properties.push('invalid value for "writing_commission_agency_rep_key", writing_commission_agency_rep_key cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @subscriber_writing_agent_key.nil?
      return false if @effective_date.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if @plan_id.nil?
      return false if @plan_id.to_s.length > 20
      return false if @plan_id.to_s.length < 1
      return false if @split.nil?
      return false if @subscriber_id.nil?
      return false if @subscriber_id.to_s.length > 9
      return false if @subscriber_id.to_s.length < 1
      return false if @term_date.nil?
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      return false if @writing_commission_agency_rep_key.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] subscriber_writing_agent_key Value to be assigned
    def subscriber_writing_agent_key=(subscriber_writing_agent_key)
      if subscriber_writing_agent_key.nil?
        fail ArgumentError, 'subscriber_writing_agent_key cannot be nil'
      end

      @subscriber_writing_agent_key = subscriber_writing_agent_key
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
    # @param [Object] plan_id Value to be assigned
    def plan_id=(plan_id)
      if plan_id.nil?
        fail ArgumentError, 'plan_id cannot be nil'
      end

      if plan_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "plan_id", the character length must be smaller than or equal to 20.'
      end

      if plan_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "plan_id", the character length must be great than or equal to 1.'
      end

      @plan_id = plan_id
    end

    # Custom attribute writer method with validation
    # @param [Object] split Value to be assigned
    def split=(split)
      if split.nil?
        fail ArgumentError, 'split cannot be nil'
      end

      @split = split
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
    # @param [Object] term_date Value to be assigned
    def term_date=(term_date)
      if term_date.nil?
        fail ArgumentError, 'term_date cannot be nil'
      end

      @term_date = term_date
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
    # @param [Object] writing_commission_agency_rep_key Value to be assigned
    def writing_commission_agency_rep_key=(writing_commission_agency_rep_key)
      if writing_commission_agency_rep_key.nil?
        fail ArgumentError, 'writing_commission_agency_rep_key cannot be nil'
      end

      @writing_commission_agency_rep_key = writing_commission_agency_rep_key
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          subscriber_writing_agent_key == o.subscriber_writing_agent_key &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          plan_id == o.plan_id &&
          split == o.split &&
          subscriber_id == o.subscriber_id &&
          term_date == o.term_date &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          writing_commission_agency_rep_key == o.writing_commission_agency_rep_key &&
          primary_agent == o.primary_agent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [subscriber_writing_agent_key, effective_date, entry_date, entry_user, plan_id, split, subscriber_id, term_date, update_date, update_user, writing_commission_agency_rep_key, primary_agent].hash
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
