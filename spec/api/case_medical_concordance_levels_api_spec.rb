=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CaseMedicalConcordanceLevelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CaseMedicalConcordanceLevelsApi' do
  before do
    # run before each test
    @api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CaseMedicalConcordanceLevelsApi' do
    it 'should create an instance of CaseMedicalConcordanceLevelsApi' do
      expect(@api_instance).to be_instance_of(Vba::CaseMedicalConcordanceLevelsApi)
    end
  end

  # unit tests for create_case_medical_concordance_level
  # Create CaseMedicalConcordanceLevel
  # Creates a new CaseMedicalConcordanceLevel
  # @param vbasoftware_database Target database
  # @param case_medical_concordance_level 
  # @param [Hash] opts the optional parameters
  # @return [CaseMedicalConcordanceLevelVBAResponse]
  describe 'create_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_case_medical_concordance_level
  # Delete CaseMedicalConcordanceLevel
  # Deletes an CaseMedicalConcordanceLevel
  # @param vbasoftware_database Target database
  # @param medical_concordance_level Medical Concordance Level
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_case_medical_concordance_level
  # Get CaseMedicalConcordanceLevel
  # Gets CaseMedicalConcordanceLevel
  # @param vbasoftware_database Target database
  # @param medical_concordance_level Medical Concordance Level
  # @param [Hash] opts the optional parameters
  # @return [CaseMedicalConcordanceLevelVBAResponse]
  describe 'get_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_case_medical_concordance_level
  # List CaseMedicalConcordanceLevel
  # Lists all CaseMedicalConcordanceLevel
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CaseMedicalConcordanceLevelListVBAResponse]
  describe 'list_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_case_medical_concordance_level
  # Create or Update Batch CaseMedicalConcordanceLevel
  # Create or Update multiple CaseMedicalConcordanceLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param case_medical_concordance_level 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_case_medical_concordance_level
  # Update CaseMedicalConcordanceLevel
  # Updates a specific CaseMedicalConcordanceLevel.
  # @param vbasoftware_database Target database
  # @param medical_concordance_level Medical Concordance Level
  # @param case_medical_concordance_level 
  # @param [Hash] opts the optional parameters
  # @return [CaseMedicalConcordanceLevelVBAResponse]
  describe 'update_case_medical_concordance_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
