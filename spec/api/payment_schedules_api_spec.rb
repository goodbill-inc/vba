=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PaymentSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentSchedulesApi' do
  before do
    # run before each test
    @api_instance = Vba::PaymentSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentSchedulesApi' do
    it 'should create an instance of PaymentSchedulesApi' do
      expect(@api_instance).to be_instance_of(Vba::PaymentSchedulesApi)
    end
  end

  # unit tests for create_payment_schedule
  # Create PaymentSchedule
  # Creates a new PaymentSchedule
  # @param vbasoftware_database Target database
  # @param payment_schedule 
  # @param [Hash] opts the optional parameters
  # @return [PaymentScheduleVBAResponse]
  describe 'create_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_payment_schedule
  # Delete PaymentSchedule
  # Deletes an PaymentSchedule
  # @param vbasoftware_database Target database
  # @param payment_schedule Payment Schedule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payment_schedule
  # Get PaymentSchedule
  # Gets PaymentSchedule
  # @param vbasoftware_database Target database
  # @param payment_schedule Payment Schedule
  # @param [Hash] opts the optional parameters
  # @return [PaymentScheduleVBAResponse]
  describe 'get_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_payment_schedule
  # List PaymentSchedule
  # Lists all PaymentSchedule
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PaymentScheduleListVBAResponse]
  describe 'list_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_payment_schedule
  # Create or Update Batch PaymentSchedule
  # Create or Update multiple PaymentSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param payment_schedule 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_payment_schedule
  # Update PaymentSchedule
  # Updates a specific PaymentSchedule.
  # @param vbasoftware_database Target database
  # @param payment_schedule Payment Schedule
  # @param payment_schedule2 
  # @param [Hash] opts the optional parameters
  # @return [PaymentScheduleVBAResponse]
  describe 'update_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
