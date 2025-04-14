=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::EventPriorityLevelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventPriorityLevelsApi' do
  before do
    # run before each test
    @api_instance = Vba::EventPriorityLevelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventPriorityLevelsApi' do
    it 'should create an instance of EventPriorityLevelsApi' do
      expect(@api_instance).to be_instance_of(Vba::EventPriorityLevelsApi)
    end
  end

  # unit tests for list_event_priority_levels
  # List Event Priority Levels
  # List of key/value pairs for Event Priority Levels
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_event_priority_levels test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
