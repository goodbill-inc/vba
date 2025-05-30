=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::DiagnosticCodeTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DiagnosticCodeTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::DiagnosticCodeTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DiagnosticCodeTypesApi' do
    it 'should create an instance of DiagnosticCodeTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::DiagnosticCodeTypesApi)
    end
  end

  # unit tests for create_diagnostic_code_type
  # Create DiagnosticCodeType
  # Creates a new DiagnosticCodeType
  # @param vbasoftware_database Target database
  # @param diagnostic_code_type 
  # @param [Hash] opts the optional parameters
  # @return [DiagnosticCodeTypeVBAResponse]
  describe 'create_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_diagnostic_code_type
  # Delete DiagnosticCodeType
  # Deletes an DiagnosticCodeType
  # @param vbasoftware_database Target database
  # @param diagnostic_code_type Diagnostic Code Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_diagnostic_code_type
  # Get DiagnosticCodeType
  # Gets DiagnosticCodeType
  # @param vbasoftware_database Target database
  # @param diagnostic_code_type Diagnostic Code Type
  # @param [Hash] opts the optional parameters
  # @return [DiagnosticCodeTypeVBAResponse]
  describe 'get_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_diagnostic_code_type
  # List DiagnosticCodeType
  # Lists all DiagnosticCodeType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [DiagnosticCodeTypeListVBAResponse]
  describe 'list_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_diagnostic_code_type
  # Create or Update Batch DiagnosticCodeType
  # Create or Update multiple DiagnosticCodeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param diagnostic_code_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_diagnostic_code_type
  # Update DiagnosticCodeType
  # Updates a specific DiagnosticCodeType.
  # @param vbasoftware_database Target database
  # @param diagnostic_code_type Diagnostic Code Type
  # @param diagnostic_code_type2 
  # @param [Hash] opts the optional parameters
  # @return [DiagnosticCodeTypeVBAResponse]
  describe 'update_diagnostic_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
