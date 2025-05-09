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
  class PlanCopy
    attr_accessor :benefits

    attr_accessor :cascade

    attr_accessor :capitation

    attr_accessor :restrictions

    attr_accessor :pre_ex

    attr_accessor :added_accum

    attr_accessor :maximums

    attr_accessor :pbm_co_pay

    attr_accessor :place_details

    attr_accessor :place_auth

    attr_accessor :place_co_pay

    attr_accessor :place_co_ins

    attr_accessor :ex_code_details

    attr_accessor :ex_code_procedure

    attr_accessor :ex_code_diagnosis

    attr_accessor :ex_code_place

    attr_accessor :context4_details

    attr_accessor :context4_pricing

    attr_accessor :auth_penalty

    attr_accessor :benefit_level

    attr_accessor :benefit_rates

    attr_accessor :id_codes

    attr_accessor :ex_code_modifiers

    attr_accessor :original_plan_id

    attr_accessor :new_plan_id

    attr_accessor :new_plan_description

    attr_accessor :new_plan_type

    attr_accessor :copy_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'benefits' => :'benefits',
        :'cascade' => :'cascade',
        :'capitation' => :'capitation',
        :'restrictions' => :'restrictions',
        :'pre_ex' => :'preEx',
        :'added_accum' => :'addedAccum',
        :'maximums' => :'maximums',
        :'pbm_co_pay' => :'pbmCoPay',
        :'place_details' => :'placeDetails',
        :'place_auth' => :'placeAuth',
        :'place_co_pay' => :'placeCoPay',
        :'place_co_ins' => :'placeCoIns',
        :'ex_code_details' => :'exCodeDetails',
        :'ex_code_procedure' => :'exCodeProcedure',
        :'ex_code_diagnosis' => :'exCodeDiagnosis',
        :'ex_code_place' => :'exCodePlace',
        :'context4_details' => :'context4Details',
        :'context4_pricing' => :'context4Pricing',
        :'auth_penalty' => :'authPenalty',
        :'benefit_level' => :'benefitLevel',
        :'benefit_rates' => :'benefitRates',
        :'id_codes' => :'idCodes',
        :'ex_code_modifiers' => :'exCodeModifiers',
        :'original_plan_id' => :'originalPlanID',
        :'new_plan_id' => :'newPlanID',
        :'new_plan_description' => :'newPlanDescription',
        :'new_plan_type' => :'newPlanType',
        :'copy_mode' => :'copyMode'
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
        :'benefits' => :'Boolean',
        :'cascade' => :'Boolean',
        :'capitation' => :'Boolean',
        :'restrictions' => :'Boolean',
        :'pre_ex' => :'Boolean',
        :'added_accum' => :'Boolean',
        :'maximums' => :'Boolean',
        :'pbm_co_pay' => :'Boolean',
        :'place_details' => :'Boolean',
        :'place_auth' => :'Boolean',
        :'place_co_pay' => :'Boolean',
        :'place_co_ins' => :'Boolean',
        :'ex_code_details' => :'Boolean',
        :'ex_code_procedure' => :'Boolean',
        :'ex_code_diagnosis' => :'Boolean',
        :'ex_code_place' => :'Boolean',
        :'context4_details' => :'Boolean',
        :'context4_pricing' => :'Boolean',
        :'auth_penalty' => :'Boolean',
        :'benefit_level' => :'Boolean',
        :'benefit_rates' => :'Boolean',
        :'id_codes' => :'Boolean',
        :'ex_code_modifiers' => :'Boolean',
        :'original_plan_id' => :'String',
        :'new_plan_id' => :'String',
        :'new_plan_description' => :'String',
        :'new_plan_type' => :'String',
        :'copy_mode' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'original_plan_id',
        :'new_plan_id',
        :'new_plan_description',
        :'new_plan_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PlanCopy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PlanCopy`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'benefits')
        self.benefits = attributes[:'benefits']
      end

      if attributes.key?(:'cascade')
        self.cascade = attributes[:'cascade']
      end

      if attributes.key?(:'capitation')
        self.capitation = attributes[:'capitation']
      end

      if attributes.key?(:'restrictions')
        self.restrictions = attributes[:'restrictions']
      end

      if attributes.key?(:'pre_ex')
        self.pre_ex = attributes[:'pre_ex']
      end

      if attributes.key?(:'added_accum')
        self.added_accum = attributes[:'added_accum']
      end

      if attributes.key?(:'maximums')
        self.maximums = attributes[:'maximums']
      end

      if attributes.key?(:'pbm_co_pay')
        self.pbm_co_pay = attributes[:'pbm_co_pay']
      end

      if attributes.key?(:'place_details')
        self.place_details = attributes[:'place_details']
      end

      if attributes.key?(:'place_auth')
        self.place_auth = attributes[:'place_auth']
      end

      if attributes.key?(:'place_co_pay')
        self.place_co_pay = attributes[:'place_co_pay']
      end

      if attributes.key?(:'place_co_ins')
        self.place_co_ins = attributes[:'place_co_ins']
      end

      if attributes.key?(:'ex_code_details')
        self.ex_code_details = attributes[:'ex_code_details']
      end

      if attributes.key?(:'ex_code_procedure')
        self.ex_code_procedure = attributes[:'ex_code_procedure']
      end

      if attributes.key?(:'ex_code_diagnosis')
        self.ex_code_diagnosis = attributes[:'ex_code_diagnosis']
      end

      if attributes.key?(:'ex_code_place')
        self.ex_code_place = attributes[:'ex_code_place']
      end

      if attributes.key?(:'context4_details')
        self.context4_details = attributes[:'context4_details']
      end

      if attributes.key?(:'context4_pricing')
        self.context4_pricing = attributes[:'context4_pricing']
      end

      if attributes.key?(:'auth_penalty')
        self.auth_penalty = attributes[:'auth_penalty']
      end

      if attributes.key?(:'benefit_level')
        self.benefit_level = attributes[:'benefit_level']
      end

      if attributes.key?(:'benefit_rates')
        self.benefit_rates = attributes[:'benefit_rates']
      end

      if attributes.key?(:'id_codes')
        self.id_codes = attributes[:'id_codes']
      end

      if attributes.key?(:'ex_code_modifiers')
        self.ex_code_modifiers = attributes[:'ex_code_modifiers']
      end

      if attributes.key?(:'original_plan_id')
        self.original_plan_id = attributes[:'original_plan_id']
      end

      if attributes.key?(:'new_plan_id')
        self.new_plan_id = attributes[:'new_plan_id']
      end

      if attributes.key?(:'new_plan_description')
        self.new_plan_description = attributes[:'new_plan_description']
      end

      if attributes.key?(:'new_plan_type')
        self.new_plan_type = attributes[:'new_plan_type']
      end

      if attributes.key?(:'copy_mode')
        self.copy_mode = attributes[:'copy_mode']
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
          benefits == o.benefits &&
          cascade == o.cascade &&
          capitation == o.capitation &&
          restrictions == o.restrictions &&
          pre_ex == o.pre_ex &&
          added_accum == o.added_accum &&
          maximums == o.maximums &&
          pbm_co_pay == o.pbm_co_pay &&
          place_details == o.place_details &&
          place_auth == o.place_auth &&
          place_co_pay == o.place_co_pay &&
          place_co_ins == o.place_co_ins &&
          ex_code_details == o.ex_code_details &&
          ex_code_procedure == o.ex_code_procedure &&
          ex_code_diagnosis == o.ex_code_diagnosis &&
          ex_code_place == o.ex_code_place &&
          context4_details == o.context4_details &&
          context4_pricing == o.context4_pricing &&
          auth_penalty == o.auth_penalty &&
          benefit_level == o.benefit_level &&
          benefit_rates == o.benefit_rates &&
          id_codes == o.id_codes &&
          ex_code_modifiers == o.ex_code_modifiers &&
          original_plan_id == o.original_plan_id &&
          new_plan_id == o.new_plan_id &&
          new_plan_description == o.new_plan_description &&
          new_plan_type == o.new_plan_type &&
          copy_mode == o.copy_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [benefits, cascade, capitation, restrictions, pre_ex, added_accum, maximums, pbm_co_pay, place_details, place_auth, place_co_pay, place_co_ins, ex_code_details, ex_code_procedure, ex_code_diagnosis, ex_code_place, context4_details, context4_pricing, auth_penalty, benefit_level, benefit_rates, id_codes, ex_code_modifiers, original_plan_id, new_plan_id, new_plan_description, new_plan_type, copy_mode].hash
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
