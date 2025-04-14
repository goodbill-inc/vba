=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SubscribersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscribersApi' do
  before do
    # run before each test
    @api_instance = Vba::SubscribersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscribersApi' do
    it 'should create an instance of SubscribersApi' do
      expect(@api_instance).to be_instance_of(Vba::SubscribersApi)
    end
  end

  # unit tests for changesubscriber_id
  # Change Subscriber ID
  # Changes a Subscriber ID globally
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param change_subscriber_id_request 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'changesubscriber_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_subscribers
  # Create Subscribers
  # Creates a new Subscribers
  # @param vbasoftware_database Target database
  # @param subscribers 
  # @param [Hash] opts the optional parameters
  # @return [SubscribersVBAResponse]
  describe 'create_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscribers
  # Delete Subscribers
  # Deletes an Subscribers
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_subscriber_id
  # Get Unique Subscriber ID
  # Get a unique Subscriber ID you can use for creating a new Subscriber or changing an existing Subscirbers ID
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringVBAResponse]
  describe 'generate_subscriber_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscribers
  # Get Subscribers
  # Gets Subscribers
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param [Hash] opts the optional parameters
  # @return [SubscribersVBAResponse]
  describe 'get_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_active_subscribers
  # List Active Subscribers for a Groupd &amp; Division
  # Lists all Subscribers for the given Group &amp; Division. If division is omitted, all divisions will be included.  Active is defined by a plan start date &lt;&#x3D; today and plan end date &gt;&#x3D; today.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :division_id Division ID
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ActiveSubscriberListVBAResponse]
  describe 'list_active_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cobra_disenroll_reason_types
  # List Cobra Disenroll Reason Types
  # List of all Cobra Disenroll Reason Types
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_cobra_disenroll_reason_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cobra_duration_types
  # List Cobra Duration Types
  # List of all Cobra Duration Types
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_cobra_duration_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_disenroll_adjustment
  # List Billing Adjustments for Disenroll
  # List of Billing Adjustments that would be created based on a Subscriber being disenrolled on the As of Date.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param as_of_date As of Date
  # @param [Hash] opts the optional parameters
  # @return [EnrollmentDisenrollAdjustmentListVBAResponse]
  describe 'list_disenroll_adjustment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_disenrollment_family_options
  # List Disenrollment Family Options
  # List of all Disenrollment Family Options
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [Int32StaticOptionListVBAResponse]
  describe 'list_disenrollment_family_options test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_enrollment_waiting_period_by_hire_date
  # List Waiting Period Details
  # List of Waiting Period configuration based on the passed in settings (group, division, plan, and/or hire date).
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :group_id Group ID
  # @option opts [String] :division_id Division ID
  # @option opts [String] :plan_id Plan ID
  # @option opts [Time] :hire_date Hire Date
  # @return [EnrollmentWaitingPeriodByHireDateListVBAResponse]
  describe 'list_enrollment_waiting_period_by_hire_date test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reenrollment_family_options
  # List Reenrollment Family Options
  # List of all Reenrollment Family Options
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [Int32StaticOptionListVBAResponse]
  describe 'list_reenrollment_family_options test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscriber_benefits
  # List Subscriber Benefits
  # List of all Benefits for the given Subscriber ID
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param [Hash] opts the optional parameters
  # @return [StringStaticOptionListVBAResponse]
  describe 'list_subscriber_benefits test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscribers
  # List Subscribers
  # Lists all Subscribers
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SubscribersListVBAResponse]
  describe 'list_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for member_disenroll
  # Member Disenroll
  # Disenrolls a Member from an Enrollment.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param enrollment_disenroll 
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessVBAResponse]
  describe 'member_disenroll test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for member_reenroll
  # Member Re-enroll
  # Re-enrolls a Member to an Enrollment.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param enrollment_reenroll 
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessVBAResponse]
  describe 'member_reenroll test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for subscriber_add_enrollment
  # Subscriber Add Enrollment
  # Adds enrollments to an existing subscriber. Can add enrollment for the subscriber or subscriber + all members.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param add_enrollment_request 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'subscriber_add_enrollment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_subscribers
  # Create or Update Batch Subscribers
  # Create or Update multiple Subscribers at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscribers 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscribers
  # Update Subscribers
  # Updates a specific Subscribers.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param subscribers 
  # @param [Hash] opts the optional parameters
  # @return [SubscribersVBAResponse]
  describe 'update_subscribers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
