require 'test_helper'

class Rails::Middleware::Generator::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Rails::Middleware::Generator
  end
end
