=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ChangeDataCaptureApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChangeDataCaptureApi' do
  before do
    # run before each test
    @api_instance = Vba::ChangeDataCaptureApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChangeDataCaptureApi' do
    it 'should create an instance of ChangeDataCaptureApi' do
      expect(@api_instance).to be_instance_of(Vba::ChangeDataCaptureApi)
    end
  end

  # unit tests for list_cdc_members
  # List Members CDC
  # Lists all Change Data Capture information for the Members table.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
  # @option opts [String] :member_seq Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
  # @return [VBACDCMembersListVBAResponse]
  describe 'list_cdc_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cdc_subenrollment
  # List Subenrollment CDC
  # Lists all Change Data Capture information for the Subenrollment table.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
  # @return [VBACDCSubenrollmentListVBAResponse]
  describe 'list_cdc_subenrollment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cdc_subenrollment_plan
  # List SubenrollmentPlan CDC
  # Lists all Change Data Capture information for the SubenrollmentPlan table.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
  # @return [VBACDCSubenrollmentPlanListVBAResponse]
  describe 'list_cdc_subenrollment_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cdc_subenrollment_rider
  # List SubenrollmentRider CDC
  # Lists all Change Data Capture information for the SubenrollmentRider table.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
  # @return [VBACDCSubenrollmentRiderListVBAResponse]
  describe 'list_cdc_subenrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cdc_subscribers
  # List Subscribers CDC
  # Lists all Change Data Capture information for the Subscribers table.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
  # @return [VBACDCSubscribersListVBAResponse]
  describe 'list_cdc_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
