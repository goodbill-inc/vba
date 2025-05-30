=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AuthReviewUrgencyTypeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthReviewUrgencyTypeApi' do
  before do
    # run before each test
    @api_instance = Vba::AuthReviewUrgencyTypeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthReviewUrgencyTypeApi' do
    it 'should create an instance of AuthReviewUrgencyTypeApi' do
      expect(@api_instance).to be_instance_of(Vba::AuthReviewUrgencyTypeApi)
    end
  end

  # unit tests for create_auth_review_urgency_type
  # Create AuthReviewUrgencyType
  # Creates a new AuthReviewUrgencyType.
  # @param vbasoftware_database Target database
  # @param auth_review_urgency_type 
  # @param [Hash] opts the optional parameters
  # @return [AuthReviewUrgencyTypeVBAResponse]
  describe 'create_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_auth_review_urgency_type
  # Delete AuthReviewUrgencyType
  # Deletes an AuthReviewUrgencyType
  # @param vbasoftware_database Target database
  # @param review_urgency_type Review Urgency Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_auth_review_urgency_type
  # Get AuthReviewUrgencyType
  # Gets AuthReviewUrgencyType
  # @param vbasoftware_database Target database
  # @param review_urgency_type Review Urgency Type
  # @param [Hash] opts the optional parameters
  # @return [AuthReviewUrgencyTypeVBAResponse]
  describe 'get_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_auth_review_urgency_type
  # List AuthReviewUrgencyType
  # Lists all AuthReviewUrgencyType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [AuthReviewUrgencyTypeListVBAResponse]
  describe 'list_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_auth_review_urgency_type
  # Update AuthReviewUrgencyType
  # Updates a specific AuthReviewUrgencyType.
  # @param vbasoftware_database Target database
  # @param review_urgency_type Review Urgency Type
  # @param auth_review_urgency_type 
  # @param [Hash] opts the optional parameters
  # @return [AuthReviewUrgencyTypeVBAResponse]
  describe 'update_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_auth_review_urgency_type
  # Update Batch AuthReviewUrgencyType
  # Updates a multiple AuthReviewUrgencyType.
  # @param vbasoftware_database Target database
  # @param auth_review_urgency_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_auth_review_urgency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
