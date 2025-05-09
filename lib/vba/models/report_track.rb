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
  class ReportTrack
    # ID of the report tracking.  Note: The database will apply a default value of `0` for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of `0` to meet the API requirements and ensure that the functionality occurs as expected.
    attr_accessor :report_track_key

    # Date record was first added to the system
    attr_accessor :entry_date

    # User that first added the record to the system
    attr_accessor :entry_user

    # Identifies the priority of the report.
    attr_accessor :priority

    # Date when the report was received.
    attr_accessor :received_date

    # Identifies the 'Receieved Status' of the report.
    attr_accessor :received_status

    # ID of the User who received the report.
    attr_accessor :received_user

    # ID of the report queue detail.  Note: The database will apply a default value of `0` for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of `0` to meet the API requirements and ensure that the functionality occurs as expected.
    attr_accessor :report_queue_detail_key

    # Identifies the date when the report was sent.
    attr_accessor :sent_date

    # Identifies the sent status of the report.
    attr_accessor :sent_status

    # Identifies the 'Sent To' subject of the report.
    attr_accessor :sent_to

    # ID of the User who sent the report.
    attr_accessor :sent_user

    # Identifies the tracking status of the report.
    attr_accessor :tracking_status

    # Date the record was last updated in the system
    attr_accessor :update_date

    # User that last updated the record in the system
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'report_track_key' => :'reportTrack_Key',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'priority' => :'priority',
        :'received_date' => :'received_Date',
        :'received_status' => :'received_Status',
        :'received_user' => :'received_User',
        :'report_queue_detail_key' => :'reportQueueDetail_Key',
        :'sent_date' => :'sent_Date',
        :'sent_status' => :'sent_Status',
        :'sent_to' => :'sent_To',
        :'sent_user' => :'sent_User',
        :'tracking_status' => :'tracking_Status',
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
        :'report_track_key' => :'Integer',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'priority' => :'String',
        :'received_date' => :'Time',
        :'received_status' => :'String',
        :'received_user' => :'String',
        :'report_queue_detail_key' => :'Integer',
        :'sent_date' => :'Time',
        :'sent_status' => :'String',
        :'sent_to' => :'String',
        :'sent_user' => :'String',
        :'tracking_status' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'entry_user',
        :'priority',
        :'received_date',
        :'received_status',
        :'received_user',
        :'sent_date',
        :'sent_status',
        :'sent_to',
        :'sent_user',
        :'tracking_status',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::ReportTrack` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::ReportTrack`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'report_track_key')
        self.report_track_key = attributes[:'report_track_key']
      else
        self.report_track_key = nil
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'received_date')
        self.received_date = attributes[:'received_date']
      end

      if attributes.key?(:'received_status')
        self.received_status = attributes[:'received_status']
      end

      if attributes.key?(:'received_user')
        self.received_user = attributes[:'received_user']
      end

      if attributes.key?(:'report_queue_detail_key')
        self.report_queue_detail_key = attributes[:'report_queue_detail_key']
      else
        self.report_queue_detail_key = nil
      end

      if attributes.key?(:'sent_date')
        self.sent_date = attributes[:'sent_date']
      end

      if attributes.key?(:'sent_status')
        self.sent_status = attributes[:'sent_status']
      end

      if attributes.key?(:'sent_to')
        self.sent_to = attributes[:'sent_to']
      end

      if attributes.key?(:'sent_user')
        self.sent_user = attributes[:'sent_user']
      end

      if attributes.key?(:'tracking_status')
        self.tracking_status = attributes[:'tracking_status']
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
      if @report_track_key.nil?
        invalid_properties.push('invalid value for "report_track_key", report_track_key cannot be nil.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
      end

      if !@priority.nil? && @priority.to_s.length > 32
        invalid_properties.push('invalid value for "priority", the character length must be smaller than or equal to 32.')
      end

      if !@received_status.nil? && @received_status.to_s.length > 32
        invalid_properties.push('invalid value for "received_status", the character length must be smaller than or equal to 32.')
      end

      if !@received_user.nil? && @received_user.to_s.length > 20
        invalid_properties.push('invalid value for "received_user", the character length must be smaller than or equal to 20.')
      end

      if @report_queue_detail_key.nil?
        invalid_properties.push('invalid value for "report_queue_detail_key", report_queue_detail_key cannot be nil.')
      end

      if !@sent_status.nil? && @sent_status.to_s.length > 32
        invalid_properties.push('invalid value for "sent_status", the character length must be smaller than or equal to 32.')
      end

      if !@sent_to.nil? && @sent_to.to_s.length > 32
        invalid_properties.push('invalid value for "sent_to", the character length must be smaller than or equal to 32.')
      end

      if !@sent_user.nil? && @sent_user.to_s.length > 20
        invalid_properties.push('invalid value for "sent_user", the character length must be smaller than or equal to 20.')
      end

      if !@tracking_status.nil? && @tracking_status.to_s.length > 32
        invalid_properties.push('invalid value for "tracking_status", the character length must be smaller than or equal to 32.')
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
      return false if @report_track_key.nil?
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@priority.nil? && @priority.to_s.length > 32
      return false if !@received_status.nil? && @received_status.to_s.length > 32
      return false if !@received_user.nil? && @received_user.to_s.length > 20
      return false if @report_queue_detail_key.nil?
      return false if !@sent_status.nil? && @sent_status.to_s.length > 32
      return false if !@sent_to.nil? && @sent_to.to_s.length > 32
      return false if !@sent_user.nil? && @sent_user.to_s.length > 20
      return false if !@tracking_status.nil? && @tracking_status.to_s.length > 32
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] report_track_key Value to be assigned
    def report_track_key=(report_track_key)
      if report_track_key.nil?
        fail ArgumentError, 'report_track_key cannot be nil'
      end

      @report_track_key = report_track_key
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
    # @param [Object] priority Value to be assigned
    def priority=(priority)
      if !priority.nil? && priority.to_s.length > 32
        fail ArgumentError, 'invalid value for "priority", the character length must be smaller than or equal to 32.'
      end

      @priority = priority
    end

    # Custom attribute writer method with validation
    # @param [Object] received_status Value to be assigned
    def received_status=(received_status)
      if !received_status.nil? && received_status.to_s.length > 32
        fail ArgumentError, 'invalid value for "received_status", the character length must be smaller than or equal to 32.'
      end

      @received_status = received_status
    end

    # Custom attribute writer method with validation
    # @param [Object] received_user Value to be assigned
    def received_user=(received_user)
      if !received_user.nil? && received_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "received_user", the character length must be smaller than or equal to 20.'
      end

      @received_user = received_user
    end

    # Custom attribute writer method with validation
    # @param [Object] report_queue_detail_key Value to be assigned
    def report_queue_detail_key=(report_queue_detail_key)
      if report_queue_detail_key.nil?
        fail ArgumentError, 'report_queue_detail_key cannot be nil'
      end

      @report_queue_detail_key = report_queue_detail_key
    end

    # Custom attribute writer method with validation
    # @param [Object] sent_status Value to be assigned
    def sent_status=(sent_status)
      if !sent_status.nil? && sent_status.to_s.length > 32
        fail ArgumentError, 'invalid value for "sent_status", the character length must be smaller than or equal to 32.'
      end

      @sent_status = sent_status
    end

    # Custom attribute writer method with validation
    # @param [Object] sent_to Value to be assigned
    def sent_to=(sent_to)
      if !sent_to.nil? && sent_to.to_s.length > 32
        fail ArgumentError, 'invalid value for "sent_to", the character length must be smaller than or equal to 32.'
      end

      @sent_to = sent_to
    end

    # Custom attribute writer method with validation
    # @param [Object] sent_user Value to be assigned
    def sent_user=(sent_user)
      if !sent_user.nil? && sent_user.to_s.length > 20
        fail ArgumentError, 'invalid value for "sent_user", the character length must be smaller than or equal to 20.'
      end

      @sent_user = sent_user
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_status Value to be assigned
    def tracking_status=(tracking_status)
      if !tracking_status.nil? && tracking_status.to_s.length > 32
        fail ArgumentError, 'invalid value for "tracking_status", the character length must be smaller than or equal to 32.'
      end

      @tracking_status = tracking_status
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
          report_track_key == o.report_track_key &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          priority == o.priority &&
          received_date == o.received_date &&
          received_status == o.received_status &&
          received_user == o.received_user &&
          report_queue_detail_key == o.report_queue_detail_key &&
          sent_date == o.sent_date &&
          sent_status == o.sent_status &&
          sent_to == o.sent_to &&
          sent_user == o.sent_user &&
          tracking_status == o.tracking_status &&
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
      [report_track_key, entry_date, entry_user, priority, received_date, received_status, received_user, report_queue_detail_key, sent_date, sent_status, sent_to, sent_user, tracking_status, update_date, update_user].hash
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
