=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseClinicalTrialStudyPhasesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseClinicalTrialStudyPhasesApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseClinicalTrialStudyPhasesApi' do
    it 'should create an instance of CareCaseClinicalTrialStudyPhasesApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseClinicalTrialStudyPhasesApi)
    end
  end

  # unit tests for create_care_case_clinical_trial_study_phase
  # Create CareCaseClinicalTrialStudyPhase
  # Creates a new CareCaseClinicalTrialStudyPhase
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_study_phase 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialStudyPhaseVBAResponse]
  describe 'create_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_clinical_trial_study_phase
  # Delete CareCaseClinicalTrialStudyPhase
  # Deletes an CareCaseClinicalTrialStudyPhase
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_study_phase_id CareCaseClinicalTrialStudyPhase ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_clinical_trial_study_phase
  # Get CareCaseClinicalTrialStudyPhase
  # Gets CareCaseClinicalTrialStudyPhase
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_study_phase_id CareCaseClinicalTrialStudyPhase ID
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialStudyPhaseVBAResponse]
  describe 'get_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_clinical_trial_study_phase
  # List CareCaseClinicalTrialStudyPhase
  # Lists all CareCaseClinicalTrialStudyPhase
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseClinicalTrialStudyPhaseListVBAResponse]
  describe 'list_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_clinical_trial_study_phase
  # Create or Update Batch CareCaseClinicalTrialStudyPhase
  # Create or Update multiple CareCaseClinicalTrialStudyPhase at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_study_phase 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_clinical_trial_study_phase
  # Update CareCaseClinicalTrialStudyPhase
  # Updates a specific CareCaseClinicalTrialStudyPhase.
  # @param vbasoftware_database Target database
  # @param care_case_clinical_trial_study_phase_id CareCaseClinicalTrialStudyPhase ID
  # @param care_case_clinical_trial_study_phase 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseClinicalTrialStudyPhaseVBAResponse]
  describe 'update_care_case_clinical_trial_study_phase test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
