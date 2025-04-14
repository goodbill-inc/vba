=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MessageAttachmentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessageAttachmentApi' do
  before do
    # run before each test
    @api_instance = Vba::MessageAttachmentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessageAttachmentApi' do
    it 'should create an instance of MessageAttachmentApi' do
      expect(@api_instance).to be_instance_of(Vba::MessageAttachmentApi)
    end
  end

  # unit tests for list_vba_gateway_message_attachments
  # List MessageAttachment
  # Lists all MessageAttachment, optionally filtered by Message_Key
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :message_key Optional Message_Key to filter the results.
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page The current page number for pagination.
  # @option opts [Integer] :page_size The number of items per page for pagination.
  # @return [MessageAttachmentListVBAResponse]
  describe 'list_vba_gateway_message_attachments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
