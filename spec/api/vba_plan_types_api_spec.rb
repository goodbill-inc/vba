=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::VBAPlanTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VBAPlanTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::VBAPlanTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VBAPlanTypesApi' do
    it 'should create an instance of VBAPlanTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::VBAPlanTypesApi)
    end
  end

  # unit tests for get_vba_plan_type
  # Get VBA Plan Type
  # Gets a single VBA Plan Types by ID
  # @param vbasoftware_database Target database
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionVBAResponse]
  describe 'get_vba_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_vba_plan_types
  # List VBA Plan Types
  # Lists all VBA Plan Types
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_vba_plan_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
