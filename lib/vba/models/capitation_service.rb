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
  class CapitationService
    # ID of the capitation service. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :capitation_service_key

    # Identifies the ICD version associated with the listed diagnostic codes. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :diagnostic_code_type

    # Date when the capitation service becomes/became effective.
    attr_accessor :effective_date

    # Date when the capitation service expires/expired.
    attr_accessor :end_date

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Starting code for the range of acceptable diagnostic codes for the capitation service.
    attr_accessor :from_diag_code

    # Starting code for the range of acceptable procedure codes for the capitation service.
    attr_accessor :from_procedure

    # ID of the network associated with the capitation service.
    attr_accessor :network_id

    # Place of service associated with the capitation service.
    attr_accessor :place_of_service

    # When this flag is set, the list of TINS must match the PCP for this member. Note: This field is marked as NOT NULL in the database and therefore required by the API.
    attr_accessor :require_pcp

    # Specialty code of the Provider associated with the capitation service.
    attr_accessor :specialty_code

    # Ending code for the range of acceptable diagnostic codes for the capitation service.
    attr_accessor :thru_diag_code

    # Ending code for the range of acceptable procedure codes for the network.
    attr_accessor :thru_procedure

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'capitation_service_key' => :'capitationService_Key',
        :'diagnostic_code_type' => :'diagnostic_Code_Type',
        :'effective_date' => :'effective_Date',
        :'end_date' => :'end_Date',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'from_diag_code' => :'from_Diag_Code',
        :'from_procedure' => :'from_Procedure',
        :'network_id' => :'network_ID',
        :'place_of_service' => :'place_Of_Service',
        :'require_pcp' => :'require_PCP',
        :'specialty_code' => :'specialty_Code',
        :'thru_diag_code' => :'thru_Diag_Code',
        :'thru_procedure' => :'thru_Procedure',
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
        :'capitation_service_key' => :'Integer',
        :'diagnostic_code_type' => :'String',
        :'effective_date' => :'Time',
        :'end_date' => :'Time',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'from_diag_code' => :'String',
        :'from_procedure' => :'String',
        :'network_id' => :'String',
        :'place_of_service' => :'String',
        :'require_pcp' => :'Boolean',
        :'specialty_code' => :'String',
        :'thru_diag_code' => :'String',
        :'thru_procedure' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'effective_date',
        :'end_date',
        :'entry_user',
        :'from_diag_code',
        :'from_procedure',
        :'network_id',
        :'place_of_service',
        :'specialty_code',
        :'thru_diag_code',
        :'thru_procedure',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::CapitationService` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::CapitationService`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'capitation_service_key')
        self.capitation_service_key = attributes[:'capitation_service_key']
      else
        self.capitation_service_key = nil
      end

      if attributes.key?(:'diagnostic_code_type')
        self.diagnostic_code_type = attributes[:'diagnostic_code_type']
      else
        self.diagnostic_code_type = nil
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'from_diag_code')
        self.from_diag_code = attributes[:'from_diag_code']
      end

      if attributes.key?(:'from_procedure')
        self.from_procedure = attributes[:'from_procedure']
      end

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      end

      if attributes.key?(:'place_of_service')
        self.place_of_service = attributes[:'place_of_service']
      end

      if attributes.key?(:'require_pcp')
        self.require_pcp = attributes[:'require_pcp']
      else
        self.require_pcp = nil
      end

      if attributes.key?(:'specialty_code')
        self.specialty_code = attributes[:'specialty_code']
      end

      if attributes.key?(:'thru_diag_code')
        self.thru_diag_code = attributes[:'thru_diag_code']
      end

      if attributes.key?(:'thru_procedure')
        self.thru_procedure = attributes[:'thru_procedure']
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
      if @capitation_service_key.nil?
        invalid_properties.push('invalid value for "capitation_service_key", capitation_service_key cannot be nil.')
      end

      if @diagnostic_code_type.nil?
        invalid_properties.push('invalid value for "diagnostic_code_type", diagnostic_code_type cannot be nil.')
      end

      if @diagnostic_code_type.to_s.length > 16
        invalid_properties.push('invalid value for "diagnostic_code_type", the character length must be smaller than or equal to 16.')
      end

      if @diagnostic_code_type.to_s.length < 1
        invalid_properties.push('invalid value for "diagnostic_code_type", the character length must be great than or equal to 1.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@from_diag_code.nil? && @from_diag_code.to_s.length > 8
        invalid_properties.push('invalid value for "from_diag_code", the character length must be smaller than or equal to 8.')
      end

      if !@from_procedure.nil? && @from_procedure.to_s.length > 8
        invalid_properties.push('invalid value for "from_procedure", the character length must be smaller than or equal to 8.')
      end

      if !@network_id.nil? && @network_id.to_s.length > 10
        invalid_properties.push('invalid value for "network_id", the character length must be smaller than or equal to 10.')
      end

      if !@place_of_service.nil? && @place_of_service.to_s.length > 5
        invalid_properties.push('invalid value for "place_of_service", the character length must be smaller than or equal to 5.')
      end

      if @require_pcp.nil?
        invalid_properties.push('invalid value for "require_pcp", require_pcp cannot be nil.')
      end

      if !@specialty_code.nil? && @specialty_code.to_s.length > 10
        invalid_properties.push('invalid value for "specialty_code", the character length must be smaller than or equal to 10.')
      end

      if !@thru_diag_code.nil? && @thru_diag_code.to_s.length > 8
        invalid_properties.push('invalid value for "thru_diag_code", the character length must be smaller than or equal to 8.')
      end

      if !@thru_procedure.nil? && @thru_procedure.to_s.length > 8
        invalid_properties.push('invalid value for "thru_procedure", the character length must be smaller than or equal to 8.')
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
      return false if @capitation_service_key.nil?
      return false if @diagnostic_code_type.nil?
      return false if @diagnostic_code_type.to_s.length > 16
      return false if @diagnostic_code_type.to_s.length < 1
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@from_diag_code.nil? && @from_diag_code.to_s.length > 8
      return false if !@from_procedure.nil? && @from_procedure.to_s.length > 8
      return false if !@network_id.nil? && @network_id.to_s.length > 10
      return false if !@place_of_service.nil? && @place_of_service.to_s.length > 5
      return false if @require_pcp.nil?
      return false if !@specialty_code.nil? && @specialty_code.to_s.length > 10
      return false if !@thru_diag_code.nil? && @thru_diag_code.to_s.length > 8
      return false if !@thru_procedure.nil? && @thru_procedure.to_s.length > 8
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] capitation_service_key Value to be assigned
    def capitation_service_key=(capitation_service_key)
      if capitation_service_key.nil?
        fail ArgumentError, 'capitation_service_key cannot be nil'
      end

      @capitation_service_key = capitation_service_key
    end

    # Custom attribute writer method with validation
    # @param [Object] diagnostic_code_type Value to be assigned
    def diagnostic_code_type=(diagnostic_code_type)
      if diagnostic_code_type.nil?
        fail ArgumentError, 'diagnostic_code_type cannot be nil'
      end

      if diagnostic_code_type.to_s.length > 16
        fail ArgumentError, 'invalid value for "diagnostic_code_type", the character length must be smaller than or equal to 16.'
      end

      if diagnostic_code_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "diagnostic_code_type", the character length must be great than or equal to 1.'
      end

      @diagnostic_code_type = diagnostic_code_type
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
    # @param [Object] from_diag_code Value to be assigned
    def from_diag_code=(from_diag_code)
      if !from_diag_code.nil? && from_diag_code.to_s.length > 8
        fail ArgumentError, 'invalid value for "from_diag_code", the character length must be smaller than or equal to 8.'
      end

      @from_diag_code = from_diag_code
    end

    # Custom attribute writer method with validation
    # @param [Object] from_procedure Value to be assigned
    def from_procedure=(from_procedure)
      if !from_procedure.nil? && from_procedure.to_s.length > 8
        fail ArgumentError, 'invalid value for "from_procedure", the character length must be smaller than or equal to 8.'
      end

      @from_procedure = from_procedure
    end

    # Custom attribute writer method with validation
    # @param [Object] network_id Value to be assigned
    def network_id=(network_id)
      if !network_id.nil? && network_id.to_s.length > 10
        fail ArgumentError, 'invalid value for "network_id", the character length must be smaller than or equal to 10.'
      end

      @network_id = network_id
    end

    # Custom attribute writer method with validation
    # @param [Object] place_of_service Value to be assigned
    def place_of_service=(place_of_service)
      if !place_of_service.nil? && place_of_service.to_s.length > 5
        fail ArgumentError, 'invalid value for "place_of_service", the character length must be smaller than or equal to 5.'
      end

      @place_of_service = place_of_service
    end

    # Custom attribute writer method with validation
    # @param [Object] require_pcp Value to be assigned
    def require_pcp=(require_pcp)
      if require_pcp.nil?
        fail ArgumentError, 'require_pcp cannot be nil'
      end

      @require_pcp = require_pcp
    end

    # Custom attribute writer method with validation
    # @param [Object] specialty_code Value to be assigned
    def specialty_code=(specialty_code)
      if !specialty_code.nil? && specialty_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "specialty_code", the character length must be smaller than or equal to 10.'
      end

      @specialty_code = specialty_code
    end

    # Custom attribute writer method with validation
    # @param [Object] thru_diag_code Value to be assigned
    def thru_diag_code=(thru_diag_code)
      if !thru_diag_code.nil? && thru_diag_code.to_s.length > 8
        fail ArgumentError, 'invalid value for "thru_diag_code", the character length must be smaller than or equal to 8.'
      end

      @thru_diag_code = thru_diag_code
    end

    # Custom attribute writer method with validation
    # @param [Object] thru_procedure Value to be assigned
    def thru_procedure=(thru_procedure)
      if !thru_procedure.nil? && thru_procedure.to_s.length > 8
        fail ArgumentError, 'invalid value for "thru_procedure", the character length must be smaller than or equal to 8.'
      end

      @thru_procedure = thru_procedure
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
          capitation_service_key == o.capitation_service_key &&
          diagnostic_code_type == o.diagnostic_code_type &&
          effective_date == o.effective_date &&
          end_date == o.end_date &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          from_diag_code == o.from_diag_code &&
          from_procedure == o.from_procedure &&
          network_id == o.network_id &&
          place_of_service == o.place_of_service &&
          require_pcp == o.require_pcp &&
          specialty_code == o.specialty_code &&
          thru_diag_code == o.thru_diag_code &&
          thru_procedure == o.thru_procedure &&
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
      [capitation_service_key, diagnostic_code_type, effective_date, end_date, entry_date, entry_user, from_diag_code, from_procedure, network_id, place_of_service, require_pcp, specialty_code, thru_diag_code, thru_procedure, update_date, update_user].hash
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
