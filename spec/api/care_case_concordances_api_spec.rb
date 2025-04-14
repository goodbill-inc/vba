=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseConcordancesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseConcordancesApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseConcordancesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseConcordancesApi' do
    it 'should create an instance of CareCaseConcordancesApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseConcordancesApi)
    end
  end

  # unit tests for create_care_case_concordance
  # Create CareCaseConcordance
  # Creates a new CareCaseConcordance
  # @param vbasoftware_database Target database
  # @param care_case_concordance 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseConcordanceVBAResponse]
  describe 'create_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_concordance
  # Delete CareCaseConcordance
  # Deletes an CareCaseConcordance
  # @param vbasoftware_database Target database
  # @param care_case_concordance_key CareCaseConcordance Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_concordance
  # Get CareCaseConcordance
  # Gets CareCaseConcordance
  # @param vbasoftware_database Target database
  # @param care_case_concordance_key CareCaseConcordance Key
  # @param [Hash] opts the optional parameters
  # @return [CareCaseConcordanceVBAResponse]
  describe 'get_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_concordance
  # List CareCaseConcordance
  # Lists all CareCaseConcordance
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseConcordanceListVBAResponse]
  describe 'list_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_concordance
  # Create or Update Batch CareCaseConcordance
  # Create or Update multiple CareCaseConcordance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param care_case_concordance 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_concordance
  # Update CareCaseConcordance
  # Updates a specific CareCaseConcordance.
  # @param vbasoftware_database Target database
  # @param care_case_concordance_key CareCaseConcordance Key
  # @param care_case_concordance 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseConcordanceVBAResponse]
  describe 'update_care_case_concordance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
