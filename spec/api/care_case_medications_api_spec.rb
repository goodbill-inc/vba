=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseMedicationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseMedicationsApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseMedicationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseMedicationsApi' do
    it 'should create an instance of CareCaseMedicationsApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseMedicationsApi)
    end
  end

  # unit tests for create_care_case_medication
  # Create CareCaseMedication
  # Creates a new CareCaseMedication
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_medication 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseMedicationVBAResponse]
  describe 'create_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_medication
  # Delete CareCaseMedication
  # Deletes an CareCaseMedication
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_medication_key CareCaseMedication Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_medication
  # Get CareCaseMedication
  # Gets CareCaseMedication
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_medication_key CareCaseMedication Key
  # @param [Hash] opts the optional parameters
  # @return [CareCaseMedicationVBAResponse]
  describe 'get_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_medication
  # List CareCaseMedication
  # Lists all CareCaseMedication for the given caseKey
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseMedicationListVBAResponse]
  describe 'list_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_medication
  # Create or Update Batch CareCaseMedication
  # Create or Update multiple CareCaseMedication at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_medication 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_medication
  # Update CareCaseMedication
  # Updates a specific CareCaseMedication.
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_medication_key CareCaseMedication Key
  # @param care_case_medication 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseMedicationVBAResponse]
  describe 'update_care_case_medication test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
