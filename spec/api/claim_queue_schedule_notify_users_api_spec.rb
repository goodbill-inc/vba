=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimQueueScheduleNotifyUsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimQueueScheduleNotifyUsersApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimQueueScheduleNotifyUsersApi' do
    it 'should create an instance of ClaimQueueScheduleNotifyUsersApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimQueueScheduleNotifyUsersApi)
    end
  end

  # unit tests for create_claim_queue_schedule_notify_user
  # Create ClaimQueueScheduleNotifyUser
  # Creates a new ClaimQueueScheduleNotifyUser
  # @param vbasoftware_database Target database
  # @param claim_queue_schedule_key ClaimQueueSchedule Key
  # @param claim_queue_schedule_notify_user 
  # @param [Hash] opts the optional parameters
  # @return [ClaimQueueScheduleNotifyUserVBAResponse]
  describe 'create_claim_queue_schedule_notify_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_queue_schedule_notify_user
  # Delete ClaimQueueScheduleNotifyUser
  # Deletes an ClaimQueueScheduleNotifyUser
  # @param vbasoftware_database Target database
  # @param claim_queue_schedule_key ClaimQueueSchedule Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_queue_schedule_notify_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_queue_schedule_notify_user
  # Get ClaimQueueScheduleNotifyUser
  # Gets ClaimQueueScheduleNotifyUser
  # @param vbasoftware_database Target database
  # @param claim_queue_schedule_key ClaimQueueSchedule Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [ClaimQueueScheduleNotifyUserVBAResponse]
  describe 'get_claim_queue_schedule_notify_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_queue_schedule_notify_user
  # List ClaimQueueScheduleNotifyUser
  # Lists all ClaimQueueScheduleNotifyUser for the given claimQueueScheduleKey
  # @param vbasoftware_database Target database
  # @param claim_queue_schedule_key ClaimQueueSchedule Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimQueueScheduleNotifyUserListVBAResponse]
  describe 'list_claim_queue_schedule_notify_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_queue_schedule_notify_user
  # Create or Update Batch ClaimQueueScheduleNotifyUser
  # Create or Update multiple ClaimQueueScheduleNotifyUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_queue_schedule_key ClaimQueueSchedule Key
  # @param claim_queue_schedule_notify_user 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_queue_schedule_notify_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
