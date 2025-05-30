=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SearchOperatorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SearchOperatorsApi' do
  before do
    # run before each test
    @api_instance = Vba::SearchOperatorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchOperatorsApi' do
    it 'should create an instance of SearchOperatorsApi' do
      expect(@api_instance).to be_instance_of(Vba::SearchOperatorsApi)
    end
  end

  # unit tests for get_search_operator
  # Get Search Operator
  # Gets a single Search Operator by ID
  # @param vbasoftware_database Target database
  # @param id ID
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionVBAResponse]
  describe 'get_search_operator test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_search_operators
  # List Search Operators
  # Lists all Search Operators
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_search_operators test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
