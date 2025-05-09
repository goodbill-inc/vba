=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::NoteAttachmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NoteAttachmentsApi' do
  before do
    # run before each test
    @api_instance = Vba::NoteAttachmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NoteAttachmentsApi' do
    it 'should create an instance of NoteAttachmentsApi' do
      expect(@api_instance).to be_instance_of(Vba::NoteAttachmentsApi)
    end
  end

  # unit tests for create_note_attachment
  # Create NoteAttachment
  # Creates a new NoteAttachment
  # @param vbasoftware_database Target database
  # @param note_attachment 
  # @param [Hash] opts the optional parameters
  # @return [NoteAttachmentVBAResponse]
  describe 'create_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_note_attachment
  # Delete NoteAttachment
  # Deletes an NoteAttachment
  # @param vbasoftware_database Target database
  # @param attachment_key Attachment Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_note_attachment
  # Get NoteAttachment
  # Gets NoteAttachment
  # @param vbasoftware_database Target database
  # @param attachment_key Attachment Key
  # @param [Hash] opts the optional parameters
  # @return [NoteAttachmentVBAResponse]
  describe 'get_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_note_attachment
  # List NoteAttachment
  # Lists all NoteAttachment for the given noteKey
  # @param vbasoftware_database Target database
  # @param note_key Note Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [NoteAttachmentListVBAResponse]
  describe 'list_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_note_attachment
  # Create or Update Batch NoteAttachment
  # Create or Update multiple NoteAttachment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param note_attachment 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_note_attachment
  # Update NoteAttachment
  # Updates a specific NoteAttachment.
  # @param vbasoftware_database Target database
  # @param attachment_key Attachment Key
  # @param note_attachment 
  # @param [Hash] opts the optional parameters
  # @return [NoteAttachmentVBAResponse]
  describe 'update_note_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
