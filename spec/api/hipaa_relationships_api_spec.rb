=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::HIPAARelationshipsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HIPAARelationshipsApi' do
  before do
    # run before each test
    @api_instance = Vba::HIPAARelationshipsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HIPAARelationshipsApi' do
    it 'should create an instance of HIPAARelationshipsApi' do
      expect(@api_instance).to be_instance_of(Vba::HIPAARelationshipsApi)
    end
  end

  # unit tests for create_hipaa_relationship
  # Create HIPAARelationship
  # Creates a new HIPAARelationship
  # @param vbasoftware_database Target database
  # @param hipaa_relationship 
  # @param [Hash] opts the optional parameters
  # @return [HIPAARelationshipVBAResponse]
  describe 'create_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_hipaa_relationship
  # Delete HIPAARelationship
  # Deletes an HIPAARelationship
  # @param vbasoftware_database Target database
  # @param h_ipaa_code HIPAA Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_hipaa_relationship
  # Get HIPAARelationship
  # Gets HIPAARelationship
  # @param vbasoftware_database Target database
  # @param h_ipaa_code HIPAA Code
  # @param [Hash] opts the optional parameters
  # @return [HIPAARelationshipVBAResponse]
  describe 'get_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_hipaa_relationship
  # List HIPAARelationship
  # Lists all HIPAARelationship given a specific 
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [HIPAARelationshipListVBAResponse]
  describe 'list_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_hipaa_relationship
  # Create or Update Batch HIPAARelationship
  # Create or Update multiple HIPAARelationship at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param hipaa_relationship 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_hipaa_relationship
  # Update HIPAARelationship
  # Updates a specific HIPAARelationship.
  # @param vbasoftware_database Target database
  # @param h_ipaa_code HIPAA Code
  # @param hipaa_relationship 
  # @param [Hash] opts the optional parameters
  # @return [HIPAARelationshipVBAResponse]
  describe 'update_hipaa_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
