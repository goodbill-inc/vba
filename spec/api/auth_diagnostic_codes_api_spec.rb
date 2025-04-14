=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AuthDiagnosticCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthDiagnosticCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::AuthDiagnosticCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthDiagnosticCodesApi' do
    it 'should create an instance of AuthDiagnosticCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::AuthDiagnosticCodesApi)
    end
  end

  # unit tests for create_auth_diag_code
  # Create Auth Diagnostic Code
  # Creates a new Diagnostic Code.
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param auth_diag_codes 
  # @param [Hash] opts the optional parameters
  # @return [AuthDiagCodesVBAResponse]
  describe 'create_auth_diag_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_auth_diag_code
  # Delete Diagnostic Code
  # Deletes a specific Diagnostic Code.
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param diagnostic_code Diagnostic Code to delete
  # @param diagnostic_code_type Diagnostic Code Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_auth_diag_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_auth_diag_code_list
  # List Diagnostic Codes for Auth
  # List Diagnostic Codes for a specific Auth
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param [Hash] opts the optional parameters
  # @return [AuthDiagCodesListVBAResponse]
  describe 'get_auth_diag_code_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_diag_code
  # Get Diagnostic Code
  # Gets a specific Diagnostic Code
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param diagnostic_code Diagnostic Code
  # @param diagnostic_code_type Diagnostic Code Type
  # @param [Hash] opts the optional parameters
  # @return [AuthDiagCodesVBAResponse]
  describe 'get_diag_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_diag_code_list
  # List Diagnostic Codes with Value
  # List Diagnostic Codes with a specific Diagnostic Code value.
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param diagnostic_code Diagnostic Code
  # @param [Hash] opts the optional parameters
  # @return [AuthDiagCodesListVBAResponse]
  describe 'get_diag_code_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_auth_diag_code
  # Update Diagnostic Code
  # Updates a specific Diagnostic Code.
  # @param vbasoftware_database Target database
  # @param auth_number Auth number
  # @param diagnostic_code Diagnostic Code
  # @param diagnostic_code_type Diagnostic Code Type
  # @param auth_diag_codes 
  # @param [Hash] opts the optional parameters
  # @return [AuthDiagCodesVBAResponse]
  describe 'update_auth_diag_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_auth_diag_code_batch
  # Update Diagnostic Code Batch
  # Updates multiple Diagnostic Code
  # @param vbasoftware_database Target database
  # @param auth_number Auth number
  # @param auth_diag_codes 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_auth_diag_code_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
