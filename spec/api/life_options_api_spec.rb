=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::LifeOptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LifeOptionsApi' do
  before do
    # run before each test
    @api_instance = Vba::LifeOptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LifeOptionsApi' do
    it 'should create an instance of LifeOptionsApi' do
      expect(@api_instance).to be_instance_of(Vba::LifeOptionsApi)
    end
  end

  # unit tests for list_grace_period_types
  # List Grace Period Types
  # List of key/value pairs
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_grace_period_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_maturity_age_types
  # List Maturity Age Types
  # List of key/value pairs
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_maturity_age_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
