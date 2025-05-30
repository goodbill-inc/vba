=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SecurityAreaOverridesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityAreaOverridesApi' do
  before do
    # run before each test
    @api_instance = Vba::SecurityAreaOverridesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityAreaOverridesApi' do
    it 'should create an instance of SecurityAreaOverridesApi' do
      expect(@api_instance).to be_instance_of(Vba::SecurityAreaOverridesApi)
    end
  end

  # unit tests for create_security_area_override
  # Create SecurityAreaOverride
  # Creates a new SecurityAreaOverride
  # @param vbasoftware_database Target database
  # @param security_area_override 
  # @param [Hash] opts the optional parameters
  # @return [SecurityAreaOverrideVBAResponse]
  describe 'create_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_security_area_override
  # Delete SecurityAreaOverride
  # Deletes an SecurityAreaOverride
  # @param vbasoftware_database Target database
  # @param security_area_override_key SecurityAreaOverride Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_security_area_override
  # Get SecurityAreaOverride
  # Gets SecurityAreaOverride
  # @param vbasoftware_database Target database
  # @param security_area_override_key SecurityAreaOverride Key
  # @param [Hash] opts the optional parameters
  # @return [SecurityAreaOverrideVBAResponse]
  describe 'get_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_security_area_override
  # List SecurityAreaOverride
  # Lists all SecurityAreaOverride with optional securityArea filter
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :security_area Security Area
  # @return [SecurityAreaOverrideListVBAResponse]
  describe 'list_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_security_area_override
  # Create or Update Batch SecurityAreaOverride
  # Create or Update multiple SecurityAreaOverride at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param security_area_override 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_security_area_override
  # Update SecurityAreaOverride
  # Updates a specific SecurityAreaOverride.
  # @param vbasoftware_database Target database
  # @param security_area_override_key SecurityAreaOverride Key
  # @param security_area_override 
  # @param [Hash] opts the optional parameters
  # @return [SecurityAreaOverrideVBAResponse]
  describe 'update_security_area_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
