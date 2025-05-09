=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SexCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SexCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::SexCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SexCodesApi' do
    it 'should create an instance of SexCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::SexCodesApi)
    end
  end

  # unit tests for get_sex_code
  # Get Sex Code
  # Gets a single Sex Code by ID
  # @param vbasoftware_database Target database
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionVBAResponse]
  describe 'get_sex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_sex_codes
  # List Sex Codes
  # Lists all Sex Codes
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_sex_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
