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
  class VBACDCMembers
    attr_accessor :subscriber_id

    attr_accessor :member_seq

    attr_accessor :last_name

    attr_accessor :first_name

    attr_accessor :relationship

    attr_accessor :birth_date

    attr_accessor :date_enrolled

    attr_accessor :disenroll_date

    attr_accessor :sex

    attr_accessor :adult_child

    attr_accessor :other_insurance

    attr_accessor :adult_dependent

    attr_accessor :notes

    attr_accessor :entry_date

    attr_accessor :entry_user

    attr_accessor :update_date

    attr_accessor :update_user

    attr_accessor :alternate_id

    attr_accessor :vi_p_flag

    attr_accessor :pend_flag

    attr_accessor :pend_ex_code

    attr_accessor :other_name

    attr_accessor :pre_exist

    attr_accessor :pre_exist_end

    attr_accessor :pre_exist_ex_code

    attr_accessor :student

    attr_accessor :date_of_death

    attr_accessor :marital_status

    attr_accessor :ethnicity_code

    attr_accessor :middle_name

    attr_accessor :name_suffix

    attr_accessor :salutation

    attr_accessor :ssn

    attr_accessor :unique_id

    attr_accessor :access_code

    attr_accessor :student_end

    attr_accessor :adult_dependent_end

    attr_accessor :height

    attr_accessor :weight

    attr_accessor :continue_coverage

    attr_accessor :continue_coverage_ex_code

    attr_accessor :continue_coverage_end_date

    attr_accessor :credible_coverage

    attr_accessor :coverage_type

    attr_accessor :use_member_plan_year

    attr_accessor :plan_year_frequency

    attr_accessor :plan_year_frequency_type

    attr_accessor :creditable_coverage_start

    attr_accessor :creditable_coverage_end

    attr_accessor :initial_volume_salary_pct

    attr_accessor :initial_volume

    attr_accessor :smoker

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subscriber_id' => :'subscriber_ID',
        :'member_seq' => :'member_Seq',
        :'last_name' => :'last_Name',
        :'first_name' => :'first_Name',
        :'relationship' => :'relationship',
        :'birth_date' => :'birth_Date',
        :'date_enrolled' => :'date_Enrolled',
        :'disenroll_date' => :'disenroll_Date',
        :'sex' => :'sex',
        :'adult_child' => :'adult_Child',
        :'other_insurance' => :'other_Insurance',
        :'adult_dependent' => :'adult_Dependent',
        :'notes' => :'notes',
        :'entry_date' => :'entry_Date',
        :'entry_user' => :'entry_User',
        :'update_date' => :'update_Date',
        :'update_user' => :'update_User',
        :'alternate_id' => :'alternate_ID',
        :'vi_p_flag' => :'viP_Flag',
        :'pend_flag' => :'pend_Flag',
        :'pend_ex_code' => :'pend_Ex_Code',
        :'other_name' => :'other_Name',
        :'pre_exist' => :'pre_Exist',
        :'pre_exist_end' => :'pre_Exist_End',
        :'pre_exist_ex_code' => :'pre_Exist_Ex_Code',
        :'student' => :'student',
        :'date_of_death' => :'date_Of_Death',
        :'marital_status' => :'marital_Status',
        :'ethnicity_code' => :'ethnicity_Code',
        :'middle_name' => :'middle_Name',
        :'name_suffix' => :'name_Suffix',
        :'salutation' => :'salutation',
        :'ssn' => :'ssn',
        :'unique_id' => :'unique_ID',
        :'access_code' => :'access_Code',
        :'student_end' => :'student_End',
        :'adult_dependent_end' => :'adult_Dependent_End',
        :'height' => :'height',
        :'weight' => :'weight',
        :'continue_coverage' => :'continue_Coverage',
        :'continue_coverage_ex_code' => :'continue_Coverage_Ex_Code',
        :'continue_coverage_end_date' => :'continue_Coverage_End_Date',
        :'credible_coverage' => :'credible_Coverage',
        :'coverage_type' => :'coverage_Type',
        :'use_member_plan_year' => :'use_Member_Plan_Year',
        :'plan_year_frequency' => :'plan_Year_Frequency',
        :'plan_year_frequency_type' => :'plan_Year_Frequency_Type',
        :'creditable_coverage_start' => :'creditable_Coverage_Start',
        :'creditable_coverage_end' => :'creditable_Coverage_End',
        :'initial_volume_salary_pct' => :'initial_Volume_Salary_Pct',
        :'initial_volume' => :'initial_Volume',
        :'smoker' => :'smoker'
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
        :'subscriber_id' => :'String',
        :'member_seq' => :'String',
        :'last_name' => :'String',
        :'first_name' => :'String',
        :'relationship' => :'String',
        :'birth_date' => :'Time',
        :'date_enrolled' => :'Time',
        :'disenroll_date' => :'Time',
        :'sex' => :'String',
        :'adult_child' => :'String',
        :'other_insurance' => :'Boolean',
        :'adult_dependent' => :'Boolean',
        :'notes' => :'String',
        :'entry_date' => :'Time',
        :'entry_user' => :'String',
        :'update_date' => :'Time',
        :'update_user' => :'String',
        :'alternate_id' => :'String',
        :'vi_p_flag' => :'String',
        :'pend_flag' => :'String',
        :'pend_ex_code' => :'String',
        :'other_name' => :'String',
        :'pre_exist' => :'String',
        :'pre_exist_end' => :'Time',
        :'pre_exist_ex_code' => :'String',
        :'student' => :'String',
        :'date_of_death' => :'Time',
        :'marital_status' => :'String',
        :'ethnicity_code' => :'String',
        :'middle_name' => :'String',
        :'name_suffix' => :'String',
        :'salutation' => :'String',
        :'ssn' => :'String',
        :'unique_id' => :'String',
        :'access_code' => :'String',
        :'student_end' => :'Time',
        :'adult_dependent_end' => :'Time',
        :'height' => :'Integer',
        :'weight' => :'Integer',
        :'continue_coverage' => :'Boolean',
        :'continue_coverage_ex_code' => :'String',
        :'continue_coverage_end_date' => :'Time',
        :'credible_coverage' => :'Integer',
        :'coverage_type' => :'String',
        :'use_member_plan_year' => :'Boolean',
        :'plan_year_frequency' => :'Integer',
        :'plan_year_frequency_type' => :'String',
        :'creditable_coverage_start' => :'Time',
        :'creditable_coverage_end' => :'Time',
        :'initial_volume_salary_pct' => :'Boolean',
        :'initial_volume' => :'Float',
        :'smoker' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'subscriber_id',
        :'member_seq',
        :'last_name',
        :'first_name',
        :'relationship',
        :'birth_date',
        :'date_enrolled',
        :'disenroll_date',
        :'sex',
        :'adult_child',
        :'other_insurance',
        :'adult_dependent',
        :'notes',
        :'entry_date',
        :'entry_user',
        :'update_date',
        :'update_user',
        :'alternate_id',
        :'vi_p_flag',
        :'pend_flag',
        :'pend_ex_code',
        :'other_name',
        :'pre_exist',
        :'pre_exist_end',
        :'pre_exist_ex_code',
        :'student',
        :'date_of_death',
        :'marital_status',
        :'ethnicity_code',
        :'middle_name',
        :'name_suffix',
        :'salutation',
        :'ssn',
        :'unique_id',
        :'access_code',
        :'student_end',
        :'adult_dependent_end',
        :'height',
        :'weight',
        :'continue_coverage',
        :'continue_coverage_ex_code',
        :'continue_coverage_end_date',
        :'credible_coverage',
        :'coverage_type',
        :'use_member_plan_year',
        :'plan_year_frequency',
        :'plan_year_frequency_type',
        :'creditable_coverage_start',
        :'creditable_coverage_end',
        :'initial_volume_salary_pct',
        :'initial_volume',
        :'smoker'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vba::VBACDCMembers` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vba::VBACDCMembers`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'subscriber_id')
        self.subscriber_id = attributes[:'subscriber_id']
      end

      if attributes.key?(:'member_seq')
        self.member_seq = attributes[:'member_seq']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'relationship')
        self.relationship = attributes[:'relationship']
      end

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'date_enrolled')
        self.date_enrolled = attributes[:'date_enrolled']
      end

      if attributes.key?(:'disenroll_date')
        self.disenroll_date = attributes[:'disenroll_date']
      end

      if attributes.key?(:'sex')
        self.sex = attributes[:'sex']
      end

      if attributes.key?(:'adult_child')
        self.adult_child = attributes[:'adult_child']
      end

      if attributes.key?(:'other_insurance')
        self.other_insurance = attributes[:'other_insurance']
      end

      if attributes.key?(:'adult_dependent')
        self.adult_dependent = attributes[:'adult_dependent']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'entry_date')
        self.entry_date = attributes[:'entry_date']
      end

      if attributes.key?(:'entry_user')
        self.entry_user = attributes[:'entry_user']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'update_user')
        self.update_user = attributes[:'update_user']
      end

      if attributes.key?(:'alternate_id')
        self.alternate_id = attributes[:'alternate_id']
      end

      if attributes.key?(:'vi_p_flag')
        self.vi_p_flag = attributes[:'vi_p_flag']
      end

      if attributes.key?(:'pend_flag')
        self.pend_flag = attributes[:'pend_flag']
      end

      if attributes.key?(:'pend_ex_code')
        self.pend_ex_code = attributes[:'pend_ex_code']
      end

      if attributes.key?(:'other_name')
        self.other_name = attributes[:'other_name']
      end

      if attributes.key?(:'pre_exist')
        self.pre_exist = attributes[:'pre_exist']
      end

      if attributes.key?(:'pre_exist_end')
        self.pre_exist_end = attributes[:'pre_exist_end']
      end

      if attributes.key?(:'pre_exist_ex_code')
        self.pre_exist_ex_code = attributes[:'pre_exist_ex_code']
      end

      if attributes.key?(:'student')
        self.student = attributes[:'student']
      end

      if attributes.key?(:'date_of_death')
        self.date_of_death = attributes[:'date_of_death']
      end

      if attributes.key?(:'marital_status')
        self.marital_status = attributes[:'marital_status']
      end

      if attributes.key?(:'ethnicity_code')
        self.ethnicity_code = attributes[:'ethnicity_code']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'name_suffix')
        self.name_suffix = attributes[:'name_suffix']
      end

      if attributes.key?(:'salutation')
        self.salutation = attributes[:'salutation']
      end

      if attributes.key?(:'ssn')
        self.ssn = attributes[:'ssn']
      end

      if attributes.key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end

      if attributes.key?(:'access_code')
        self.access_code = attributes[:'access_code']
      end

      if attributes.key?(:'student_end')
        self.student_end = attributes[:'student_end']
      end

      if attributes.key?(:'adult_dependent_end')
        self.adult_dependent_end = attributes[:'adult_dependent_end']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'continue_coverage')
        self.continue_coverage = attributes[:'continue_coverage']
      end

      if attributes.key?(:'continue_coverage_ex_code')
        self.continue_coverage_ex_code = attributes[:'continue_coverage_ex_code']
      end

      if attributes.key?(:'continue_coverage_end_date')
        self.continue_coverage_end_date = attributes[:'continue_coverage_end_date']
      end

      if attributes.key?(:'credible_coverage')
        self.credible_coverage = attributes[:'credible_coverage']
      end

      if attributes.key?(:'coverage_type')
        self.coverage_type = attributes[:'coverage_type']
      end

      if attributes.key?(:'use_member_plan_year')
        self.use_member_plan_year = attributes[:'use_member_plan_year']
      end

      if attributes.key?(:'plan_year_frequency')
        self.plan_year_frequency = attributes[:'plan_year_frequency']
      end

      if attributes.key?(:'plan_year_frequency_type')
        self.plan_year_frequency_type = attributes[:'plan_year_frequency_type']
      end

      if attributes.key?(:'creditable_coverage_start')
        self.creditable_coverage_start = attributes[:'creditable_coverage_start']
      end

      if attributes.key?(:'creditable_coverage_end')
        self.creditable_coverage_end = attributes[:'creditable_coverage_end']
      end

      if attributes.key?(:'initial_volume_salary_pct')
        self.initial_volume_salary_pct = attributes[:'initial_volume_salary_pct']
      end

      if attributes.key?(:'initial_volume')
        self.initial_volume = attributes[:'initial_volume']
      end

      if attributes.key?(:'smoker')
        self.smoker = attributes[:'smoker']
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
          subscriber_id == o.subscriber_id &&
          member_seq == o.member_seq &&
          last_name == o.last_name &&
          first_name == o.first_name &&
          relationship == o.relationship &&
          birth_date == o.birth_date &&
          date_enrolled == o.date_enrolled &&
          disenroll_date == o.disenroll_date &&
          sex == o.sex &&
          adult_child == o.adult_child &&
          other_insurance == o.other_insurance &&
          adult_dependent == o.adult_dependent &&
          notes == o.notes &&
          entry_date == o.entry_date &&
          entry_user == o.entry_user &&
          update_date == o.update_date &&
          update_user == o.update_user &&
          alternate_id == o.alternate_id &&
          vi_p_flag == o.vi_p_flag &&
          pend_flag == o.pend_flag &&
          pend_ex_code == o.pend_ex_code &&
          other_name == o.other_name &&
          pre_exist == o.pre_exist &&
          pre_exist_end == o.pre_exist_end &&
          pre_exist_ex_code == o.pre_exist_ex_code &&
          student == o.student &&
          date_of_death == o.date_of_death &&
          marital_status == o.marital_status &&
          ethnicity_code == o.ethnicity_code &&
          middle_name == o.middle_name &&
          name_suffix == o.name_suffix &&
          salutation == o.salutation &&
          ssn == o.ssn &&
          unique_id == o.unique_id &&
          access_code == o.access_code &&
          student_end == o.student_end &&
          adult_dependent_end == o.adult_dependent_end &&
          height == o.height &&
          weight == o.weight &&
          continue_coverage == o.continue_coverage &&
          continue_coverage_ex_code == o.continue_coverage_ex_code &&
          continue_coverage_end_date == o.continue_coverage_end_date &&
          credible_coverage == o.credible_coverage &&
          coverage_type == o.coverage_type &&
          use_member_plan_year == o.use_member_plan_year &&
          plan_year_frequency == o.plan_year_frequency &&
          plan_year_frequency_type == o.plan_year_frequency_type &&
          creditable_coverage_start == o.creditable_coverage_start &&
          creditable_coverage_end == o.creditable_coverage_end &&
          initial_volume_salary_pct == o.initial_volume_salary_pct &&
          initial_volume == o.initial_volume &&
          smoker == o.smoker
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [subscriber_id, member_seq, last_name, first_name, relationship, birth_date, date_enrolled, disenroll_date, sex, adult_child, other_insurance, adult_dependent, notes, entry_date, entry_user, update_date, update_user, alternate_id, vi_p_flag, pend_flag, pend_ex_code, other_name, pre_exist, pre_exist_end, pre_exist_ex_code, student, date_of_death, marital_status, ethnicity_code, middle_name, name_suffix, salutation, ssn, unique_id, access_code, student_end, adult_dependent_end, height, weight, continue_coverage, continue_coverage_ex_code, continue_coverage_end_date, credible_coverage, coverage_type, use_member_plan_year, plan_year_frequency, plan_year_frequency_type, creditable_coverage_start, creditable_coverage_end, initial_volume_salary_pct, initial_volume, smoker].hash
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
