=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AdvAuthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdvAuthApi' do
  before do
    # run before each test
    @api_instance = Vba::AdvAuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdvAuthApi' do
    it 'should create an instance of AdvAuthApi' do
      expect(@api_instance).to be_instance_of(Vba::AdvAuthApi)
    end
  end

  # unit tests for auth_adjustment
  # Auth Adjustment
  # Performs an Auth Adjustment using the values and flags specified
  # @param vbasoftware_database Target database
  # @param auth_number Auth Number
  # @param auth_adjustment 
  # @param [Hash] opts the optional parameters
  # @return [AuthVBAResponse]
  describe 'auth_adjustment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for auth_process_status
  # Process a change in Auth Status
  # Initiates an Auth Status change.
  # @param vbasoftware_database Target database
  # @param auth_number the Entity
  # @param new_auth_code New Auth Code
  # @param [Hash] opts the optional parameters
  # @return [AuthVBAResponse]
  describe 'auth_process_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
