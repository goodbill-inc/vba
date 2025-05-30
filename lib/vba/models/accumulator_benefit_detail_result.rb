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
  class AccumulatorBenefitDetailResult
    attr_accessor :plan_id

    attr_accessor :oo_p_calc_option

    attr_accessor :member_deductible

    attr_accessor :member_ded_ppo

    attr_accessor :member_ded_oon

    attr_accessor :mem_ded_credit

    attr_accessor :mem_ded_credit_ppo

    attr_accessor :mem_ded_credit_oon

    attr_accessor :deductible_used

    attr_accessor :ded_ppo_used

    attr_accessor :deductible_used_oon

    attr_accessor :ded_credit_used

    attr_accessor :ded_credit_ppo_used

    attr_accessor :ded_credit_oon_used

    attr_accessor :subscriber_deductible

    attr_accessor :subscriber_ded_ppo

    attr_accessor :subscriber_ded_oon

    attr_accessor :sub_ded_credit

    attr_accessor :sub_ded_credit_ppo

    attr_accessor :sub_ded_credit_oon

    attr_accessor :fam_deductible_used

    attr_accessor :fam_ded_ppo_used

    attr_accessor :fam_deductible_used_oon

    attr_accessor :fam_ded_credit_used

    attr_accessor :fam_ded_credit_ppo_used

    attr_accessor :fam_ded_credit_oon_used

    attr_accessor :co_ins_max_mem

    attr_accessor :co_ins_max_net_mem

    attr_accessor :co_ins_max_oon_mem

    attr_accessor :co_ins_amt

    attr_accessor :co_ins_amt_net

    attr_accessor :co_ins_amt_oon

    attr_accessor :co_ins_max_sub

    attr_accessor :co_ins_max_net_sub

    attr_accessor :co_ins_max_oon_sub

    attr_accessor :fam_co_ins_amt

    attr_accessor :fam_co_ins_amt_net

    attr_accessor :fam_co_ins_amt_oon

    attr_accessor :oo_p_max_mem

    attr_accessor :oo_p_max_net_mem

    attr_accessor :oo_p_max_oon_mem

    attr_accessor :out_of_pocket

    attr_accessor :out_of_pocket_net

    attr_accessor :out_of_pocket_oon

    attr_accessor :oo_p_max_sub

    attr_accessor :oo_p_max_net_sub

    attr_accessor :oo_p_max_oon_sub

    attr_accessor :fam_out_of_pocket

    attr_accessor :fam_out_of_pocket_net

    attr_accessor :fam_out_of_pocket_oon

    attr_accessor :plan_year_paid

    attr_accessor :plan_year_max

    attr_accessor :lifetime_paid

    attr_accessor :lifetime_max

    attr_accessor :fam_plan_year_paid

    attr_accessor :plan_year_max_sub

    attr_accessor :fam_lifetime_paid

    attr_accessor :lifetime_max_sub

    attr_accessor :claim_count

    attr_accessor :service_count

    attr_accessor :visit

    attr_accessor :units

    attr_accessor :service_days

    attr_accessor :co_b_savings

    attr_accessor :co_b_savings_used

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'plan_id' => :'plan_ID',
        :'oo_p_calc_option' => :'ooP_Calc_Option',
        :'member_deductible' => :'member_Deductible',
        :'member_ded_ppo' => :'member_Ded_PPO',
        :'member_ded_oon' => :'member_Ded_OON',
        :'mem_ded_credit' => :'mem_Ded_Credit',
        :'mem_ded_credit_ppo' => :'mem_Ded_Credit_PPO',
        :'mem_ded_credit_oon' => :'mem_Ded_Credit_OON',
        :'deductible_used' => :'deductible_Used',
        :'ded_ppo_used' => :'ded_PPO_Used',
        :'deductible_used_oon' => :'deductible_Used_OON',
        :'ded_credit_used' => :'ded_Credit_Used',
        :'ded_credit_ppo_used' => :'ded_Credit_PPO_Used',
        :'ded_credit_oon_used' => :'ded_Credit_OON_Used',
        :'subscriber_deductible' => :'subscriber_Deductible',
        :'subscriber_ded_ppo' => :'subscriber_Ded_PPO',
        :'subscriber_ded_oon' => :'subscriber_Ded_OON',
        :'sub_ded_credit' => :'sub_Ded_Credit',
        :'sub_ded_credit_ppo' => :'sub_Ded_Credit_PPO',
        :'sub_ded_credit_oon' => :'sub_Ded_Credit_OON',
        :'fam_deductible_used' => :'fam_Deductible_Used',
        :'fam_ded_ppo_used' => :'fam_Ded_PPO_Used',
        :'fam_deductible_used_oon' => :'fam_Deductible_Used_OON',
        :'fam_ded_credit_used' => :'fam_Ded_Credit_Used',
        :'fam_ded_credit_ppo_used' => :'fam_Ded_Credit_PPO_Used',
        :'fam_ded_credit_oon_used' => :'fam_Ded_Credit_OON_Used',
        :'co_ins_max_mem' => :'coIns_Max_Mem',
        :'co_ins_max_net_mem' => :'coIns_Max_Net_Mem',
        :'co_ins_max_oon_mem' => :'coIns_Max_OON_Mem',
        :'co_ins_amt' => :'coIns_Amt',
        :'co_ins_amt_net' => :'coIns_Amt_Net',
        :'co_ins_amt_oon' => :'coIns_Amt_OON',
        :'co_ins_max_sub' => :'coIns_Max_Sub',
        :'co_ins_max_net_sub' => :'coIns_Max_Net_Sub',
        :'co_ins_max_oon_sub' => :'coIns_Max_OON_Sub',
        :'fam_co_ins_amt' => :'fam_CoIns_Amt',
        :'fam_co_ins_amt_net' => :'fam_CoIns_Amt_Net',
        :'fam_co_ins_amt_oon' => :'fam_CoIns_Amt_OON',
        :'oo_p_max_mem' => :'ooP_Max_Mem',
        :'oo_p_max_net_mem' => :'ooP_Max_Net_Mem',
        :'oo_p_max_oon_mem' => :'ooP_Max_OON_Mem',
        :'out_of_pocket' => :'out_Of_Pocket',
        :'out_of_pocket_net' => :'out_Of_Pocket_Net',
        :'out_of_pocket_oon' => :'out_Of_Pocket_OON',
        :'oo_p_max_sub' => :'ooP_Max_Sub',
        :'oo_p_max_net_sub' => :'ooP_Max_Net_Sub',
        :'oo_p_max_oon_sub' => :'ooP_Max_OON_Sub',
        :'fam_out_of_pocket' => :'fam_Out_Of_Pocket',
        :'fam_out_of_pocket_net' => :'fam_Out_Of_Pocket_Net',
        :'fam_out_of_pocket_oon' => :'fam_Out_Of_Pocket_OON',
        :'plan_year_paid' => :'plan_Year_Paid',
        :'plan_year_max' => :'plan_Year_Max',
        :'lifetime_paid' => :'lifetime_Paid',
        :'lifetime_max' => :'lifetime_Max',
        :'fam_plan_year_paid' => :'fam_Plan_Year_Paid',
        :'plan_year_max_sub' => :'plan_Year_Max_Sub',
        :'fam_lifetime_paid' => :'fam_Lifetime_Paid',
        :'lifetime_max_sub' => :'lifetime_Max_Sub',
        :'claim_count' => :'claimCount',
        :'service_count' => :'serviceCount',
        :'visit' => :'visit',
        :'units' => :'units',
        :'service_days' => :'service_Days',
        :'co_b_savings' => :'coB_Savings',
        :'co_b_savings_used' => :'coB_Savings_Used'
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
        :'oo_p_calc_option' => :'String',
        :'member_deductible' => :'Float',
        :'member_ded_ppo' => :'Float',
        :'member_ded_oon' => :'Float',
        :'mem_ded_credit' => :'Float',
        :'mem_ded_credit_ppo' => :'Float',
        :'mem_ded_credit_oon' => :'Float',
        :'deductible_used' => :'Float',
        :'ded_ppo_used' => :'Float',
        :'deductible_used_oon' => :'Float',
        :'ded_credit_used' => :'Float',
        :'ded_credit_ppo_used' => :'Float',
        :'ded_credit_oon_used' => :'Float',
        :'subscriber_deductible' => :'Float',
        :'subscriber_ded_ppo' => :'Float',
        :'subscriber_ded_oon' => :'Float',
        :'sub_ded_credit' => :'Float',
        :'sub_ded_credit_ppo' => :'Float',
        :'sub_ded_credit_oon' => :'Float',
        :'fam_deductible_used' => :'Float',
        :'fam_ded_ppo_used' => :'Float',
        :'fam_deductible_used_oon' => :'Float',
        :'fam_ded_credit_used' => :'Float',
        :'fam_ded_credit_ppo_used' => :'Float',
        :'fam_ded_credit_oon_used' => :'Float',
        :'co_ins_max_mem' => :'Float',
        :'co_ins_max_net_mem' => :'Float',
        :'co_ins_max_oon_mem' => :'Float',
        :'co_ins_amt' => :'Float',
        :'co_ins_amt_net' => :'Float',
        :'co_ins_amt_oon' => :'Float',
        :'co_ins_max_sub' => :'Float',
        :'co_ins_max_net_sub' => :'Float',
        :'co_ins_max_oon_sub' => :'Float',
        :'fam_co_ins_amt' => :'Float',
        :'fam_co_ins_amt_net' => :'Float',
        :'fam_co_ins_amt_oon' => :'Float',
        :'oo_p_max_mem' => :'Float',
        :'oo_p_max_net_mem' => :'Float',
        :'oo_p_max_oon_mem' => :'Float',
        :'out_of_pocket' => :'Float',
        :'out_of_pocket_net' => :'Float',
        :'out_of_pocket_oon' => :'Float',
        :'oo_p_max_sub' => :'Float',
        :'oo_p_max_net_sub' => :'Float',
        :'oo_p_max_oon_sub' => :'Float',
        :'fam_out_of_pocket' => :'Float',
        :'fam_out_of_pocket_net' => :'Float',
        :'fam_out_of_pocket_oon' => :'Float',
        :'plan_year_paid' => :'Float',
        :'plan_year_max' => :'Float',
        :'lifetime_paid' => :'Float',
        :'lifetime_max' => :'Float',
        :'fam_plan_year_paid' => :'Float',
        :'plan_year_max_sub' => :'Float',
        :'fam_lifetime_paid' => :'Float',
        :'lifetime_max_sub' => :'Float',
        :'claim_count' => :'Integer',
        :'service_count' => :'Integer',
        :'visit' => :'Integer',
        :'units' => :'Float',
        :'service_days' => :'Integer',
        :'co_b_savings' => :'Float',
        :'co_b_savings_used' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'plan_id',
        :'oo_p_calc_option',
        :'member_deductible',
        :'member_ded_ppo',
        :'member_ded_oon',
        :'mem_ded_credit',
        :'mem_ded_credit_ppo',
        :'mem_ded_credit_oon',
        :'deductible_used',
        :'ded_ppo_used',
        :'deductible_used_oon',
        :'ded_credit_used',
        :'ded_credit_ppo_used',
        :'ded_credit_oon_used',
        :'subscriber_deductible',
        :'subscriber_ded_ppo',
        :'subscriber_ded_oon',
        :'sub_ded_credit',
        :'sub_ded_credit_ppo',
        :'sub_ded_credit_oon',
        :'fam_deductible_used',
        :'fam_ded_ppo_used',
        :'fam_deductible_used_oon',
        :'fam_ded_credit_used',
        :'fam_ded_credit_ppo_used',
        :'fam_ded_credit_oon_used',
        :'co_ins_max_mem',
        :'co_ins_max_net_mem',
        :'co_ins_max_oon_mem',
        :'co_ins_amt',
        :'co_ins_amt_net',
        :'co_ins_amt_oon',
        :'co_ins_max_sub',
        :'co_ins_max_net_sub',
        :'co_ins_max_oon_sub',
        :'fam_co_ins_amt',
        :'fam_co_ins_amt_net',
        :'fam_co_ins_amt_oon',
        :'oo_p_max_mem',
        :'oo_p_max_net_mem',
        :'oo_p_max_oon_mem',
        :'out_of_pocket',
        :'out_of_pocket_net',
        :'out_of_pocket_oon',
        :'oo_p_max_sub',
        :'oo_p_max_net_sub',
        :'oo_p_max_oon_sub',
        :'fam_out_of_pocket',
        :'fam_out_of_pocket_net',
        :'fam_out_of_pocket_oon',
        :'plan_year_paid',
        :'plan_year_max',
        :'lifetime_paid',
        :'lifetime_max',
        :'fam_plan_year_paid',
        :'plan_year_max_sub',
        :'fam_lifetime_paid',
        :'lifetime_max_sub',
        :'claim_count',
        :'service_count',
        :'visit',
        :'units',
        :'service_days',
        :'co_b_savings',
        :'co_b_savings_used'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::AccumulatorBenefitDetailResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::AccumulatorBenefitDetailResult`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      end

      if attributes.key?(:'oo_p_calc_option')
        self.oo_p_calc_option = attributes[:'oo_p_calc_option']
      end

      if attributes.key?(:'member_deductible')
        self.member_deductible = attributes[:'member_deductible']
      end

      if attributes.key?(:'member_ded_ppo')
        self.member_ded_ppo = attributes[:'member_ded_ppo']
      end

      if attributes.key?(:'member_ded_oon')
        self.member_ded_oon = attributes[:'member_ded_oon']
      end

      if attributes.key?(:'mem_ded_credit')
        self.mem_ded_credit = attributes[:'mem_ded_credit']
      end

      if attributes.key?(:'mem_ded_credit_ppo')
        self.mem_ded_credit_ppo = attributes[:'mem_ded_credit_ppo']
      end

      if attributes.key?(:'mem_ded_credit_oon')
        self.mem_ded_credit_oon = attributes[:'mem_ded_credit_oon']
      end

      if attributes.key?(:'deductible_used')
        self.deductible_used = attributes[:'deductible_used']
      end

      if attributes.key?(:'ded_ppo_used')
        self.ded_ppo_used = attributes[:'ded_ppo_used']
      end

      if attributes.key?(:'deductible_used_oon')
        self.deductible_used_oon = attributes[:'deductible_used_oon']
      end

      if attributes.key?(:'ded_credit_used')
        self.ded_credit_used = attributes[:'ded_credit_used']
      end

      if attributes.key?(:'ded_credit_ppo_used')
        self.ded_credit_ppo_used = attributes[:'ded_credit_ppo_used']
      end

      if attributes.key?(:'ded_credit_oon_used')
        self.ded_credit_oon_used = attributes[:'ded_credit_oon_used']
      end

      if attributes.key?(:'subscriber_deductible')
        self.subscriber_deductible = attributes[:'subscriber_deductible']
      end

      if attributes.key?(:'subscriber_ded_ppo')
        self.subscriber_ded_ppo = attributes[:'subscriber_ded_ppo']
      end

      if attributes.key?(:'subscriber_ded_oon')
        self.subscriber_ded_oon = attributes[:'subscriber_ded_oon']
      end

      if attributes.key?(:'sub_ded_credit')
        self.sub_ded_credit = attributes[:'sub_ded_credit']
      end

      if attributes.key?(:'sub_ded_credit_ppo')
        self.sub_ded_credit_ppo = attributes[:'sub_ded_credit_ppo']
      end

      if attributes.key?(:'sub_ded_credit_oon')
        self.sub_ded_credit_oon = attributes[:'sub_ded_credit_oon']
      end

      if attributes.key?(:'fam_deductible_used')
        self.fam_deductible_used = attributes[:'fam_deductible_used']
      end

      if attributes.key?(:'fam_ded_ppo_used')
        self.fam_ded_ppo_used = attributes[:'fam_ded_ppo_used']
      end

      if attributes.key?(:'fam_deductible_used_oon')
        self.fam_deductible_used_oon = attributes[:'fam_deductible_used_oon']
      end

      if attributes.key?(:'fam_ded_credit_used')
        self.fam_ded_credit_used = attributes[:'fam_ded_credit_used']
      end

      if attributes.key?(:'fam_ded_credit_ppo_used')
        self.fam_ded_credit_ppo_used = attributes[:'fam_ded_credit_ppo_used']
      end

      if attributes.key?(:'fam_ded_credit_oon_used')
        self.fam_ded_credit_oon_used = attributes[:'fam_ded_credit_oon_used']
      end

      if attributes.key?(:'co_ins_max_mem')
        self.co_ins_max_mem = attributes[:'co_ins_max_mem']
      end

      if attributes.key?(:'co_ins_max_net_mem')
        self.co_ins_max_net_mem = attributes[:'co_ins_max_net_mem']
      end

      if attributes.key?(:'co_ins_max_oon_mem')
        self.co_ins_max_oon_mem = attributes[:'co_ins_max_oon_mem']
      end

      if attributes.key?(:'co_ins_amt')
        self.co_ins_amt = attributes[:'co_ins_amt']
      end

      if attributes.key?(:'co_ins_amt_net')
        self.co_ins_amt_net = attributes[:'co_ins_amt_net']
      end

      if attributes.key?(:'co_ins_amt_oon')
        self.co_ins_amt_oon = attributes[:'co_ins_amt_oon']
      end

      if attributes.key?(:'co_ins_max_sub')
        self.co_ins_max_sub = attributes[:'co_ins_max_sub']
      end

      if attributes.key?(:'co_ins_max_net_sub')
        self.co_ins_max_net_sub = attributes[:'co_ins_max_net_sub']
      end

      if attributes.key?(:'co_ins_max_oon_sub')
        self.co_ins_max_oon_sub = attributes[:'co_ins_max_oon_sub']
      end

      if attributes.key?(:'fam_co_ins_amt')
        self.fam_co_ins_amt = attributes[:'fam_co_ins_amt']
      end

      if attributes.key?(:'fam_co_ins_amt_net')
        self.fam_co_ins_amt_net = attributes[:'fam_co_ins_amt_net']
      end

      if attributes.key?(:'fam_co_ins_amt_oon')
        self.fam_co_ins_amt_oon = attributes[:'fam_co_ins_amt_oon']
      end

      if attributes.key?(:'oo_p_max_mem')
        self.oo_p_max_mem = attributes[:'oo_p_max_mem']
      end

      if attributes.key?(:'oo_p_max_net_mem')
        self.oo_p_max_net_mem = attributes[:'oo_p_max_net_mem']
      end

      if attributes.key?(:'oo_p_max_oon_mem')
        self.oo_p_max_oon_mem = attributes[:'oo_p_max_oon_mem']
      end

      if attributes.key?(:'out_of_pocket')
        self.out_of_pocket = attributes[:'out_of_pocket']
      end

      if attributes.key?(:'out_of_pocket_net')
        self.out_of_pocket_net = attributes[:'out_of_pocket_net']
      end

      if attributes.key?(:'out_of_pocket_oon')
        self.out_of_pocket_oon = attributes[:'out_of_pocket_oon']
      end

      if attributes.key?(:'oo_p_max_sub')
        self.oo_p_max_sub = attributes[:'oo_p_max_sub']
      end

      if attributes.key?(:'oo_p_max_net_sub')
        self.oo_p_max_net_sub = attributes[:'oo_p_max_net_sub']
      end

      if attributes.key?(:'oo_p_max_oon_sub')
        self.oo_p_max_oon_sub = attributes[:'oo_p_max_oon_sub']
      end

      if attributes.key?(:'fam_out_of_pocket')
        self.fam_out_of_pocket = attributes[:'fam_out_of_pocket']
      end

      if attributes.key?(:'fam_out_of_pocket_net')
        self.fam_out_of_pocket_net = attributes[:'fam_out_of_pocket_net']
      end

      if attributes.key?(:'fam_out_of_pocket_oon')
        self.fam_out_of_pocket_oon = attributes[:'fam_out_of_pocket_oon']
      end

      if attributes.key?(:'plan_year_paid')
        self.plan_year_paid = attributes[:'plan_year_paid']
      end

      if attributes.key?(:'plan_year_max')
        self.plan_year_max = attributes[:'plan_year_max']
      end

      if attributes.key?(:'lifetime_paid')
        self.lifetime_paid = attributes[:'lifetime_paid']
      end

      if attributes.key?(:'lifetime_max')
        self.lifetime_max = attributes[:'lifetime_max']
      end

      if attributes.key?(:'fam_plan_year_paid')
        self.fam_plan_year_paid = attributes[:'fam_plan_year_paid']
      end

      if attributes.key?(:'plan_year_max_sub')
        self.plan_year_max_sub = attributes[:'plan_year_max_sub']
      end

      if attributes.key?(:'fam_lifetime_paid')
        self.fam_lifetime_paid = attributes[:'fam_lifetime_paid']
      end

      if attributes.key?(:'lifetime_max_sub')
        self.lifetime_max_sub = attributes[:'lifetime_max_sub']
      end

      if attributes.key?(:'claim_count')
        self.claim_count = attributes[:'claim_count']
      end

      if attributes.key?(:'service_count')
        self.service_count = attributes[:'service_count']
      end

      if attributes.key?(:'visit')
        self.visit = attributes[:'visit']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'service_days')
        self.service_days = attributes[:'service_days']
      end

      if attributes.key?(:'co_b_savings')
        self.co_b_savings = attributes[:'co_b_savings']
      end

      if attributes.key?(:'co_b_savings_used')
        self.co_b_savings_used = attributes[:'co_b_savings_used']
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
          plan_id == o.plan_id &&
          oo_p_calc_option == o.oo_p_calc_option &&
          member_deductible == o.member_deductible &&
          member_ded_ppo == o.member_ded_ppo &&
          member_ded_oon == o.member_ded_oon &&
          mem_ded_credit == o.mem_ded_credit &&
          mem_ded_credit_ppo == o.mem_ded_credit_ppo &&
          mem_ded_credit_oon == o.mem_ded_credit_oon &&
          deductible_used == o.deductible_used &&
          ded_ppo_used == o.ded_ppo_used &&
          deductible_used_oon == o.deductible_used_oon &&
          ded_credit_used == o.ded_credit_used &&
          ded_credit_ppo_used == o.ded_credit_ppo_used &&
          ded_credit_oon_used == o.ded_credit_oon_used &&
          subscriber_deductible == o.subscriber_deductible &&
          subscriber_ded_ppo == o.subscriber_ded_ppo &&
          subscriber_ded_oon == o.subscriber_ded_oon &&
          sub_ded_credit == o.sub_ded_credit &&
          sub_ded_credit_ppo == o.sub_ded_credit_ppo &&
          sub_ded_credit_oon == o.sub_ded_credit_oon &&
          fam_deductible_used == o.fam_deductible_used &&
          fam_ded_ppo_used == o.fam_ded_ppo_used &&
          fam_deductible_used_oon == o.fam_deductible_used_oon &&
          fam_ded_credit_used == o.fam_ded_credit_used &&
          fam_ded_credit_ppo_used == o.fam_ded_credit_ppo_used &&
          fam_ded_credit_oon_used == o.fam_ded_credit_oon_used &&
          co_ins_max_mem == o.co_ins_max_mem &&
          co_ins_max_net_mem == o.co_ins_max_net_mem &&
          co_ins_max_oon_mem == o.co_ins_max_oon_mem &&
          co_ins_amt == o.co_ins_amt &&
          co_ins_amt_net == o.co_ins_amt_net &&
          co_ins_amt_oon == o.co_ins_amt_oon &&
          co_ins_max_sub == o.co_ins_max_sub &&
          co_ins_max_net_sub == o.co_ins_max_net_sub &&
          co_ins_max_oon_sub == o.co_ins_max_oon_sub &&
          fam_co_ins_amt == o.fam_co_ins_amt &&
          fam_co_ins_amt_net == o.fam_co_ins_amt_net &&
          fam_co_ins_amt_oon == o.fam_co_ins_amt_oon &&
          oo_p_max_mem == o.oo_p_max_mem &&
          oo_p_max_net_mem == o.oo_p_max_net_mem &&
          oo_p_max_oon_mem == o.oo_p_max_oon_mem &&
          out_of_pocket == o.out_of_pocket &&
          out_of_pocket_net == o.out_of_pocket_net &&
          out_of_pocket_oon == o.out_of_pocket_oon &&
          oo_p_max_sub == o.oo_p_max_sub &&
          oo_p_max_net_sub == o.oo_p_max_net_sub &&
          oo_p_max_oon_sub == o.oo_p_max_oon_sub &&
          fam_out_of_pocket == o.fam_out_of_pocket &&
          fam_out_of_pocket_net == o.fam_out_of_pocket_net &&
          fam_out_of_pocket_oon == o.fam_out_of_pocket_oon &&
          plan_year_paid == o.plan_year_paid &&
          plan_year_max == o.plan_year_max &&
          lifetime_paid == o.lifetime_paid &&
          lifetime_max == o.lifetime_max &&
          fam_plan_year_paid == o.fam_plan_year_paid &&
          plan_year_max_sub == o.plan_year_max_sub &&
          fam_lifetime_paid == o.fam_lifetime_paid &&
          lifetime_max_sub == o.lifetime_max_sub &&
          claim_count == o.claim_count &&
          service_count == o.service_count &&
          visit == o.visit &&
          units == o.units &&
          service_days == o.service_days &&
          co_b_savings == o.co_b_savings &&
          co_b_savings_used == o.co_b_savings_used
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [plan_id, oo_p_calc_option, member_deductible, member_ded_ppo, member_ded_oon, mem_ded_credit, mem_ded_credit_ppo, mem_ded_credit_oon, deductible_used, ded_ppo_used, deductible_used_oon, ded_credit_used, ded_credit_ppo_used, ded_credit_oon_used, subscriber_deductible, subscriber_ded_ppo, subscriber_ded_oon, sub_ded_credit, sub_ded_credit_ppo, sub_ded_credit_oon, fam_deductible_used, fam_ded_ppo_used, fam_deductible_used_oon, fam_ded_credit_used, fam_ded_credit_ppo_used, fam_ded_credit_oon_used, co_ins_max_mem, co_ins_max_net_mem, co_ins_max_oon_mem, co_ins_amt, co_ins_amt_net, co_ins_amt_oon, co_ins_max_sub, co_ins_max_net_sub, co_ins_max_oon_sub, fam_co_ins_amt, fam_co_ins_amt_net, fam_co_ins_amt_oon, oo_p_max_mem, oo_p_max_net_mem, oo_p_max_oon_mem, out_of_pocket, out_of_pocket_net, out_of_pocket_oon, oo_p_max_sub, oo_p_max_net_sub, oo_p_max_oon_sub, fam_out_of_pocket, fam_out_of_pocket_net, fam_out_of_pocket_oon, plan_year_paid, plan_year_max, lifetime_paid, lifetime_max, fam_plan_year_paid, plan_year_max_sub, fam_lifetime_paid, lifetime_max_sub, claim_count, service_count, visit, units, service_days, co_b_savings, co_b_savings_used].hash
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
