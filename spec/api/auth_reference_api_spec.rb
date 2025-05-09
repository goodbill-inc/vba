=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AuthReferenceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthReferenceApi' do
  before do
    # run before each test
    @api_instance = Vba::AuthReferenceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthReferenceApi' do
    it 'should create an instance of AuthReferenceApi' do
      expect(@api_instance).to be_instance_of(Vba::AuthReferenceApi)
    end
  end

  # unit tests for create_auth_reference
  # Create AuthReference
  # Creates a new AuthReference from an existing Auth
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param auth_reference 
  # @param [Hash] opts the optional parameters
  # @return [AuthReferenceVBAResponse]
  describe 'create_auth_reference test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_auth_reference
  # Delete AuthReference
  # Deletes an AuthReference
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param referenced_auth_number Referenced Auth Number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_auth_reference test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_auth_reference
  # Get AuthReference
  # Gets AuthReference
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param referenced_auth_number Referenced Auth Number
  # @param [Hash] opts the optional parameters
  # @return [AuthReferenceVBAResponse]
  describe 'get_auth_reference test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_auth_reference_for_auth
  # List AuthReferences
  # Lists all AuthReference for an existing Auth
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param [Hash] opts the optional parameters
  # @return [AuthListVBAResponse]
  describe 'list_auth_reference_for_auth test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_auth_reference
  # Update AuthReference
  # Updates a specific AuthReference.
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param referenced_auth_number Referenced Auth Number
  # @param auth_reference 
  # @param [Hash] opts the optional parameters
  # @return [AuthReferenceVBAResponse]
  describe 'update_auth_reference test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_auth_reference
  # Update Batch AuthReference
  # Updates a multiple AuthReference.
  # @param vbasoftware_database Target database
  # @param original_auth_number Original Auth Number
  # @param auth_reference 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_auth_reference test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
