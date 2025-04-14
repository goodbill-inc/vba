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
  class FaxReportDTO
    # Activity ID that spawned this
    attr_accessor :parent_activity_id

    attr_accessor :_when

    attr_accessor :on_success

    attr_accessor :on_failure

    # ID of the Report
    attr_accessor :report_id

    # Export Type. Valid values are: Excel, Html, Pdf, Word, PPT, CSV
    attr_accessor :export_type

    # Filename of the report.
    attr_accessor :filename

    # A json object of report parameters  Required if a report requires them.
    attr_accessor :report_parameters

    # Fax destination
    attr_accessor :fax_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parent_activity_id' => :'parentActivityId',
        :'_when' => :'when',
        :'on_success' => :'onSuccess',
        :'on_failure' => :'onFailure',
        :'report_id' => :'reportId',
        :'export_type' => :'exportType',
        :'filename' => :'filename',
        :'report_parameters' => :'reportParameters',
        :'fax_number' => :'faxNumber'
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
        :'parent_activity_id' => :'String',
        :'_when' => :'Time',
        :'on_success' => :'CallbackDTO',
        :'on_failure' => :'CallbackDTO',
        :'report_id' => :'String',
        :'export_type' => :'String',
        :'filename' => :'String',
        :'report_parameters' => :'Hash<String, String>',
        :'fax_number' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'parent_activity_id',
        :'_when',
        :'report_id',
        :'export_type',
        :'filename',
        :'report_parameters',
        :'fax_number'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::FaxReportDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::FaxReportDTO`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'parent_activity_id')
        self.parent_activity_id = attributes[:'parent_activity_id']
      end

      if attributes.key?(:'_when')
        self._when = attributes[:'_when']
      end

      if attributes.key?(:'on_success')
        self.on_success = attributes[:'on_success']
      end

      if attributes.key?(:'on_failure')
        self.on_failure = attributes[:'on_failure']
      end

      if attributes.key?(:'report_id')
        self.report_id = attributes[:'report_id']
      end

      if attributes.key?(:'export_type')
        self.export_type = attributes[:'export_type']
      end

      if attributes.key?(:'filename')
        self.filename = attributes[:'filename']
      end

      if attributes.key?(:'report_parameters')
        if (value = attributes[:'report_parameters']).is_a?(Hash)
          self.report_parameters = value
        end
      end

      if attributes.key?(:'fax_number')
        self.fax_number = attributes[:'fax_number']
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
          parent_activity_id == o.parent_activity_id &&
          _when == o._when &&
          on_success == o.on_success &&
          on_failure == o.on_failure &&
          report_id == o.report_id &&
          export_type == o.export_type &&
          filename == o.filename &&
          report_parameters == o.report_parameters &&
          fax_number == o.fax_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [parent_activity_id, _when, on_success, on_failure, report_id, export_type, filename, report_parameters, fax_number].hash
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
