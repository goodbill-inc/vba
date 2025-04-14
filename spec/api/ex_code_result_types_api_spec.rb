=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ExCodeResultTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExCodeResultTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::ExCodeResultTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExCodeResultTypesApi' do
    it 'should create an instance of ExCodeResultTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::ExCodeResultTypesApi)
    end
  end

  # unit tests for list_ex_code_result_types
  # List Ex Code Result Types
  # List of key/value pairs for Ex Code Result Types.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_ex_code_result_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
