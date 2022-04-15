# frozen_string_literal: true

require 'test_helper'

class ActionSwaggerTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert ActionSwagger::VERSION
  end

  test 'it shows a swagger schema' do
    assert_equal Post.swagger_schema,
                 { id: { type: :integer }, title: { type: :string }, body: { type: :string },
                   author: { type: :string }, created_at: { type: :datetime }, updated_at: { type: :datetime } }
  end
end
