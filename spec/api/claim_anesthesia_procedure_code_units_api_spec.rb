=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimAnesthesiaProcedureCodeUnitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimAnesthesiaProcedureCodeUnitsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimAnesthesiaProcedureCodeUnitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimAnesthesiaProcedureCodeUnitsApi' do
    it 'should create an instance of ClaimAnesthesiaProcedureCodeUnitsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimAnesthesiaProcedureCodeUnitsApi)
    end
  end

  # unit tests for create_claim_anesthesia_procedure_code_unit
  # Create ClaimAnesthesiaProcedureCodeUnit
  # Creates a new ClaimAnesthesiaProcedureCodeUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_procedure_code_unit 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
  describe 'create_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_anesthesia_procedure_code_unit
  # Delete ClaimAnesthesiaProcedureCodeUnit
  # Deletes an ClaimAnesthesiaProcedureCodeUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_procedure_code_unit_key ClaimAnesthesiaProcedureCodeUnit Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_anesthesia_procedure_code_unit
  # Get ClaimAnesthesiaProcedureCodeUnit
  # Gets ClaimAnesthesiaProcedureCodeUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_procedure_code_unit_key ClaimAnesthesiaProcedureCodeUnit Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
  describe 'get_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_anesthesia_procedure_code_unit
  # List ClaimAnesthesiaProcedureCodeUnit
  # Lists all ClaimAnesthesiaProcedureCodeUnit
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimAnesthesiaProcedureCodeUnitListVBAResponse]
  describe 'list_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_anesthesia_procedure_code_unit
  # Create or Update Batch ClaimAnesthesiaProcedureCodeUnit
  # Create or Update multiple ClaimAnesthesiaProcedureCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_procedure_code_unit 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_anesthesia_procedure_code_unit
  # Update ClaimAnesthesiaProcedureCodeUnit
  # Updates a specific ClaimAnesthesiaProcedureCodeUnit.
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_procedure_code_unit_key ClaimAnesthesiaProcedureCodeUnit Key
  # @param claim_anesthesia_procedure_code_unit 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
  describe 'update_claim_anesthesia_procedure_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
