=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SubscriberEnrollmentPlanRidersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriberEnrollmentPlanRidersApi' do
  before do
    # run before each test
    @api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriberEnrollmentPlanRidersApi' do
    it 'should create an instance of SubscriberEnrollmentPlanRidersApi' do
      expect(@api_instance).to be_instance_of(Vba::SubscriberEnrollmentPlanRidersApi)
    end
  end

  # unit tests for create_sub_enrollment_rider
  # Create SubEnrollmentRider
  # Creates a new SubEnrollmentRider
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param sub_enrollment_rider 
  # @param [Hash] opts the optional parameters
  # @return [SubEnrollmentRiderVBAResponse]
  describe 'create_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_sub_enrollment_rider
  # Delete SubEnrollmentRider
  # Deletes an SubEnrollmentRider
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param benefit_code Benefit Code
  # @param from_date From Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_sub_enrollment_rider
  # Get SubEnrollmentRider
  # Gets SubEnrollmentRider
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param benefit_code Benefit Code
  # @param from_date From Date
  # @param [Hash] opts the optional parameters
  # @return [SubEnrollmentRiderVBAResponse]
  describe 'get_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_sub_enrollment_rider
  # List SubEnrollmentRider
  # Lists all SubEnrollmentRider for the given subscriberID and groupID and divisionID and groupCoverageStart and startDate and planID and planStart
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SubEnrollmentRiderListVBAResponse]
  describe 'list_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_sub_enrollment_rider
  # Create or Update Batch SubEnrollmentRider
  # Create or Update multiple SubEnrollmentRider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param sub_enrollment_rider 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_sub_enrollment_rider
  # Update SubEnrollmentRider
  # Updates a specific SubEnrollmentRider.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param division_id Division ID
  # @param group_coverage_start Group Coverage Start
  # @param start_date Start Date
  # @param plan_id Plan ID
  # @param plan_start Plan Start
  # @param benefit_code Benefit Code
  # @param from_date From Date
  # @param sub_enrollment_rider 
  # @param [Hash] opts the optional parameters
  # @return [SubEnrollmentRiderVBAResponse]
  describe 'update_sub_enrollment_rider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
