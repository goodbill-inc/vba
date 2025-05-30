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
  class PlanAddedAccum
    # References the Plans.Plan_ID for this Added Accumulator.
    attr_accessor :plan_id

    # Unique identifier for this Added Accumulator. This value must also be unique of any Benefit_Code value in BenefitCodes.Benefit_Code.
    attr_accessor :accum_name

    # Total annual amount that the Plan will pay both In Network and Out of Network.
    attr_accessor :annual_max

    # Total annual amount that the Plan will pay both In Network and Out of Network.
    attr_accessor :annual_max_member

    # Annual amount that the Plan will pay In Network.
    attr_accessor :annual_max_net

    # Annual amount that the Plan will pay In Network.
    attr_accessor :annual_max_net_member

    # Annual amount that the Plan will pay Out of Network.
    attr_accessor :annual_max_oon

    # Annual amount that the Plan will pay Out of Network.
    attr_accessor :annual_max_oon_member

    # Total Co-Insurance amount for the Member.
    attr_accessor :co_ins_max_mem

    # In Network Co-Insurance amount for the Member.
    attr_accessor :co_ins_max_net_mem

    # In Network Co-Insurance amount for the Family.
    attr_accessor :co_ins_max_net_sub

    # Out of Network Co-Insurance amount for the Member.
    attr_accessor :co_ins_max_oon_mem

    # Out of Network Co-Insurance amount for the Family.
    attr_accessor :co_ins_max_oon_sub

    # Total Co-Insurance amount for the Family.
    attr_accessor :co_ins_max_sub

    # Date when the record was first added to the system.
    attr_accessor :entry_date

    # User that first added the record to the system.
    attr_accessor :entry_user

    # Total lifetime amount that the Plan will pay both In Network and Out of Network.
    attr_accessor :lifetime_max

    # Total lifetime amount that the Plan will pay both In Network and Out of Network.
    attr_accessor :lifetime_max_member

    # Lifetime amount that the Plan will pay In Network.
    attr_accessor :lifetime_max_net

    # Lifetime amount that the Plan will pay In Network.
    attr_accessor :lifetime_max_net_member

    # Lifetime amount that the Plan will pay Out of Network.
    attr_accessor :lifetime_max_oon

    # Lifetime amount that the Plan will pay Out of Network.
    attr_accessor :lifetime_max_oon_member

    # Out of Network deductible amount for the Member.
    attr_accessor :member_ded_oon

    # In Network deductible amount for the Member.
    attr_accessor :member_ded_ppo

    # Total deductible amount for the Member.
    attr_accessor :member_deductible

    # Total Out of Pocket amount for the Member.
    attr_accessor :oo_p_max_mem

    # In Network Out of Pocket amount for the Member.
    attr_accessor :oo_p_max_net_mem

    # In Network Out of Pocket amount for the Family.
    attr_accessor :oo_p_max_net_sub

    # Out of Network Out of Pocket amount for the Member.
    attr_accessor :oo_p_max_oon_mem

    # Out of Network Out of Pocket amount for the Family.
    attr_accessor :oo_p_max_oon_sub

    # Total Out of Pocket amount for the Family.
    attr_accessor :oo_p_max_sub

    # Out of Network deductible amount for the Family.
    attr_accessor :subscriber_ded_oon

    # In Network deductible amount for the Family.
    attr_accessor :subscriber_ded_ppo

    # Total deductible amount for the Family.
    attr_accessor :subscriber_deductible

    # Date when the record was last updated in the system.
    attr_accessor :update_date

    # User that last updated the record in the system.
    attr_accessor :update_user

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'plan_id' => :'plan_ID',
        :'accum_name' => :'accum_Name',
        :'annual_max' => :'annual_Max',
        :'annual_max_member' => :'annual_Max_Member',
        :'annual_max_net' => :'annual_Max_Net',
        :'annual_max_net_member' => :'annual_Max_Net_Member',
        :'annual_max_oon' => :'annual_Max_OON',
        :'annual_max_oon_member' => :'annual_Max_OON_Member',
        :'co_ins_max_mem' => :'coIns_Max_Mem',
        :'co_ins_max_net_mem' => :'coIns_Max_Net_Mem',
        :'co_ins_max_net_sub' => :'coIns_Max_Net_Sub',
        :'co_ins_max_oon_mem' => :'coIns_Max_OON_Mem',
        :'co_ins_max_oon_sub' => :'coIns_Max_OON_Sub',
        :'co_ins_max_sub' => :'coIns_Max_Sub',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'lifetime_max' => :'lifetime_Max',
        :'lifetime_max_member' => :'lifetime_Max_Member',
        :'lifetime_max_net' => :'lifetime_Max_Net',
        :'lifetime_max_net_member' => :'lifetime_Max_Net_Member',
        :'lifetime_max_oon' => :'lifetime_Max_OON',
        :'lifetime_max_oon_member' => :'lifetime_Max_OON_Member',
        :'member_ded_oon' => :'member_Ded_OON',
        :'member_ded_ppo' => :'member_Ded_PPO',
        :'member_deductible' => :'member_Deductible',
        :'oo_p_max_mem' => :'ooP_Max_Mem',
        :'oo_p_max_net_mem' => :'ooP_Max_Net_Mem',
        :'oo_p_max_net_sub' => :'ooP_Max_Net_Sub',
        :'oo_p_max_oon_mem' => :'ooP_Max_OON_Mem',
        :'oo_p_max_oon_sub' => :'ooP_Max_OON_Sub',
        :'oo_p_max_sub' => :'ooP_Max_Sub',
        :'subscriber_ded_oon' => :'subscriber_Ded_OON',
        :'subscriber_ded_ppo' => :'subscriber_Ded_PPO',
        :'subscriber_deductible' => :'subscriber_Deductible',
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
        :'plan_id' => :'String',
        :'accum_name' => :'String',
        :'annual_max' => :'Float',
        :'annual_max_member' => :'Float',
        :'annual_max_net' => :'Float',
        :'annual_max_net_member' => :'Float',
        :'annual_max_oon' => :'Float',
        :'annual_max_oon_member' => :'Float',
        :'co_ins_max_mem' => :'Float',
        :'co_ins_max_net_mem' => :'Float',
        :'co_ins_max_net_sub' => :'Float',
        :'co_ins_max_oon_mem' => :'Float',
        :'co_ins_max_oon_sub' => :'Float',
        :'co_ins_max_sub' => :'Float',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'lifetime_max' => :'Float',
        :'lifetime_max_member' => :'Float',
        :'lifetime_max_net' => :'Float',
        :'lifetime_max_net_member' => :'Float',
        :'lifetime_max_oon' => :'Float',
        :'lifetime_max_oon_member' => :'Float',
        :'member_ded_oon' => :'Float',
        :'member_ded_ppo' => :'Float',
        :'member_deductible' => :'Float',
        :'oo_p_max_mem' => :'Float',
        :'oo_p_max_net_mem' => :'Float',
        :'oo_p_max_net_sub' => :'Float',
        :'oo_p_max_oon_mem' => :'Float',
        :'oo_p_max_oon_sub' => :'Float',
        :'oo_p_max_sub' => :'Float',
        :'subscriber_ded_oon' => :'Float',
        :'subscriber_ded_ppo' => :'Float',
        :'subscriber_deductible' => :'Float',
        :'update_date' => :'Time',
        :'update_user' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'annual_max',
        :'annual_max_member',
        :'annual_max_net',
        :'annual_max_net_member',
        :'annual_max_oon',
        :'annual_max_oon_member',
        :'co_ins_max_mem',
        :'co_ins_max_net_mem',
        :'co_ins_max_net_sub',
        :'co_ins_max_oon_mem',
        :'co_ins_max_oon_sub',
        :'co_ins_max_sub',
        :'entry_user',
        :'lifetime_max',
        :'lifetime_max_member',
        :'lifetime_max_net',
        :'lifetime_max_net_member',
        :'lifetime_max_oon',
        :'lifetime_max_oon_member',
        :'member_ded_oon',
        :'member_ded_ppo',
        :'member_deductible',
        :'oo_p_max_mem',
        :'oo_p_max_net_mem',
        :'oo_p_max_net_sub',
        :'oo_p_max_oon_mem',
        :'oo_p_max_oon_sub',
        :'oo_p_max_sub',
        :'subscriber_ded_oon',
        :'subscriber_ded_ppo',
        :'subscriber_deductible',
        :'update_user'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::PlanAddedAccum` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::PlanAddedAccum`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      else
        self.plan_id = nil
      end

      if attributes.key?(:'accum_name')
        self.accum_name = attributes[:'accum_name']
      else
        self.accum_name = nil
      end

      if attributes.key?(:'annual_max')
        self.annual_max = attributes[:'annual_max']
      end

      if attributes.key?(:'annual_max_member')
        self.annual_max_member = attributes[:'annual_max_member']
      end

      if attributes.key?(:'annual_max_net')
        self.annual_max_net = attributes[:'annual_max_net']
      end

      if attributes.key?(:'annual_max_net_member')
        self.annual_max_net_member = attributes[:'annual_max_net_member']
      end

      if attributes.key?(:'annual_max_oon')
        self.annual_max_oon = attributes[:'annual_max_oon']
      end

      if attributes.key?(:'annual_max_oon_member')
        self.annual_max_oon_member = attributes[:'annual_max_oon_member']
      end

      if attributes.key?(:'co_ins_max_mem')
        self.co_ins_max_mem = attributes[:'co_ins_max_mem']
      end

      if attributes.key?(:'co_ins_max_net_mem')
        self.co_ins_max_net_mem = attributes[:'co_ins_max_net_mem']
      end

      if attributes.key?(:'co_ins_max_net_sub')
        self.co_ins_max_net_sub = attributes[:'co_ins_max_net_sub']
      end

      if attributes.key?(:'co_ins_max_oon_mem')
        self.co_ins_max_oon_mem = attributes[:'co_ins_max_oon_mem']
      end

      if attributes.key?(:'co_ins_max_oon_sub')
        self.co_ins_max_oon_sub = attributes[:'co_ins_max_oon_sub']
      end

      if attributes.key?(:'co_ins_max_sub')
        self.co_ins_max_sub = attributes[:'co_ins_max_sub']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'lifetime_max')
        self.lifetime_max = attributes[:'lifetime_max']
      end

      if attributes.key?(:'lifetime_max_member')
        self.lifetime_max_member = attributes[:'lifetime_max_member']
      end

      if attributes.key?(:'lifetime_max_net')
        self.lifetime_max_net = attributes[:'lifetime_max_net']
      end

      if attributes.key?(:'lifetime_max_net_member')
        self.lifetime_max_net_member = attributes[:'lifetime_max_net_member']
      end

      if attributes.key?(:'lifetime_max_oon')
        self.lifetime_max_oon = attributes[:'lifetime_max_oon']
      end

      if attributes.key?(:'lifetime_max_oon_member')
        self.lifetime_max_oon_member = attributes[:'lifetime_max_oon_member']
      end

      if attributes.key?(:'member_ded_oon')
        self.member_ded_oon = attributes[:'member_ded_oon']
      end

      if attributes.key?(:'member_ded_ppo')
        self.member_ded_ppo = attributes[:'member_ded_ppo']
      end

      if attributes.key?(:'member_deductible')
        self.member_deductible = attributes[:'member_deductible']
      end

      if attributes.key?(:'oo_p_max_mem')
        self.oo_p_max_mem = attributes[:'oo_p_max_mem']
      end

      if attributes.key?(:'oo_p_max_net_mem')
        self.oo_p_max_net_mem = attributes[:'oo_p_max_net_mem']
      end

      if attributes.key?(:'oo_p_max_net_sub')
        self.oo_p_max_net_sub = attributes[:'oo_p_max_net_sub']
      end

      if attributes.key?(:'oo_p_max_oon_mem')
        self.oo_p_max_oon_mem = attributes[:'oo_p_max_oon_mem']
      end

      if attributes.key?(:'oo_p_max_oon_sub')
        self.oo_p_max_oon_sub = attributes[:'oo_p_max_oon_sub']
      end

      if attributes.key?(:'oo_p_max_sub')
        self.oo_p_max_sub = attributes[:'oo_p_max_sub']
      end

      if attributes.key?(:'subscriber_ded_oon')
        self.subscriber_ded_oon = attributes[:'subscriber_ded_oon']
      end

      if attributes.key?(:'subscriber_ded_ppo')
        self.subscriber_ded_ppo = attributes[:'subscriber_ded_ppo']
      end

      if attributes.key?(:'subscriber_deductible')
        self.subscriber_deductible = attributes[:'subscriber_deductible']
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
      if @plan_id.nil?
        invalid_properties.push('invalid value for "plan_id", plan_id cannot be nil.')
      end

      if @plan_id.to_s.length > 20
        invalid_properties.push('invalid value for "plan_id", the character length must be smaller than or equal to 20.')
      end

      if @plan_id.to_s.length < 1
        invalid_properties.push('invalid value for "plan_id", the character length must be great than or equal to 1.')
      end

      if @accum_name.nil?
        invalid_properties.push('invalid value for "accum_name", accum_name cannot be nil.')
      end

      if @accum_name.to_s.length > 10
        invalid_properties.push('invalid value for "accum_name", the character length must be smaller than or equal to 10.')
      end

      if @accum_name.to_s.length < 1
        invalid_properties.push('invalid value for "accum_name", the character length must be great than or equal to 1.')
      end

      if !@entry_user.nil? && @entry_user.to_s.length > 20
        invalid_properties.push('invalid value for "entry_user", the character length must be smaller than or equal to 20.')
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
      return false if @plan_id.nil?
      return false if @plan_id.to_s.length > 20
      return false if @plan_id.to_s.length < 1
      return false if @accum_name.nil?
      return false if @accum_name.to_s.length > 10
      return false if @accum_name.to_s.length < 1
      return false if !@entry_user.nil? && @entry_user.to_s.length > 20
      return false if !@update_user.nil? && @update_user.to_s.length > 20
      true
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
    # @param [Object] accum_name Value to be assigned
    def accum_name=(accum_name)
      if accum_name.nil?
        fail ArgumentError, 'accum_name cannot be nil'
      end

      if accum_name.to_s.length > 10
        fail ArgumentError, 'invalid value for "accum_name", the character length must be smaller than or equal to 10.'
      end

      if accum_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "accum_name", the character length must be great than or equal to 1.'
      end

      @accum_name = accum_name
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          plan_id == o.plan_id &&
          accum_name == o.accum_name &&
          annual_max == o.annual_max &&
          annual_max_member == o.annual_max_member &&
          annual_max_net == o.annual_max_net &&
          annual_max_net_member == o.annual_max_net_member &&
          annual_max_oon == o.annual_max_oon &&
          annual_max_oon_member == o.annual_max_oon_member &&
          co_ins_max_mem == o.co_ins_max_mem &&
          co_ins_max_net_mem == o.co_ins_max_net_mem &&
          co_ins_max_net_sub == o.co_ins_max_net_sub &&
          co_ins_max_oon_mem == o.co_ins_max_oon_mem &&
          co_ins_max_oon_sub == o.co_ins_max_oon_sub &&
          co_ins_max_sub == o.co_ins_max_sub &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          lifetime_max == o.lifetime_max &&
          lifetime_max_member == o.lifetime_max_member &&
          lifetime_max_net == o.lifetime_max_net &&
          lifetime_max_net_member == o.lifetime_max_net_member &&
          lifetime_max_oon == o.lifetime_max_oon &&
          lifetime_max_oon_member == o.lifetime_max_oon_member &&
          member_ded_oon == o.member_ded_oon &&
          member_ded_ppo == o.member_ded_ppo &&
          member_deductible == o.member_deductible &&
          oo_p_max_mem == o.oo_p_max_mem &&
          oo_p_max_net_mem == o.oo_p_max_net_mem &&
          oo_p_max_net_sub == o.oo_p_max_net_sub &&
          oo_p_max_oon_mem == o.oo_p_max_oon_mem &&
          oo_p_max_oon_sub == o.oo_p_max_oon_sub &&
          oo_p_max_sub == o.oo_p_max_sub &&
          subscriber_ded_oon == o.subscriber_ded_oon &&
          subscriber_ded_ppo == o.subscriber_ded_ppo &&
          subscriber_deductible == o.subscriber_deductible &&
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
      [plan_id, accum_name, annual_max, annual_max_member, annual_max_net, annual_max_net_member, annual_max_oon, annual_max_oon_member, co_ins_max_mem, co_ins_max_net_mem, co_ins_max_net_sub, co_ins_max_oon_mem, co_ins_max_oon_sub, co_ins_max_sub, entry_date, entry_user, lifetime_max, lifetime_max_member, lifetime_max_net, lifetime_max_net_member, lifetime_max_oon, lifetime_max_oon_member, member_ded_oon, member_ded_ppo, member_deductible, oo_p_max_mem, oo_p_max_net_mem, oo_p_max_net_sub, oo_p_max_oon_mem, oo_p_max_oon_sub, oo_p_max_sub, subscriber_ded_oon, subscriber_ded_ppo, subscriber_deductible, update_date, update_user].hash
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
