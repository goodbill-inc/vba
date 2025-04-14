=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseClinicalTrialArmsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseClinicalTrialArmsApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseClinicalTrialArmsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseClinicalTrialArmsApi' do
    it 'should create an instance of CareCaseClinicalTrialArmsApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseClinicalTrialArmsApi)
    end
  end

  # unit tests for create_care_case_clinical_trial_arm
  # Create CareCaseClinicalTrialArm
  # Creates a new CareCaseClinicalTrialArm
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_arm 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialArmVBAResponse]
  describe 'create_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_clinical_trial_arm
  # Delete CareCaseClinicalTrialArm
  # Deletes an CareCaseClinicalTrialArm
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_arm_id CareCaseClinicalTrialArm ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_clinical_trial_arm
  # Get CareCaseClinicalTrialArm
  # Gets CareCaseClinicalTrialArm
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_arm_id CareCaseClinicalTrialArm ID
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialArmVBAResponse]
  describe 'get_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_clinical_trial_arm
  # List CareCaseClinicalTrialArm
  # Lists all CareCaseClinicalTrialArm
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseClinicalTrialArmListVBAResponse]
  describe 'list_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_clinical_trial_arm
  # Create or Update Batch CareCaseClinicalTrialArm
  # Create or Update multiple CareCaseClinicalTrialArm at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_arm 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_clinical_trial_arm
  # Update CareCaseClinicalTrialArm
  # Updates a specific CareCaseClinicalTrialArm.
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_arm_id CareCaseClinicalTrialArm ID
  # @param care_case_clinical_trial_arm 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialArmVBAResponse]
  describe 'update_care_case_clinical_trial_arm test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
