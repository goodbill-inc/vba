=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FlexTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FlexTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::FlexTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlexTypesApi' do
    it 'should create an instance of FlexTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::FlexTypesApi)
    end
  end

  # unit tests for list_flex_types
  # List Flex Types
  # List of key/value pairs
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_flex_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
