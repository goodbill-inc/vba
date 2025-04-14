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
  class CommissionAgencyRep
    # Unique identifier for the CommissionAgencyRep table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :commission_agency_rep_key

    # Unique identifier for the Agent
    attr_accessor :agent_number

    attr_accessor :cluster_level

    # Unique identifier for the CommissionAgency table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :commission_agency_key

    # Unique identifier for the CommissionRep table Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :commission_rep_key

    # Informational
    attr_accessor :e_o_coverage_deductible

    # Informational
    attr_accessor :e_o_coverage_end

    # Informational
    attr_accessor :e_o_coverage_level

    # Informational
    attr_accessor :e_o_coverage_name

    # Informational
    attr_accessor :e_o_coverage_start

    # Beginning date range the Agent represents the Agency
    attr_accessor :effective_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Payee of the Agent
    attr_accessor :payee_id

    # Determine if the Payee, Agnecy, or Agent is paid
    attr_accessor :send_check_to

    # Ending date range the Agent represents the Agency
    attr_accessor :term_date

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commission_agency_rep_key' => :'commissionAgencyRep_Key',
        :'agent_number' => :'agent_Number',
        :'cluster_level' => :'cluster_Level',
        :'commission_agency_key' => :'commissionAgency_Key',
        :'commission_rep_key' => :'commissionRep_Key',
        :'e_o_coverage_deductible' => :'eO_Coverage_Deductible',
        :'e_o_coverage_end' => :'eO_Coverage_End',
        :'e_o_coverage_level' => :'eO_Coverage_Level',
        :'e_o_coverage_name' => :'eO_Coverage_Name',
        :'e_o_coverage_start' => :'eO_Coverage_Start',
        :'effective_date' => :'effective_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'payee_id' => :'payee_ID',
        :'send_check_to' => :'send_Check_To',
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
        :'commission_agency_rep_key' => :'Integer',
        :'agent_number' => :'String',
        :'cluster_level' => :'String',
        :'commission_agency_key' => :'Integer',
        :'commission_rep_key' => :'Integer',
        :'e_o_coverage_deductible' => :'Float',
        :'e_o_coverage_end' => :'Time',
        :'e_o_coverage_level' => :'String',
        :'e_o_coverage_name' => :'String',
        :'e_o_coverage_start' => :'Time',
        :'effective_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'payee_id' => :'String',
        :'send_check_to' => :'String',
        :'term_date' => :'Time',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'agent_number',
        :'cluster_level',
        :'e_o_coverage_deductible',
        :'e_o_coverage_end',
        :'e_o_coverage_level',
        :'e_o_coverage_name',
        :'e_o_coverage_start',
        :'effective_date',
        :'entry_user',
        :'payee_id',
        :'send_check_to',
        :'term_date',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CommissionAgencyRep` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CommissionAgencyRep`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'commission_agency_rep_key')
        self.commission_agency_rep_key = attributes[:'commission_agency_rep_key']
      else
        self.commission_agency_rep_key = nil
      end

      if attributes.key?(:'agent_number')
        self.agent_number = attributes[:'agent_number']
      end

      if attributes.key?(:'cluster_level')
        self.cluster_level = attributes[:'cluster_level']
      end

      if attributes.key?(:'commission_agency_key')
        self.commission_agency_key = attributes[:'commission_agency_key']
      else
        self.commission_agency_key = nil
      end

      if attributes.key?(:'commission_rep_key')
        self.commission_rep_key = attributes[:'commission_rep_key']
      else
        self.commission_rep_key = nil
      end

      if attributes.key?(:'e_o_coverage_deductible')
        self.e_o_coverage_deductible = attributes[:'e_o_coverage_deductible']
      end

      if attributes.key?(:'e_o_coverage_end')
        self.e_o_coverage_end = attributes[:'e_o_coverage_end']
      end

      if attributes.key?(:'e_o_coverage_level')
        self.e_o_coverage_level = attributes[:'e_o_coverage_level']
      end

      if attributes.key?(:'e_o_coverage_name')
        self.e_o_coverage_name = attributes[:'e_o_coverage_name']
      end

      if attributes.key?(:'e_o_coverage_start')
        self.e_o_coverage_start = attributes[:'e_o_coverage_start']
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

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'send_check_to')
        self.send_check_to = attributes[:'send_check_to']
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
      if @commission_agency_rep_key.nil?
        invalid_properties.push('invalid value for "commission_agency_rep_key", commission_agency_rep_key cannot be nil.')
      end

      if !@agent_number.nil? && @agent_number.to_s.length > 32
        invalid_properties.push('invalid value for "agent_number", the character length must be smaller than or equal to 32.')
      end

      if !@cluster_level.nil? && @cluster_level.to_s.length > 32
        invalid_properties.push('invalid value for "cluster_level", the character length must be smaller than or equal to 32.')
      end

      if @commission_agency_key.nil?
        invalid_properties.push('invalid value for "commission_agency_key", commission_agency_key cannot be nil.')
      end

      if @commission_rep_key.nil?
        invalid_properties.push('invalid value for "commission_rep_key", commission_rep_key cannot be nil.')
      end

      if !@e_o_coverage_level.nil? && @e_o_coverage_level.to_s.length > 128
        invalid_properties.push('invalid value for "e_o_coverage_level", the character length must be smaller than or equal to 128.')
      end

      if !@e_o_coverage_name.nil? && @e_o_coverage_name.to_s.length > 128
        invalid_properties.push('invalid value for "e_o_coverage_name", the character length must be smaller than or equal to 128.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@payee_id.nil? && @payee_id.to_s.length > 20
        invalid_properties.push('invalid value for "payee_id", the character length must be smaller than or equal to 20.')
      end

      if !@send_check_to.nil? && @send_check_to.to_s.length > 2
        invalid_properties.push('invalid value for "send_check_to", the character length must be smaller than or equal to 2.')
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
      return false if @commission_agency_rep_key.nil?
      return false if !@agent_number.nil? && @agent_number.to_s.length > 32
      return false if !@cluster_level.nil? && @cluster_level.to_s.length > 32
      return false if @commission_agency_key.nil?
      return false if @commission_rep_key.nil?
      return false if !@e_o_coverage_level.nil? && @e_o_coverage_level.to_s.length > 128
      return false if !@e_o_coverage_name.nil? && @e_o_coverage_name.to_s.length > 128
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@payee_id.nil? && @payee_id.to_s.length > 20
      return false if !@send_check_to.nil? && @send_check_to.to_s.length > 2
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_agency_rep_key Value to be assigned
    def commission_agency_rep_key=(commission_agency_rep_key)
      if commission_agency_rep_key.nil?
        fail ArgumentError, 'commission_agency_rep_key cannot be nil'
      end

      @commission_agency_rep_key = commission_agency_rep_key
    end

    # Custom attribute writer method with validation
    # @param [Object] agent_number Value to be assigned
    def agent_number=(agent_number)
      if !agent_number.nil? && agent_number.to_s.length > 32
        fail ArgumentError, 'invalid value for "agent_number", the character length must be smaller than or equal to 32.'
      end

      @agent_number = agent_number
    end

    # Custom attribute writer method with validation
    # @param [Object] cluster_level Value to be assigned
    def cluster_level=(cluster_level)
      if !cluster_level.nil? && cluster_level.to_s.length > 32
        fail ArgumentError, 'invalid value for "cluster_level", the character length must be smaller than or equal to 32.'
      end

      @cluster_level = cluster_level
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_agency_key Value to be assigned
    def commission_agency_key=(commission_agency_key)
      if commission_agency_key.nil?
        fail ArgumentError, 'commission_agency_key cannot be nil'
      end

      @commission_agency_key = commission_agency_key
    end

    # Custom attribute writer method with validation
    # @param [Object] commission_rep_key Value to be assigned
    def commission_rep_key=(commission_rep_key)
      if commission_rep_key.nil?
        fail ArgumentError, 'commission_rep_key cannot be nil'
      end

      @commission_rep_key = commission_rep_key
    end

    # Custom attribute writer method with validation
    # @param [Object] e_o_coverage_level Value to be assigned
    def e_o_coverage_level=(e_o_coverage_level)
      if !e_o_coverage_level.nil? && e_o_coverage_level.to_s.length > 128
        fail ArgumentError, 'invalid value for "e_o_coverage_level", the character length must be smaller than or equal to 128.'
      end

      @e_o_coverage_level = e_o_coverage_level
    end

    # Custom attribute writer method with validation
    # @param [Object] e_o_coverage_name Value to be assigned
    def e_o_coverage_name=(e_o_coverage_name)
      if !e_o_coverage_name.nil? && e_o_coverage_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "e_o_coverage_name", the character length must be smaller than or equal to 128.'
      end

      @e_o_coverage_name = e_o_coverage_name
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
    # @param [Object] payee_id Value to be assigned
    def payee_id=(payee_id)
      if !payee_id.nil? && payee_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "payee_id", the character length must be smaller than or equal to 20.'
      end

      @payee_id = payee_id
    end

    # Custom attribute writer method with validation
    # @param [Object] send_check_to Value to be assigned
    def send_check_to=(send_check_to)
      if !send_check_to.nil? && send_check_to.to_s.length > 2
        fail ArgumentError, 'invalid value for "send_check_to", the character length must be smaller than or equal to 2.'
      end

      @send_check_to = send_check_to
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
          commission_agency_rep_key == o.commission_agency_rep_key &&
          agent_number == o.agent_number &&
          cluster_level == o.cluster_level &&
          commission_agency_key == o.commission_agency_key &&
          commission_rep_key == o.commission_rep_key &&
          e_o_coverage_deductible == o.e_o_coverage_deductible &&
          e_o_coverage_end == o.e_o_coverage_end &&
          e_o_coverage_level == o.e_o_coverage_level &&
          e_o_coverage_name == o.e_o_coverage_name &&
          e_o_coverage_start == o.e_o_coverage_start &&
          effective_date == o.effective_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          payee_id == o.payee_id &&
          send_check_to == o.send_check_to &&
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
      [commission_agency_rep_key, agent_number, cluster_level, commission_agency_key, commission_rep_key, e_o_coverage_deductible, e_o_coverage_end, e_o_coverage_level, e_o_coverage_name, e_o_coverage_start, effective_date, entry_date, entry_user, payee_id, send_check_to, term_date, update_date, update_user].hash
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
