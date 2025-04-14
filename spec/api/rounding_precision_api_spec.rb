=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::RoundingPrecisionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RoundingPrecisionApi' do
  before do
    # run before each test
    @api_instance = Vba::RoundingPrecisionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoundingPrecisionApi' do
    it 'should create an instance of RoundingPrecisionApi' do
      expect(@api_instance).to be_instance_of(Vba::RoundingPrecisionApi)
    end
  end

  # unit tests for get_rounding_precision
  # Get Rounding Precision
  # Gets a single Rounding Precision by ID
  # @param vbasoftware_database Target database
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @return [Int32StaticOptionVBAResponse]
  describe 'get_rounding_precision test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_rounding_precision
  # List Rounding Precisions
  # Lists all Rounding Precisions
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [Int32StaticOptionListVBAResponse]
  describe 'list_rounding_precision test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
